Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FA6236A6E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736931353; cv=none; b=sWOAmvToWjtZkPGpkwfsDu9CdL19REYG4dfSi44wwQrY7muLH4mLGjFBe/TylHQvumlPRCi8UH4u34uOZgjQL9eP4dczjfWNDOsqziYqN7Hd6BAfpwVVlGXcQQt96EKt2FZnEvPFwjC6bFSqXgYGArMHohrnTgr6QDQLhZ9NoY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736931353; c=relaxed/simple;
	bh=LiL00JICxGKwMtrnyGczrkUV/qJLQhmihDAS734T/sA=;
	h=To:Subject:From:Message-Id:Date; b=TxnOYN4CkfFTfGGfZ7KUfpbjc9MajfdqdbWdxgWVcRk4B2K0ygLkLDA4ZF3opHSVtkriEbSxcTJOr+bchD8WsDqZR1f6mgAMe0T5YbJ359EWFlwqzgTBUs9HntPOCwyc5GhVbjR4/UhBI9RkTH8wrQ8E+5elrF0PnGK4tYK0on8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdK91IDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdK91IDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24D3C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736931353;
	bh=LiL00JICxGKwMtrnyGczrkUV/qJLQhmihDAS734T/sA=;
	h=To:Subject:From:Date:From;
	b=WdK91IDAGN3GEm1edolz4+avDkIHx9TLYlfgSg132HOrUVtH1UnpOVCZZDg9hE0LP
	 gMhheCOz5Zbxmt9Nw3y4qHAFlC6NeDSgaxvV144+4okjLLvlW17MlYJZk0wklO0bl9
	 Vrl8Ln8o4fnzYAQwMPGwlTWMHZAdTDpC6/zossKQHuvuS3ofhGJMN8KljqvxC8kxCG
	 YiM5wlaNLTounEA23KmQvz4b4r2h2N7gsSej5AUUuIrbok6Wuw1c//GMGY+cDUUCGz
	 I/9LKlZ2dApKw3yixtSZ9RH4T46T4e8cTMsjSYDGqKwFMivDUIMrVMA+ZuHulxDrfX
	 aV4VcLvvfqYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9475EC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693135359.18438.7616511700760080330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09976cf5c2475c2fd48f515065a313a7c131b69419eb641d28f08037783081f0
Date: Wed, 15 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736931353
