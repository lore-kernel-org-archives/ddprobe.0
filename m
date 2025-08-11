Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465B32D879D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754898595; cv=none; b=r11/KuDRYTNoKuJWofKQdr66vl46bzdRPF7otgc9hOJp8dkij6R6THDT6BxWtnLd6Z/FwcN+1Dp3kdBcArLjYv/4H4R4KGgi/0Uh2offyTREtQ9WH3SfZyVtSoW1YQNV2idHaY6LcErmnjcZa8vM68QtRHp/xpqVYvXS0jxNGAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754898595; c=relaxed/simple;
	bh=z7IKA2fGC5fe2oqaPYHTXWFXw9Doi0/Gyg9PK1gyOVU=;
	h=To:Subject:From:Message-Id:Date; b=G+E/gmP5iEqziUwcFgQ661nL0neHIihWhMS4s1YA7VVep+1qTZAatX+BEfD18mWxBYZbBFs8CoGhciCsZDeTqk85P4yijUtq6m0VsXQ5Skdp8Tf7fmPg/epKJlMitQxE8H58mLtvZj0FXxz8eqkIN0G+OGu/MJhmPBz9Mrka3Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hit3ptRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hit3ptRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E551C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754898593;
	bh=z7IKA2fGC5fe2oqaPYHTXWFXw9Doi0/Gyg9PK1gyOVU=;
	h=To:Subject:From:Date:From;
	b=hit3ptRMeVSedBVgngHQRUkyxHT1PvXQ8+0UdU47s1KxqvEjselhwR6drmewt4zlr
	 fxVM0snPs7V2Vd2xC8Z7Tfm3siQbCUnUbxKyaHGkmuURqtbkZsw0xHAjHlyIcfWDz1
	 VXhO+7XBztZ0wHblIYxDK3iALYWA0sPubhVK7TvFGTkd6dZrcTvTkb1a5mVAhVrRNa
	 oa4TcjfNl7AXmWK+ZeXNL5zD0cNmtIwEoi1FtQSAMQ+H1HKH/BAC+enLmndy+duKAj
	 TXj/1PW9jh9dljLVrl2ZfJM7NqoZCtWraEHM/jaxeM4mYMDFbMRNV4/82PGw32qB3Q
	 2zcUf3LLdhx8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90008CA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489859358.951.13541971216139557655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7fe6aa28b62e1423fb6a715dbea220843ff0c294ca6fea0f27fa007281f975
Date: Mon, 11 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754898593
