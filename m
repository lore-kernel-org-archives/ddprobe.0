Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAA222154A
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747814393; cv=none; b=nPkI+vuNKT1225O4ajGSWz3uiiO3Rgh6BfUJb2C0O5kBiqQvBs85ZWzcqev/IpcmXm1K/0+fNIMU0/cSq+jiC53YsROIyX4rjn0o+F6fdtxLXWACpm7S7QpZLKzhsmNasRlhaBRsIGr65cJxwkFOtxF/0Wo+g7tzELiG9eZiLnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747814393; c=relaxed/simple;
	bh=C5GvusqMURTUJKeVINAnRpzW+RqZNPyvx8ROh7K4d98=;
	h=To:Subject:From:Message-Id:Date; b=UyKPnHuoBtLDXkt/elni4thA14o5eHNAL3snhPgeAo2M+4U/3HxfohO2hkHR5gbUh8PuhzFAy0GdeoYXQE2BwSRSdTAFJNi9zoGk7x2YaGlleIlXBc/7P2+ZN8lMyPDqs1abshE8A0IG84oIBbd2+VNPtkZAkJWduKgsstqgzEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO+l3sXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO+l3sXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB0CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747814393;
	bh=C5GvusqMURTUJKeVINAnRpzW+RqZNPyvx8ROh7K4d98=;
	h=To:Subject:From:Date:From;
	b=IO+l3sXB0DyimFIBzSsvjjnoIpLWRP4wEFXDUe06RAMfkKjT0L7LTM2qhZeAzPV4k
	 M2WwAx7ykcuY7/w/PN+TTBtK6RpMvZD/Woq3kaWh7E7Iej5ksuQNZvxvFgkWOEyLjb
	 TgCCUdQ9mtKDXVBeDh2T0+mE10xC3WD0JC0eeBwjLhUzUz2LZ7L/295I5vMqYT7eBz
	 ONPThWEtSBBlpgwqK8pf0DGO+lqCgdsH0FqVERxjDFMVCUWyay6DapOB1jzwbiaj88
	 /cVOGbE2flHzKwtDcgOIfG5abkl0eGqR1EWusO8AAPZm6mrPyRqeuMJi3g6OMJwm1V
	 3G6WKoUPDAacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C74AC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781439360.7468.3623600279482162692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3f9e929ba990e7ac1fbe6d2de86006a1c87fef37fa5d011f2ca8c7d1a67983
Date: Wed, 21 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747814393
