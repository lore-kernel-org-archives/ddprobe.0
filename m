Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF683FE375
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792393234; cv=none; b=JrbULudBwpAqrkMMPPQZYtapICHnSizNfa93/osYcCgG2pDJW7gEZtCPpRR7Nv2KDqwTCmeJmolMikWKJVi93HJzyhd/hdIF6oDqfeeMlr/Le2qUAWzCHcCWp5XDWjVTYk/HsvNrWWUupEnfU3//Ssc9kGaBhY2wVTNcq3gWryc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792393234; c=relaxed/simple;
	bh=VfIYuP4+YVLcj5RfESmvga6ATA4uN0tyMI0dAR+WWCY=;
	h=To:Subject:From:Message-Id:Date; b=HqHBgWQBUADJ2vtF1Az+X7eBgFhRG60oAtNGn08CQs6wA3XHChlaDNoQL+OVSna1M3+yAlvkvqCn446CrDufrr7yFdm/O0NO19EpK1lUkZg2J8eFbvjjZvGJ84tSo+JJ9m2NPoMbILiw/8BEcMwaYHrfazkfsWGFlT30u+XVdk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iua0gA2g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iua0gA2g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4128C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792393233;
	bh=VfIYuP4+YVLcj5RfESmvga6ATA4uN0tyMI0dAR+WWCY=;
	h=To:Subject:From:Date:From;
	b=iua0gA2gHRlEMj/ah/elmmltWvi6eeabhdF9RWy0OArDw+/tDQ7oU3oANte4efgcS
	 Jfd/qWy4S/nGTw9sQAzIm9Lx5P704slR68MgljYc66YihebObEzDK4qicTaGLc0kj1
	 R6yAMb5XWIgY9z4MuGB0oC36g98LxhfQ1jc7x66L1Z31R7o2ZwsLYwsdFxXF2657bV
	 3d/JSmMvgv7MxFUwzTWTEUp/zHpkhkfoMim4sb0hiqtfE7QtZhD/Lupt/YYYZLFd8q
	 bA3dQqpVXR/aXJAx2bCltrOAmAOUttY4i+HSaJdwdyMMvo1/cSYets+hhPs88Gv92c
	 dBkM68yRBEsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8821CCF2DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179239323374.14972.694461863709051977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14253333908d30602d2be3fc118fdf2848777c44b5123cf7a91ac73b5e94d265
Date: Mon, 19 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792393233
