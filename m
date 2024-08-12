Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4143398A
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723436155; cv=none; b=r0U29lvVZu4Fotb4K4o/HAs4OEJ1IHhMdTzX40yI0Pu55VjdWoTTcgIpGoaOFV38Yp3kjGtbqM+brF7tu+oj5hpGNQO8JJ1r+74Djvtks1xK92B09vFlfDsNpW14v4wo4yN2t0Pb+ewgHLDw6iFziMQG/9+GRF2mODnuQNaTFI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723436155; c=relaxed/simple;
	bh=kbMK8UjXMJ3j7V/ld1gpQq5gJHsNRjUySFnzF8+ga6s=;
	h=To:Subject:From:Message-Id:Date; b=XD3aZnNtYVjexxkexqRkBjKjx72tWTDfrNLjm/rQLd7QCp6VhZhfSIRK1xPP6ZFvHV23yeyDBNrjzz3/NN9DMX/fjd+QhbrQS6VTlwvLovZtzPZRhayKAAlnv5neIPyVzMsfqkHugRevaSjRSyps8bL1fkUhxRFf4sE8kdGQYto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCDWrdj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCDWrdj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44E6C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723436154;
	bh=kbMK8UjXMJ3j7V/ld1gpQq5gJHsNRjUySFnzF8+ga6s=;
	h=To:Subject:From:Date:From;
	b=gCDWrdj6JgPgcWokS/VDkQnJuug1FeOLSIDP8qftsy0KQD+8V5wC7C9hr0gQk4jBX
	 KFc9N2Fhs+u2FsJgnodEcb0BIsFB1q/at5LqEJtz5qFhZnTVqzSniM8cH+8Fsf2lLZ
	 69WojZMMfFQOHYKZOTnxa9TIEt3jaoS7veq6o8bmibNmOEFJL+yVajsMyCVGpsH+v3
	 yd0zP+HSEpaPQ8Y0Wd+2DYKt2v5mG9xy20B2WWhDEXC/6e/50Nji0vijyJAL1LeSuC
	 NRjitjr/0y9pm95wmOJpjJ20zUOS7+d/CTyhLXehXGd0230Du3P6vZK1dFeqBk/Mfv
	 L8K00d1RAVQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905AEC52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172343615358.22729.2535624665034278048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630b5a9b74a327298f85f1d80272a29f911e2b87e9cc46e3dc6476095d0e9632
Date: Mon, 12 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723436153
