Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B6335946
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752347994; cv=none; b=BPrncdv2Ej3gIvoltL4mOxjXTnziPr5WnuQYZHbt5xWrWSMgc6Z+R/T/D7a+c6gfjJ9NAQ/E2g07tilmoCIB/MWOGfTzq71bKPCLDmVfX+s7w1QjvjFYjaLeUH4wKUaPqV4GGiSnuGY3S+oZREwDe+w25qliAtrasshsySxy7hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752347994; c=relaxed/simple;
	bh=kQVheLRso71u4yfLIJEwft8V4G3GRJLlxiHS3GR/C6I=;
	h=To:Subject:From:Message-Id:Date; b=bKC6VqVr4Dr8gKVhc2+n0Zg2iC0Wx8EQr3p1p8Q/TuL4e6pi/bky/eWZ3kYb+pQxyaq1oj2M0CYjQZOntH34vEnMuN3AugU0AhpmqtfgMRt3iKgvt2gwWoe5OBdwxdbYIbRmKTQiTKE4GzsD4shxcTv4IKu9nfXbtreVz9rlgvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCKA8fB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCKA8fB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752347993;
	bh=kQVheLRso71u4yfLIJEwft8V4G3GRJLlxiHS3GR/C6I=;
	h=To:Subject:From:Date:From;
	b=oCKA8fB2AhqK/8I0pL+nME3CVkS7YXGloutZZdXcdjCAvIFLx6eSIn3QgL1hXkUDc
	 VLj2zAJ+WywtZUQRoC/GuuHR6jaTy2EjyAdo6zkYvAtNint8NAfsN6FPOEfKqit7gu
	 LTlBcIdFzXwaUfR1qygdBa+Ow7i4ZnyfjSEgEb3vn7n6mmhEztc4PDGTmRvLKXWN2u
	 ccnntrPuFr0MYo5nw4iRAiQsGlBhhCbs7cNyjRtiZYWPuNe23B86Bpsc9iqlFvsejx
	 6u43biqpBNgR9KFiuATDpZSpcli8rf1r32/90tfh9c16QwE8WG5Yz/R4BaWyPMgTB4
	 DuYM1sqtqqIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7ABC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234799357.2199.13122272215645328708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74520a2d8e45fb4d77a3a2895b4a769d87616c0b24cc0e7b5109019e288a7a63
Date: Sat, 12 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752347993
