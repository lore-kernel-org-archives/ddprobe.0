Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9357851A759
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789065635; cv=none; b=gQ3701X3AgUq7MPqcawV6UHwThdpizPchHdygWFr8GUOrEvSKK5pLVWp6BuCCI9145Sei0eeYtIA95gIGjh1opKcRNP4mJc0PgcOmBGcamZZ1cGANvcIFsggSRUaXIUTizJCUyYn4ofYFkvvFlwSqDzbHmJ12LXd/fgkbTZIpxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789065635; c=relaxed/simple;
	bh=yK3QjLGWwL2A4tbYvuLnN6bxz6GLm/PbYerXCIbXavQ=;
	h=To:Subject:From:Message-Id:Date; b=mbf4U0UctgvDgyCsH1P+lFEmEqYh0sC/H95wY48t9suE4ookJ0epQvhKCMy/a7s9FzcdDzZucuz5WKE9YewWl8ooGK0eiIdSsdGyIE+TNv4yLkta4yOsfpqaRjKV9IhH6qtrZCg7lE8nXfD+wtwi32wOEillAHdsFVuhjPAc3nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNzvwkrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNzvwkrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2819C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789065633;
	bh=yK3QjLGWwL2A4tbYvuLnN6bxz6GLm/PbYerXCIbXavQ=;
	h=To:Subject:From:Date:From;
	b=VNzvwkrlIsLN1ukptQ5Nvs3wG8fyp3zETPD+AqoqZvmmxSHXuKHHOAQtM/lqM1vmW
	 lf2n7BdU+AXuW4SJo1VpPV2NMKyPBSBgv8a9Hz4uZYzZe3a40cq46PAbqcJ5iubbpM
	 Aj9eqaIiEZgDKeDBbe7Q3tIk6MpFTNSAEYz7ogEaUoyLoTNf7G6WLqQTMeP19/2Xr1
	 GODMbS3QPnU/NgW9te4nOhpAmFrVm0boyAfO8fiXM2LQ4B0Cqt992FyjRcWlfE2owO
	 RM+EPDvDmWtUe4doneNez2GgUlH6I8VGG4SNIeWLrBM7VMGqrF1KpKtfOYhuNRcRQ3
	 XoDsl57vIPkrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE127C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906563369.8188.8532952870347811261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffaace11c9888bf89496242cc92c583030cba84992d5533962db2a5c0dc43ab
Date: Thu, 10 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789065633
