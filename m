Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C67D1A6823
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780984474; cv=none; b=fu2Y+91PBztnT+bc7bOz3HAcqcdMESzfvLWchfcYK/TztN8DBVz40SC08yDVAuNTgXf5F05kotN5BoFM/IfoWom8Wit2+VQetg1iRmn5kkNFT6CNs8vbEfyIVAFn4ePsuAru24gLyWOp5Q+HdVKPDWfhWhXG79Pe/b/65hf6H0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780984474; c=relaxed/simple;
	bh=VVHI4zFliWqPIK0UPROqlia1GNtRWkPmkTZSdmf9miU=;
	h=To:Subject:From:Message-Id:Date; b=aEBWMkv1Obd0yg2uZ0jppLEz44LbwDWDmEFkbuie/U6VqinJX25410BJmnkqFaBX0rcbLQMxf6qSEB1s8g/eDiadOXIwkXHXLp9MkP8Fhj3DeQp1wiS+n+/XmtMuQUIdyjZEFvzqpXctk4DieYc3RinswiowL3Bzpds+NBoJNyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J889RNv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J889RNv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C550EC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780984473;
	bh=VVHI4zFliWqPIK0UPROqlia1GNtRWkPmkTZSdmf9miU=;
	h=To:Subject:From:Date:From;
	b=J889RNv+ogNrcyS0E8kOld7U8fufFrIeDVP/UFAN6zVCzsx8y06BDOxrFpp20d3Sy
	 oUEvDt5cBRKtS1Gyyjv3gODxSywVdIv0BVlQaiFv0Z1FU3R18Zdlxu5wDqgOiJV0WD
	 8Yf5klOL5UY1BDPLqTX4tXjdtULTpC87zIQdwlgMrmhFHm1D90jZGvd1hVV9N/k376
	 3NMWxbKWI9q28CxcMf/s/FWtFPcJC3z92UkbFyT3rnmi7h8HgA0/ZnSBSjvvqWT5ck
	 H/ansOHg1UjCo1q4aNwQGc+h3pAn9AwQ//YmhE7mEv6MCzWsUgTdY/gpuCbNfzm6pk
	 Snlj9Zc6tVzSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAC2CD8C85
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098447369.19332.9200837524964217852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d906d236e8dbae27f854c78d484ba5f8b6df95f462e991e2ed4ae485433ee9b
Date: Tue, 09 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780984473
