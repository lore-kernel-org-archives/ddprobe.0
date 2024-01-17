Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182C6249F3
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705522097; cv=none; b=EapexRdUC+cOhQ++Xth36sstMMFpRDdV9U/o2vebCN5DXH954/is3T6K+ZtW5O8v0eUf69OLHgaHUeD7dAiFEP8qncNeRYHutu34xBs2bIuAQ7SEiQ7Gdpmz0HaEp3P29q+T2702FFLcG8my9yghkMEDaYZM2s2Tf+3pXY3iMc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705522097; c=relaxed/simple;
	bh=8VlV34zO9dcImAPjkUOe5XXSNlUJS/+dA8plnVr0Ms0=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=rexEkHA7hTlCnONfTkMJRWdGu9X6UmIwEA28NC04iNip91ZCHwKjLmbiFAf6vlNmYycjYlg/IN2DxIpjpBIi1N8xrTMuNaUhk6Fl8Xy8dFWZIhY0ByXUtF7R+PIn6BDdAFBKvBkmgpCK0eIfCyPCK24z11nWB0xQtN0bz5Qfrag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk51X4VA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk51X4VA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB20C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705522096;
	bh=8VlV34zO9dcImAPjkUOe5XXSNlUJS/+dA8plnVr0Ms0=;
	h=To:Subject:From:Date:From;
	b=jk51X4VAcz+dtCR7mpmGdSRwl/BUsmEXCCwxMjy3abzhJYxqcW22gTvTc188VVQF5
	 2cmYI2WwO39pdxDQrVmwFaOW4n4T+koUI+wgeZoPiCWeoOUen6miQ9pxu7sKcazP9C
	 gQRlt6cBnCfzH6IccSDttvlpvNmibjEE3wkqcv/N0I4xvs5vzcygxkoikgcdclucfN
	 jHgMnBVAZes36v2p1CZEQIq8PeeE/hBJ49XPGAfghTgKB2IgvoZlgk/qFneW2SsBbC
	 kDMooGPCp3/HkMZV6xIJnWciSKPE1GRtwUS0o9wDVLmzXs23Xezy75qrFv71UTKmmG
	 aeq69BAj7YhHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60962C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170552209638.9587.1533627861342218204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95b398fd9662ebde656b435bd08f4bdad9b7c00de09595ce631e5e150a5a0713
Date: Wed, 17 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705522096
