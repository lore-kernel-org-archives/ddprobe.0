Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AA33FBB4E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785150634; cv=none; b=XaGcCkH9McP3HF/Y0LkbB0L0mIgtwa8c2CAigkpCvGq+QabG0JOFqplqeNIA1kKEyc1HkKFBonRFiIdmbxn4IV/B6CI64up7OcqlxH6qLCI4wpci13DuP3yZHGTrGRiXThlMO4E0gtWUr4IHmWOBYJ0XdkVg5ugtqFfxbmkjHZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785150634; c=relaxed/simple;
	bh=1IdpLYHqxVMQRgrgHr5DiC2iVuQPKEKrw7B14ibJ7X4=;
	h=To:Subject:From:Message-Id:Date; b=chH2VaPoMebMppUxHmc08ukSR328gmp6zR0h+5BdCi5oLhGjgfjNa/8L6IsCyDsKsS1snqL3H2s9lFSijLC+O5c503NES0BlOqDIcJXZZg8I5Oo5c+mdqhfMhMSGVSdKiV1prD3QeC98ZB5dy/gJ1HjgMlQlfUmY1mDaKgtujqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fr3k5avL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fr3k5avL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E11C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785150633;
	bh=1IdpLYHqxVMQRgrgHr5DiC2iVuQPKEKrw7B14ibJ7X4=;
	h=To:Subject:From:Date:From;
	b=fr3k5avLinWbvwtEIr2kvp7Xn7ebLOiZD5V2pW6GVs2uLlSiLoJrXL+VB8wkGV8vQ
	 A0FxWYA5d1hhMeUPrlZ4pCLGm7zmr8kIVwj8p0qyL5tBUq7Msd5Z/3nVUg5vL4A2Hu
	 hVDnPcMoNvbM+Vh11MDHEpza1YiFoqk/LVSN3EVp4abJus0uiL8KdNE9sgXN7XlOqv
	 fciO/JQIqlgnmOq4xQaE8DNOV1cUfWYtfxehfXoF5ihV1WN78lxkn++LrrfSokoaqg
	 qsmJaoboyVhabQLimON0c5DH2hlnynjEqxqMyZo3K+imz+w66LzHjBeufuiM5Bwcd4
	 vL1jy3h/m1K9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D7AC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515063368.27207.18237663065610577703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001f92ddcb35bd57fba1c87428b17b63813d55c8e2ebe0de3aa8c700b7b397eb
Date: Mon, 27 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785150633
