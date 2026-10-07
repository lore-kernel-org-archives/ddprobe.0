Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEDA2C026C
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791405634; cv=none; b=Zn1K4ocYa/U2rJoQgQq/EMy2LHVXWcZHyERn9tmlJGQTESS79U3G0J1I1DT08zt3hY0f9hc6oljMXp47mn6LuBKWIALhaRB1o/Sx2Qj55JfKjbzrzjYaBYPQY+jVoLhMeEUvCb1bA6xAZBsf6aGgWP3EfliDvQsMF8bakTiaUQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791405634; c=relaxed/simple;
	bh=1wvjODiKfhyMgS0uJ11uy7uzAjNDLyKEjfqpMX4/jA8=;
	h=To:Subject:From:Message-Id:Date; b=GBJvuXJxz9MogG4A44eSpJy/RN43RW0R8c3IJ8D3RPaQV/x1LskeSTTm/VwOreNTDydppzLputMLLTadTqVflb4t85/G0h/eum9ggzIG6NlQLSmjBaxWiW7/wi7k1aZllGmkQcXlG8Pt0V7Ydq+uHYeB7qgpSWHxjfWEUQcZi/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKMPNypn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKMPNypn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57C0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791405633;
	bh=1wvjODiKfhyMgS0uJ11uy7uzAjNDLyKEjfqpMX4/jA8=;
	h=To:Subject:From:Date:From;
	b=jKMPNypnSFfLVCDV+JlONEKUYCgxI2DTLW/gulwQqeesYmrKy+HwsjxpuenvprrnX
	 hffcNDPpFoFknV88yfR6beDKrBoBvlHXRB+fwMjwf1W4XPz5XsmatLjFXe91vqa0D8
	 Os4roOIfdFC5XDDwFK0MVGtit46dQUjvneQ+O30+Gqoe02iL6RX8QyUSk1CDNQwdeB
	 e8hxRLt9/qTNbsopdCF+BUAyectm9v9zLxN0BYseMS57s8wAxzFbnA7nijM60ViTgt
	 zFoIViMW+Qz1/EweGOQSq/8dz8TmTbTx0qBGz6lv2dHqkpZMntFL90IXuBmRR5xAEl
	 W8QSNj4snfvRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0200CA6004
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140563370.17671.15696742408634108336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb2f51b454ae89af15da56ab034bc9d1ce9b05f3a60cf36d7789cc9f3cfd875
Date: Wed, 07 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791405633
