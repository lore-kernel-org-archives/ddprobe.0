Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215B635CBB0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769527434; cv=none; b=CtJfUPi/qxQGa/dl5bZat1OG/YLYFbgLfzH2vk1SbrhwHkT0Unf6uqxDKbyuzxisaUOg3lE/1jIefHSQmwjYgcaN22wQ0z3/AOkFNZq9u2hC+8ZNs90HJttWGRnE4t/owz497XTnGnj5ab+aigXszA8EKWJSm4AR1+ck4NcTKTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769527434; c=relaxed/simple;
	bh=YH1+gq1qZ34lbgTfHD1o+z8BJ4UtKZgfItj4IA/0EZc=;
	h=To:Subject:From:Message-Id:Date; b=MtK2ddtE6h2T2nvVgFvgLR/0a200DVCaNqauzTaxfySAmxuBeejqTxKMBfcTslFEAEn967RGLOtFVOmq67o5zPv1JoHrJoeUTmn5HULGOrpqIYH8w7Q2znTgawRc/EaWDSzbodjaFlEzU2YBSDQKDFVGoKqXwszu/gEkuxf6cKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmMEeoen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmMEeoen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB12FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769527433;
	bh=YH1+gq1qZ34lbgTfHD1o+z8BJ4UtKZgfItj4IA/0EZc=;
	h=To:Subject:From:Date:From;
	b=NmMEeoenJoZhGpHLKEY/Gvc9DN/gzX2XaK98g+ueuOF5VCRW3w9jgQDVgPd0wXj3L
	 q0YM5BxSVDAzl3HNoJV4wd+fj3mYH9giiwQ5MgtLXnTD0w9TLiqdmyk8b+PF45xB4+
	 xe1sYAZeAgczk/XyI/+orzlt8rPrHKKnuYMLvG9SzbagTu5T+ygqC6TD5adzbtFNqt
	 mksoYgIhY53qmRz70SdIXYc/onL+GWiAnmCHoGBCDimMu8/FGQYvGm39Qbkwi73iP9
	 XCxgZJxM4PjIvgq0/tvP+3RexcTFN6G9SwJhGRxvOvu3OezlUfUIRN7tKd68rHJTgY
	 XN6Tj6RMd0ESg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96671D25931
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952743358.18461.13011426193973126222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927f6c68b55ca203757c492f29e6c04fd666f4b217b536721459c2a86ae5d0b5
Date: Tue, 27 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769527433
