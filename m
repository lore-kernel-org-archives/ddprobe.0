Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1E83F164E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783676914; cv=none; b=aeg3BcqeyqHE687N6EzwVy5AP2jywu2hrxuxHL0dN5IUnwFlN2VvirXRAynfhRqsovFTbwx2vs9f1W0W4NLpJlt0FrBQFpaZwXZGszdrz2EjFbhP5xP1XI+WrjtPqITrOfNHeLYxdoOk7z41gem+vldUZHK5+UAnvepitnSffXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783676914; c=relaxed/simple;
	bh=1tnsMOaRu05wxyY8DnZ6hWJMheOW+MYxvyQwZ2XF5rk=;
	h=To:Subject:From:Message-Id:Date; b=Prxq7K4SBg1XK9IfEZPIHWOHL5yQDFs5UV9kTPi0t9JaS0Gyvy26eRcT9yG0A3zPAYi0RvwUD7fn8LVFc0qdzPhhIT8Gc/+RNsxBAw8CDq4rMWLnK2Qihm81jfUB+M6isy+yuJUg1xxnY72pCyly+TgjCtVXuVlUFa0Eq/WAkMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRnjbsdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRnjbsdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6A2C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783676913;
	bh=1tnsMOaRu05wxyY8DnZ6hWJMheOW+MYxvyQwZ2XF5rk=;
	h=To:Subject:From:Date:From;
	b=TRnjbsdV3hZjwAMK4k3vgCD53TM5bC4v+aXB/6+cdPBW9u0bF6XTtlYiLKrSNXZRi
	 SNA4Vh1fCgRoGVsVFFpe9rEqLwRgOVnRI6kIzNrY7oiCshstmlOBUjwxrWASYHcdt+
	 MoHfOREQHwQng8brV6Y86a9x9ZokqyFrmAPRSfeH2YkVirJ6bkjKdQa6dsIOfZWSRL
	 C6BpAEsS3jByerlvc+oEr0xXhimQZrJ8v79J13kyrtSYNCEgMRv+Aw5t6jR17nb8E6
	 ovIhHfjCrh63rZt05kwc7QLVyGrjZ3WC6o8wiIXsPmFRzmoNFOnc3eVgu7VwISStWR
	 N/ueiwka8KQGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A966CC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367691368.10120.11124755058779595904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9674ca99e249acaf91b58a84c7cf3b4d2738086ff11731d60b3684a110d5fd
Date: Fri, 10 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783676913
