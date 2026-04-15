Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294DA277C9E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776283054; cv=none; b=FriKcFb2lrVVhj/6/OsqmyaO1tkWSrsZjjNwQIpYXH+6C5aF9AwKRtCWe88KnxDPaVjxGEfjZGR5t/hRxke2qcbOus7VmVgaAq7MddwYsH7b0rO+vJ3Pd7lXHbhQcKr8GZzTMLpmeEv7cxmuLOk/M+ctB1DU/LPF+2W0OPaiSmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776283054; c=relaxed/simple;
	bh=83bweM0TmIV441bpeGjXMh3ZdDFa+ANw6h1EezDp7TQ=;
	h=To:Subject:From:Message-Id:Date; b=fwMEJFL2l/1Bg4a2uMzX0vjOBsSJLd5UXTWEeUnFh7j22qSfiyLq7xkkYum/Wxf/6Ap5IY5Y4dhaXYPM50ti8cdWZIrCrWeDNDYlyFBfhwg4ck6BJsBMTPvNpeoJogmaR2PqWC/Fcm3HwJDJT2MFWhrwH3Eu7JdnyYbTu0U8WLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEk/Nidk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEk/Nidk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBEAC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776283053;
	bh=83bweM0TmIV441bpeGjXMh3ZdDFa+ANw6h1EezDp7TQ=;
	h=To:Subject:From:Date:From;
	b=LEk/NidkW85viXJTFE3uO56cUJEh8E4j/frtz0AD3GyO5xMtsDPwNnD9/a02bIJ6+
	 P6Kz/5HeZsklGEsUSIzzqhfYm5zDH6Dg3cJKSr+c2Imr6NNAZ7z5CKG+Lu6rLiwqJK
	 Bf95/Is4NT0b27cNjxMtDZD051zhTZGzHeggp1N45Y7Fuh0HN0B1nL7ZuDjRle+WYd
	 7Lw0ogiib3srqkx400RnXYvlyLRP/0Sw6qTFlV0voFnchtGSuSb4lwc+clnzmt5WIH
	 3oJVVzUK0pBtgTeXOWdvhgfj+/r/hWxLxHzSl0wqcv3MYmG1PYfbKA05LwUCPOw6DA
	 0+ow+D8cNbp+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE69F428CD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628305369.16230.9064557505562645289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2c6b7528dcee80cb38d4674693a4ad6b9c7fdbe612901bf6a8fb9576412b34
Date: Wed, 15 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776283053
