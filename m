Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2962C13AD1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750043994; cv=none; b=LEQ94zLcJ/L4nXAB6TUg05sw91H6rjXODRvOIxK4wN4FknIYi+BJ3shXPtHhv/Qqbeor/8RY6mud9LdoiUv6OKImU73NEooaU6bZNUcYo5Y/btouBYqKza30DrcPn8pEhtZlq10Pq+Hdrl56SbaMGxQqeHNetMFH+xrnw1LJLHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750043994; c=relaxed/simple;
	bh=3vtD2Kqtk+yxPGnj9HE5HcNAFZisqlpbwMVrwRMT/x8=;
	h=To:Subject:From:Message-Id:Date; b=oqznEXrl3r7ha9ZALzjE8V3FWZzOgQR0wNKgZ5KaUm7ogiNqJzqGJ9NPjGQZNCsRiFb2CgQpwplv90pcyLIAtKGARkYRbXcs43LkYS9gm7DrG+PdRwUJ62jpaGH7fl5fJsb5Ceft5HE+a18EvbcED3S6A7Z2RqvHv3DH6bqdALc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEV6Ag60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEV6Ag60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F9EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750043993;
	bh=3vtD2Kqtk+yxPGnj9HE5HcNAFZisqlpbwMVrwRMT/x8=;
	h=To:Subject:From:Date:From;
	b=IEV6Ag60que9A/GRCY9X248p9Z+QCv0GhVJGnazdB9Q3+StZtBoBKji656CbLIQPj
	 /gcqbV8nj1DyoMYsEEWF40IF/FRsuHPUGNJagusbWeI43rJ268pD+MpTz5YZPdt8/6
	 f3hPfmf0IRUdSxPiSDImJCab1YXy5Kkl+b9bZyN2cqhmx6qwGQQJkG+RpHtv73lbxJ
	 cIdW1IRa+GlT5IoyTxBgpEUCRtk+nCqCPv2XLPIfidS5Te3PXfl9bLJ5R7dLSPK7pA
	 e/ZpGTcZEA6J2WFpnU27tdfHRO8jX/tOm4P1XaocTy/fP4QRKqixirMF/1/6f4Nbp0
	 v1gRdduXPN2Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105AC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004399358.17445.12115600465566548423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b39a1837bae83760b973e37d16286727eb73d4aa8a726036cca511162c30949
Date: Mon, 16 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750043993
