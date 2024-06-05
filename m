Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C3015EFAC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717630043; cv=none; b=tsYLlo/cw9pqJTuoiyUoKnB3JnEsxpr/kGokwBZcC4eTaFufw5MZNs/xOsfXWMpA3VnYFyVTr/JT3H0BPBeZSXM2fNXkD0CsNYcyx4lZvwqiHPGWzncaT903UgdrzKI+l5FeX+kWBGvCrdpPfKX9fOuTicuzFHwUrNxKveQiQjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717630043; c=relaxed/simple;
	bh=u5VifoJmMWk7CVZ4kqx69gHnD2ozgO+2Mmy0AtWjmyg=;
	h=To:Subject:From:Message-Id:Date; b=Br7wa46Bas5TFvonFLBc4mBJTgr8QfWE/9TsjUY2FDB8aiv4Dxl8KyfmFlNRI7x+uOZEaH2oGvnJjk+Qht/bRY+eIH7X/US4vMTOlsf54aGwhg7eLnT6ggJArRysoVRmGr6SkWDI09oZV9wD9zPfTGkJ/+ZP5RLO0KHDzcHF+4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5tKQIRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5tKQIRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3D37C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717630043;
	bh=u5VifoJmMWk7CVZ4kqx69gHnD2ozgO+2Mmy0AtWjmyg=;
	h=To:Subject:From:Date:From;
	b=E5tKQIRqsNWM+0kTKIr0maki7lWbuWBVRVNWhqhAT7Awagt7uP1CFncqepa0mSE9+
	 ApsO3Up9KXAtROMRTX+P+fG0wrFN4SOh6VWnzdClJp2itbkaE0SOkk71xxZ0wIAtHk
	 f7/lWjdmcCTN8rOsSp7wTy9CGoszflGUGC6lH7ucWioAV+YcJGpd5v+lEguokXYnJq
	 s1n+AYHLcbigTVxyaalQOp+IAtXEHf8kUEnrn6LPfvb3ll/N5JwdgpIWxyEPCOeBzF
	 Tb82WNSizvNZ5ehCAHxawdq7WsC+MdKQcU7OGojin/A05vNJAvktffjPjq5PWX5lZJ
	 ZOVLk+SW8OYVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9710C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 23:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763004284.21795.5618087196790119741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468d84c50313c566be3a45d2476f292f9af41631792940324f270d3cb14769e2
Date: Wed, 05 Jun 2024 23:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717630042
