Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A0033470A
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756210194; cv=none; b=sFT5CZgyP8U/ZpWeAeBsyyq3aPjiRTJwl0VKqai6y7XoTEKG53ttrqtJ3cVbyUoFGv8rkbzLwMiY5nvW6l2tZa/VMdFBQpsYS6183YYtgYL+Fc4BDyKXs7l1n7LPLcbe6t4bLkKrET96WOAO3JYCAcI+UbQLbCzbuGZCO/7UUHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756210194; c=relaxed/simple;
	bh=6pnL4UBEjPCrPbMhRKm/53gob2Z3+Fu/8xMDE9YTCrc=;
	h=To:Subject:From:Message-Id:Date; b=KoCkj822ByBjvK7JZ+rojm42AVQJuKnaZL1xaP0zODcJWGzBrpSgzep111Sy4RFVu6hok8ZTXQx/DBNiDZWmuL8NpSaSn2n8jJRkpxcZOnIGI5aeEZCs/wrxJzx5eizKvHwDAlPACH7egA2HVgu5w2sxJ6zaZNt5Sh1JY/G9tnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwvX/let; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwvX/let"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E44C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756210193;
	bh=6pnL4UBEjPCrPbMhRKm/53gob2Z3+Fu/8xMDE9YTCrc=;
	h=To:Subject:From:Date:From;
	b=TwvX/letNt6DB4vWv41r4cU8/cd6xEIaHDElPK+ZGD2dGu2un2ePjDB8+9JYGvGJ2
	 rfztGC8BtWvfEq/z7+FaPYa9zzOGoRlR1W4bjcX1LgO+rADeWNFBvefvvo62qhQS2S
	 /Opd2crEo7XEGyY0mVLILOThSQUAPfa/mQHBKuSOwWIzaI1sFfGNyth/srBojFinb1
	 jYKrpMTJ7OaWMaIiIvMHp+jS+k/Eubqad+9q1+QU+zfi2cL+tO0AarYXPX9NrAU+RM
	 5aHObeZ5iPkB4ynPou4IsZIoBJG76ujEgjC1ZU7MDTH+iUfy6APp6tXyU9A2cJj2Zo
	 GDDTC08dZWu9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BFCA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621019358.19354.13384809967169860820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68f227f0909c44adee2726c02338e0355970534417e865699a310578466d88f
Date: Tue, 26 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756210193
