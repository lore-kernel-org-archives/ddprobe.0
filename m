Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4622313AD1C
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779586354; cv=none; b=t0YOXb1YOs+irsnR2COb6KcO3R6vGUCaU307zXbrVSygDGZL6HqmPtQqEylYqH2kxHXYK1TeQ8mk2W71p9vIBvrbe/tEvC07SDZGWzm1hDa41uHTH6YgRh3Zqqmx//bi5VjN2IeY5JycZMuoHKe+FMai/c2+NF3vWokBdwTn6SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779586354; c=relaxed/simple;
	bh=wUV1au5sR1uuKuqERwbedG4LRIsaJGeRSwYK61G+pck=;
	h=To:Subject:From:Message-Id:Date; b=JpXG1jz7994YgMv9+EsYwDauY+r7tmpWMlf84R1b/D0mBmr9eDfBroHvQuZhPoVNxIRa9BLLXRArkx5eZZ+JdBo45iYgmtH/zYbEHoHkek19m4mDoPKjxzkGLY1zkPE0HtZu83KJgHrEbAU+GpWg41GTYeCdJHogKoSyBf3sUPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqhg3Ve6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqhg3Ve6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC82C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779586353;
	bh=wUV1au5sR1uuKuqERwbedG4LRIsaJGeRSwYK61G+pck=;
	h=To:Subject:From:Date:From;
	b=fqhg3Ve6S74ivbFC03EKQlRvLVKB8dAvANzR7O8SZs1JhkiiafsEYgtscdcrKeYMe
	 CyAA+O+IAaOUDXC+bnTYVRcmhX/LSyHuuDM3SmCv2ZaDPdcgXx8TbeM7sxkoh7klo9
	 wCe3lvMYSXUyc64iLov+Rh3uQ/2WmxsaNWsGvr0IV/Z43HUjcZrJVpFIqjdIkANA9a
	 PAwVsrORfo27J3d/TRTvx8G/lZCBj2WyoV5hjTRmMyrWAEOvKWAV+HJcqeO6BiqJjP
	 4BC5+IJzxV27YqCOpZuJiX1TAWViFiC9NKPEzROIfZFyj3MvJq4vkHxLDFwAuSrYQG
	 R3CQ8C3rSTX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D3CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 01:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958635368.27724.6359285612972420471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd73dc71b7f8658139962677285280f52c0bf43a9c705f2fa3d54ca627727b5c
Date: Sun, 24 May 2026 01:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779586353
