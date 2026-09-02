Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282A31A6803
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788326434; cv=none; b=NfFcytqtBHptlm6nAcolTM3RxnhZBjcF1QZ+uI6bXZJSXkomXUpqnaNVr/Kn8wO7jjkkxfhK+Qu8vOoZgvxBR0B3AcpylnghBX1tLU34aGHLnm1gRhKi6fLa3BxnmUcLe6vH/tv/u9MhRrrSM0LWBkYFDalSKdumlXBWEkduZ50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788326434; c=relaxed/simple;
	bh=82pCe4gGkuS81wJf2MnSuTSrlwDkwGeMHFRs7JK3wdQ=;
	h=To:Subject:From:Message-Id:Date; b=mxfGUf9cFqqx3dKdMoFnjk0Nv8XxugULXpEioZyfq7ToRRSDRSgRLzMb/YB5eu6Retl3guGtAKO21ot28IKTZ9GvQGdmYyhcKFKB96kpnCOQabBAfcytLojH5yGMUUvpPcdhOX9GgqnssD72/lULoHZqTlGBQM73lCwdTYT2od0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMmR2FyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMmR2FyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9EAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788326433;
	bh=82pCe4gGkuS81wJf2MnSuTSrlwDkwGeMHFRs7JK3wdQ=;
	h=To:Subject:From:Date:From;
	b=MMmR2FyKna0aee1bLdOdq/+qWkTeZ0KHPKcFJ7ktYttzoAxDNcplAgT/wYk0JyIoZ
	 vK+kzEFAWGvYSqS08QVsCe7q/8RXeeM8XNjdE6jYEJ77EDMR9PZnhE6WzzsIZBNgen
	 T/2dkoHjVXwGPaJ79UNOK//iI6srZ/j8lRSe14EWfK9/Er5wmwP4muDfHZI0WVIbrv
	 bbOlil4+tIVnIThyu2ZhrONEqlpB+57JnV8wKpINRYNbADkdzOwcZG3DAjNXeG2iQX
	 /bAyx1ID4LqD/PUwu7Z0U+wl7iBwIXSTxbpH+3EdSIfL7sYO3Lryj2u9+vdap4n2Vr
	 /drLDZzPn+RRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA821C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832643368.24261.15609004246230985617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009608f2c992e57d83f45b48c5ccc6e92f095192c30448df4e758bfddaeb2b7a
Date: Wed, 02 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788326433
