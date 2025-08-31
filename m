Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280D8259C9C
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756663794; cv=none; b=irJRr4ZW+MtjnXefYrsAcRtfHwoaYoRTLrzHrSTtujnJ3ozY7ZHAYy1YJGAypdoHEkvS+9LQFD2hpG21f1g+rpJrJYxWTnFADznAoK8TucFhFc0wQKZUKE+AkWTVLSjt6XDel/EYRcQpmc4OXChfYIFi2KtT2dwieiDpVGgkTfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756663794; c=relaxed/simple;
	bh=JLMF84bo5OWuWof/tnt+w9O8RCM62h3mdPEII+gWf0s=;
	h=To:Subject:From:Message-Id:Date; b=s14LJomhe2Du9YKiX7/DYwwc8eWsYGrhVeCSFUuPsIfIEGOmOgRaKGrichpq2t8H5sqbUK47P5gJmz0ntgnemUrqfgyW4cKi96qLALO2ccSpHMWclx1YrufgYLGhdbHNPiMQVYkmBRlVwzmd421MpkRQKRhOQoNNcub2gEb6n1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLVoFXGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLVoFXGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E61C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756663793;
	bh=JLMF84bo5OWuWof/tnt+w9O8RCM62h3mdPEII+gWf0s=;
	h=To:Subject:From:Date:From;
	b=DLVoFXGXyC/BD/iVCsaBQXdA8bLHu88vgmUrtb1PDZKhcJmerPWpdSocMqz0iuL+h
	 tEm8fIIUlfTkEbT1tvdzReCpcd8yRz5KiSPhp1gEjnNsDYSHGIW+zM4BdQh/XwWWZD
	 oPvmIsHsn6fH/ftA8OmMy+RLCVPkA0x2DVHpUvx4bKJoav7n2PNcCBXkBe0zc9R7Ml
	 1X6D6n/CEmkyCfgXjbW55edr6eb3J179Ndett73Gra0ibuZX7qtss8jQ1YAhufbxpD
	 IjI3xLLXj8FJpo71lEEYJ5ZjEk+U0ZpaASzvo8ZrbKTv3keAfmDwy8R9s314gxckEM
	 KHzbqE2jC3egQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C34CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666379357.9036.7626452088342727191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6675f49016f3c819bc896d0249bf65ebfe655a30a5e87b3dd30339535133fe
Date: Sun, 31 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756663793
