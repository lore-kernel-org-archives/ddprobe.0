Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B0C4E1412
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788627034; cv=none; b=GdE3mgvb295b02Q66F2ay0RSsms+iiG4CPka+tDZKA31AKpdOqleION5j8pRx2mK439lbyD+OAAasRnku6/5B0GU+tkE5YVNOJozZlZ0bsjYQvxbF42SpTAxSGdN8DNKtAdOp/CTWQUriDo0mOjiJM1LZhg0Sgj4x7GKsAtxByc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788627034; c=relaxed/simple;
	bh=GapZueQR1925XkmYk56QBk8cw+IOij0rLcY2oGD35do=;
	h=To:Subject:From:Message-Id:Date; b=gTSArYr7MP+udIDNRpI8bZPKJ0jm2hdmA4dGhbw3L3CB/qci0Z/Iu1OD2r+B68mLazrL7GnY/Y4SAVZS68X6WMLVtbyDt50AE4LiEBA4BH+trJGzB6osezkxn+++TD1u9onbXfsPZtc0CgyJhCgCvmP5jAArkgPDQBDXlCT3+nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezNACn+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezNACn+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D24C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788627033;
	bh=GapZueQR1925XkmYk56QBk8cw+IOij0rLcY2oGD35do=;
	h=To:Subject:From:Date:From;
	b=ezNACn+V0AwjhwIynJwjp4Yb0XnmLWfG29jAUWqrKoZYu2NdU4su/jBfjsHgO1qae
	 NXD90E60XPfGsneSG5OTbmg7giYFeNTmNkT2aXL4ko0mF/dvlEgFiTSBDFKOgtoknV
	 6wsI76c1pqOPohtJlIdrPlQEfU3tBCP1WmaoK5z0/ySM1N9SnqgJb3SuH806jEYEW6
	 fOGMIC3CybV6WLacDUJKp37dSmu4UNSZwLKTTi2FYXcJjdesEdUO1sunfSopVOxnaT
	 V98QToeommFJ7xuGbTPSVdtvNWl5H7JDqcI5/fG2B0yoMdj5zgm9gG0y1Kr5i2nFqn
	 EBKnPHLl0E48A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06C2C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862703368.31162.7717158536245366260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d40ad9f0e404f413690360addcaee87126a3abc0cc50501e9e56296a5dbb4b1
Date: Sat, 05 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788627033
