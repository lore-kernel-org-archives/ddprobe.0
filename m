Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CBA39FD8
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722120955; cv=none; b=erOtVkZVzSmg1jsC2TPTq20St1ipgNlNheDk6glCHjL5sGe/KBes+k/0uZUJ4tX5ER4R1HdYmzR4Va3VmKlQpckXgOzeJw8dc+yvMR7Ssg8hg2vxHJMpkPW3EHrT0i09yJ2bgmSM4gVs9D+zAbWmqRTWaykjz3NDPEcCk+W0U8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722120955; c=relaxed/simple;
	bh=Bae77raddJwVyym+WGsg1s4k2QIvp0pyejAiMCxbyqw=;
	h=To:Subject:From:Message-Id:Date; b=OLOx0+6CsW3EzbTtfGuKznuuHk7z2Vw9xJunkFLBPvcbnYuOkcCdF7uir81H0XZCjd5qNpWlZSNM0K8jmmMuaIN9hzsriforgdiAdkaqE5tYsMN0wf7Krb1d0wUj6+tnbrApxhIH/ubU5tPxfFPiPDSzokiSBJpKpJCCZpFx25E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNHCN5Ys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNHCN5Ys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2304C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722120954;
	bh=Bae77raddJwVyym+WGsg1s4k2QIvp0pyejAiMCxbyqw=;
	h=To:Subject:From:Date:From;
	b=GNHCN5Yss27N3+D7j9lmuuYQNwp9ThsZ9QCY83BWTB9OVPHTw1IMdKmMspHmRJblU
	 C1ARY7rDLJggPF2rKBSV8jdRJRRf5iZR+dzt1dT+Tb8EusTjiywKYKkoq7RrN7z9Xa
	 sWIQyG+VwagpExJE8tFlcfQvS1NoDJlGNYh59IoZDjWDP+QIQi3a2VQAkulCUTSuS3
	 1rKZrdtyE3jBoRvbT1LisrFEErfOc9bFPSD/xyGeJdjrocqoT5TTGI2UC7ndXEbima
	 on75Ru6gXQk4tNBSJya4gFx+hsZ6i+hlWZlETxogz+ZiKFc9ygogfmtDoL3WM5WMW5
	 4oO+/gfQ1yUDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAB4C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212095361.19914.13045735839516072475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1ec497693d5dae5cc86e7628a70ae3727c8264a7754b15701858989b3a7d8b
Date: Sat, 27 Jul 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722120953
