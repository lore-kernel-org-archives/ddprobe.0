Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D8D4A35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738268754; cv=none; b=dpjxflzGSaiyIxfC9rL1UG9MaubS4KDs8fM1/7QzRth+BNt4qSHiIxtYmrEN5TK7P+VjcLiDMA9a1Rh8FfF2FsYLSxHdkelKJjL1/dDs2XjDq3QntwintwtcPrMuWxULHu8AWoXDxoWZHQ53B7ERHNJFGKQLY/jhXTVpRHG7Nvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738268754; c=relaxed/simple;
	bh=dA8vNFG0p2a8yd/6IoBl8HKZduvqpSPGDcUloCfPalk=;
	h=To:Subject:From:Message-Id:Date; b=g4wMOpPY7Xtgww8zvNQanzKSgu1GzX19gEsbUbqnxthgubaICsit1vbSS2KxWs2MbIpIj51NlSceAPi59ykNBZeDX2/nJIwIqCb99P8+jESIzG52wL7rnGc8NnD2WlOIcOMfw1J9OyDMxUohHXDAbNCnLXSaxl69IJ3p9d3J6zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfz6Pp9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfz6Pp9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB026C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738268753;
	bh=dA8vNFG0p2a8yd/6IoBl8HKZduvqpSPGDcUloCfPalk=;
	h=To:Subject:From:Date:From;
	b=bfz6Pp9ElnvUTB8N/V01b4qbNiEiixpcyDcSLYg0IkvAnr8QbFed/7hzQChV34hFd
	 r63mP3KFtQXSHjptsvs+kcw0MGJOI3GtPF/IGjqNaiK2xtlC6M2xPdW69KKA3RkA/s
	 jk/L9ej+dZqMhJmyeQR8cUM7/4+b3gCPBJ0N16G6+gNMyUe9IiY7X8Q/FUdjI2tcHZ
	 Hyb2DoNHxmtQVsxzymFGZTgYD1lpGID/m3UQ4wU/tOUudu0aV86P6mYU9+vc5HFHcn
	 7UwleOqaUxoeg+BKmLx21rujx0zCIeP4mGCqePpLyg2p7iS/dAJtNUlS/buuiBU2BG
	 QjtYoaYo32m9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DCBC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173826875364.19421.191945351427794069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e6d79ae3d7549e7f5cbcbacde0e46087faff77fe5bc899aaf6bc4688a30f27
Date: Thu, 30 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738268753
