Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50066374E5B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785132034; cv=none; b=JYElMUPSVTt2F69EwL9WEauP1a8eQ/BneOm78P0V2hUsKT6o8CpnryqBRD5HsH4RXzcQbPBeZmQ9fq0QXxlbWyzEeb4SBFFI6owoJ8QKACPS6TeSN8oXHb+IGjvNCX9pqEEqjZRp2Y7b+MisFLMnLakx2lMFx3nBx22B+l4yLik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785132034; c=relaxed/simple;
	bh=vzgfGAdZ4cVIy7t/paaAWJY+pC7oFUKtuWl7ANbsTkc=;
	h=To:Subject:From:Message-Id:Date; b=BGL85Qcp043WivzgBhyXPVnBaiZoYBDzzbf14pwMeWyN2xnMADc5ZFX+PAmQRkl+rpdL/PDO8o0/NVbGdQTuvs6JzRicNNiEWOpWOO9ClfKtfwEwrevMv8en86uQELwazRabmfYIyPK1rNIQ68cXE3ug8oWi7ow6KVclPMTwuN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flWpfWdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flWpfWdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD213C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785132033;
	bh=vzgfGAdZ4cVIy7t/paaAWJY+pC7oFUKtuWl7ANbsTkc=;
	h=To:Subject:From:Date:From;
	b=flWpfWdnuQukc6Y5tx/DyLCsRxfaZJjLsGp2Erz35mnV2EwSLx3CeQnecLq6z48BN
	 ureNNJ/lDW721PmzUb2byZhP+Q/Or+7HsQyrwsh3vImkwTx5Ka4OYFmmFhQxDESkRe
	 1OqXzZ7IFMwdWY/YcvdzzC1eqiBqof5AFMFfXLs5NjOy2CTaNxQkQaPZy9/bAZYrhP
	 wIl26Iz3o5jZdwalSe1l1H/LJXchsqRxVTVv16IAFEyYyj0LOcF70J8YpkpV8X6dH2
	 +al23440BXagC1UQQlLhxMvJjV94cQz2mQHSP80P+Ad41sFJAJ+Jmp7xd3JmzErAHy
	 U+Fn5zJNFb5aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA99BC531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513203369.23762.14871858878476786432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c05242ccf63c1f13c643818bcdd3a328ab88c5b5d350a73284b1b91a7f59b7f
Date: Mon, 27 Jul 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785132033
