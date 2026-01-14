Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1980837F8AF
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768394034; cv=none; b=soUSdK6UVz6aNLu2EgM5r6N072cMay7lkw+DB9772sGL4ekBLnDCW7vaAPD8CCNE0YO3PCLHCVs5PzwXT9RvAjj0Y4uJVqwtW2jTAkFEGgMcfFYhxhapRTHwFFN7RBcXI7Czun25nb7FZsEDNzdq48yrzwhv6tP7PFzsh9paTOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768394034; c=relaxed/simple;
	bh=Lm26gBECgNVOxhtW7NDq5jNHYEUMFat6SQqNsQhnHJo=;
	h=To:Subject:From:Message-Id:Date; b=fym1fBjo0qYeyyxwtNJuzhSctmcXqZXt+Di2X0S4RMC4Uh71mpCrkvNX3PrBNr0Tmt6uQzM0WKlJ2UP2R2zsNEJpx4wvs3dzbM8yL9hEaN7qGetRSOvWG0U0MoY9mv0/iojs5quynYcWpOH+rKs+x71jcu/64xXt1fEvmqXObAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuE84+tC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuE84+tC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33ACC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768394033;
	bh=Lm26gBECgNVOxhtW7NDq5jNHYEUMFat6SQqNsQhnHJo=;
	h=To:Subject:From:Date:From;
	b=NuE84+tCNngnnDgWsIK5hwwd8suLUyzR4wfbjrw3B1vkHPuuLox5RJ9wV51XmRw8L
	 /m0pQnm63v43SoEk7r7z3fN4FomYpho//k5JqmnxIojQ40HrzogdDHgDudzHP+MDWQ
	 Z8LsjiFNuRp3hRGOIoTjSjeBojIPyeGhkICt0XtqoPmUhqzRJrirS5TrLKEHAH5c0d
	 JhOfkyShyQ1S5GqUrPXgzV2fsxTOi/SUFNWXCT4Ziavfk3uWvyokUNeDW28Z1QK5gz
	 myvle/vnYSzQqq09w/bkhK8MMFCvnalvhAsDaIHmUk3lSljNS731YB8drxz7esow40
	 zaVZPX8icVMgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB0D29FF9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839403358.12305.2982083664073014759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994d33528135e27ae8501d876ba0f5b99855a769b1368eccfce2dc1590c1723d
Date: Wed, 14 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768394033
