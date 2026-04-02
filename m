Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118203346A8
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775140534; cv=none; b=lbGB/UeAqw4HCaxD8mT4mI1pJJa5Dhgzrstphti+i5Oya2S/Gq5wnugR+7Nt2JZGHupMYMG5UdA2pmheZX7txk3W38KmqTux2flMNEA5WaPog9steU1K9tLs4vxkBb4dkSidHstl30boNOAnmpSgArIOwJkIcJ1TItLxtSHWsIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775140534; c=relaxed/simple;
	bh=vyroVvErBCR9FM7V5mi1qUUEXSa0996hG+twTbVo/9I=;
	h=To:Subject:From:Message-Id:Date; b=nHwHqj5/r18rkkzdcJTECv/S3C5f0xH+4xFIFN+2BSjZ+z7rTl7EcQ0fphBwbu5buELBSuO8ReIm/4wAIuSfnOqbUhfThepC6uIEM5j/BJqFq91OL0zfFZR8otVaqdOIsRo8LSXfGhy+XEZwGLK7YY4aeUmy0E0dwewvAz7vgl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THRxfX0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THRxfX0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD80C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775140533;
	bh=vyroVvErBCR9FM7V5mi1qUUEXSa0996hG+twTbVo/9I=;
	h=To:Subject:From:Date:From;
	b=THRxfX0l4gf1hxLYUJB/5srMj2zvfHHdIdTLGeJD+OsoPtP3bizShj+qGDhLM1HtE
	 nnsC5SsuamW/yZKGzFG7WmXA5IIzASSxCiwUboaM/O8QVZwO6gAwtP0W6TxVuzmmq4
	 /40EQAegMK4dPhLCckIHCwRfMzrc6GMvBD5Lj8KhjsVRgdAIAJEgObLQCu1RFC9rYM
	 uMabYHyRluU3H4dEZz5Y72/hKWE8wzdiA0KFnTavTEGWXKIL4/7j9FeXFznsRSWZ+b
	 AtOY9+DvSFbFzxTQjSwxMuCgPSUlNqNO9p6/BTcw78XIF9V4Cf2QZvzbo/b5I8XVV/
	 VPTODSAhzv5Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC168D3942E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514053369.1886.4470931675771481678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a63deeb2abc513c56fbb6879685f5f49148254b02ba2c298cc52636e5a73bbb
Date: Thu, 02 Apr 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775140533
