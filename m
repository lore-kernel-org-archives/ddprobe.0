Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B5F51DA23
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 06:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733637954; cv=none; b=YOIlBPxteXJOK6bzGgKXPg/N6klUXYrBmwfLDQ4ZxjeBBX8QlAgqYvpDmnx5a+CDtKqGa6fIP/JqHP5YneFQXB+7+TenclspPuXAyOxjBbmkjTERCiDpokac0K14iHM/z8QVRN76NDAuobOllGJTHK71uQkpMjdOUhGGy5ux6oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733637954; c=relaxed/simple;
	bh=f+rwhDPE7Mh11Alo6n5Y57pZgo+X4DXFrWtSAt5iIUA=;
	h=To:Subject:From:Message-Id:Date; b=X0xP+a25eLgIx77Ui5UlKgCl7sGwv2wgDWJS5pdb4tl/n6ZV8w3RToL1GX3SOwhIFotcTrEa/6AL7Xh2Ge8zgnMShFVnlU6jaRqRwoZT3KRAQuJIilFK5HmKZ16Zq+OrtyLy2z61yTVhS+U4ru0H3CYxWLyVXKqpTyiqBNYDiU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PamJ85ed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PamJ85ed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C8CC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733637953;
	bh=f+rwhDPE7Mh11Alo6n5Y57pZgo+X4DXFrWtSAt5iIUA=;
	h=To:Subject:From:Date:From;
	b=PamJ85edrrrOpCAGZblxXnIS11jmaONVrpL8ZI/y+GynhruxiZgVhoCBXDf11c8eQ
	 XRxs/FUveGeRpujHoQVm3YsC5B8+iEx0q2oeTFKRMSMW2CrMBRiV6KII0Rr9foD3Y1
	 /XNcKrXO48WPp5qHP7vu9cU/zAZ9ygt4sLe/7qd+rsCeOhY74xyH6iOsLwlt1UpfUz
	 cr6NF1ZAVkIzlzkV10aKkZPIrslpDI2tHc3WvQJHw20jG3X/juMMCZkv+FkZAfRR/U
	 EkhRrLbBdeqTYApKz6lCxfgRw3shRBl1Az6D/7z2pZNjQYQljdz8X0Ee2GdRF/AY51
	 RaC4XsY9HQpNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD99EE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173363795368.29966.17440878797584460053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b93d8e27fe1feed71dccf556cf49bcca4813014149e695d01f72b3428c13080
Date: Sun, 08 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733637953
