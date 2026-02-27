Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9013242BD
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772210094; cv=none; b=ezD6yI73cWmy1JWfcxfIblGaf1X9w0g5tsEaOvurCbaIytG4yR/Qs7U0005E5u+Gim/D7cgXcRd2UVFqvLJJl+hOOGs8dVITEMMpGYVIhhMc9tISdUymovTYedgj7AlWO78efjA16DAw9g5yaXj54WwRS+Fv6ShY91eBLzgNBZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772210094; c=relaxed/simple;
	bh=ohLlixNkJXkV4mAZ5acoQvmg1NaGFfAmYLqv/n+Sx0Q=;
	h=To:Subject:From:Message-Id:Date; b=OjIwNFBSLlRzpnT5PDS52+i0RGCLoEoxw2uDtjOlLB9kGw2pCPr7immu4GaTlZOTTpBdOwYDqSmrX2zt5yJ6kEOKqsgXRHTPDYwkhwEZaLsc+Fl6MORGhPu6cbPo+5vgjm+7iayhkT/ivxz4zNqDmh0Gff2wDnImlyl0FTdhZGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8Lc46b0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8Lc46b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DDAC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772210093;
	bh=ohLlixNkJXkV4mAZ5acoQvmg1NaGFfAmYLqv/n+Sx0Q=;
	h=To:Subject:From:Date:From;
	b=a8Lc46b0N/+RUFmPcVIm3TJJo7d7X4VbCJ/alGjmVv5NWCwsTiQI978q9r35dINBV
	 eVYzomB2/Dde2hGgBhuIf8cTqN6E+ui0fGYkRGCmZo+j+1VzY9FkwgZCFhoQ8u10O9
	 iArUZprDvv3ubU0h5CU6nDplssANyEdGFyKR9Uw9wovSf+3HPPa2bxRXjreIhwscIu
	 FV61GweipoSzMzA8C9Eh3xHbXlggaXfX6MnDyXxzc6FumOjcxvahyU2Y3uXdb4UdIa
	 fxHdp8IHURt1AhzRQ8bzRzDYEWvgZakjrblnW7URiPuW6yR3aqVUCCHz2qHzzgHiFm
	 lGH3SSH6e1t4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C15FEFB6A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221009358.30382.348101338929648246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e9c94eb03a0716d4f75ca02c2d45dd6d0d6c29560961bd0a1c4d92536319e3
Date: Fri, 27 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772210093
