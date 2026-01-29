Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F3C2F549F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769717034; cv=none; b=czSwqEP1M+Vjh9QN0W3eZLk9am6Az/QD9UqI8iS22cSCw5un1iagqimFAR1BmQh5zupPLzTA4meETjMQBW+xJs/g3LsS59Xi2jFdJEbAO+bTojqIEbzFE/i0dblbHrN+G49qWTRIgnCIt5e11NGG7BHB0u2dwFXl7VV36V/Ckt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769717034; c=relaxed/simple;
	bh=LsO5iqd0p2GDblKJj1KDY6GKiu40DdKBi0ZPRIw5BZc=;
	h=To:Subject:From:Message-Id:Date; b=RfuiDDmOeBf5kvVCVN1QRm/EVo3Vw8SbnHBVAeEZB4A1lzQtcfnqOh9S0+F2H1Tu6MKvlGlQO3cpei1vlmkltseJ7+knbtZgFzp/Z3133bAxMTMObdlYlP5OePtGFrU208/z7s69QJyj0eAARBnsVChZ+Ic25KoUolABDdyFv3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+51ag2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+51ag2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE0EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769717033;
	bh=LsO5iqd0p2GDblKJj1KDY6GKiu40DdKBi0ZPRIw5BZc=;
	h=To:Subject:From:Date:From;
	b=l+51ag2i+b57O3pnx0zYYKDr9FPTOZeI2hfiNQE42SJtKUTbOo4V8rE5Lu54szM2P
	 mwVGQ/Ot0C2wN4sPwYdGLS6G2CSO5mWMVu2R47tu+G9TkCp9BmJzcFCYZYlfHd9Lk9
	 fxCwSyg6xHaXiFA0YauElN4axu1PBdkAvkdHIdgoSB4ii+8tpQdHLimEI//P2m6cmP
	 bm2+8tk1cto0OuQ823KaOiybDKoaEChrNqUKv+nKZleNd/kto5YOVbpYOtwZmRbO3P
	 pEiarPj0r8jizybFuwPbciKCsktuoMpNLpNI04AwtTNNJyVpT+MOH4LkWd2iJj+638
	 90KDcVj9MwTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90810D73E80
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971703358.17425.7159932657451328220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f1eda5a26401bd765bb98968522cdfeb103cdab4ee330d4b9a5e666a4c1926
Date: Thu, 29 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769717033
