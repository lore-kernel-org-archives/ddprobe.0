Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637772F26
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720065923; cv=none; b=G+kxOnlqf3KqbMgNj6KElIu6I6TcE2v9dH8pFtouBJ4ah2/8KEcI9z4/OZjkdawY2oJx8DqnfSe6LT6MSU4z2DFJWjFwuN4bFJNMW6zcJ4NreByTQ9PMgGrn1e0B2CEtiYTJkmVy7Z1998Z+oCVb4eB9TgCp72U5Tw8qu1dSBlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720065923; c=relaxed/simple;
	bh=NorQ571U50VgGplszoWKaq1DKxy+cH1fn/Wcwwy74AM=;
	h=To:Subject:From:Message-Id:Date; b=JigW0p7uH0IKqakERMoaBE8A3ZvSyJt6HGLZS0uVfkY1s4eor1mI9yrPl2S1GFXETGSSQwLRFW46nLyV8bJOJficRCXBw7Z8RXOHf+4Lc/HR1sqEV1bdp4u/xFJunDxaMNcVL+qbSkIoDMyadYSLiHUf6AVXuAwfsDX6FQy37xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBVO3WN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBVO3WN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E64C4AF07
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720065922;
	bh=NorQ571U50VgGplszoWKaq1DKxy+cH1fn/Wcwwy74AM=;
	h=To:Subject:From:Date:From;
	b=VBVO3WN86xSQG3oRycKRJZQwgr+OLtaQFNJmzi0psFKChKfTNwaF/JLS0J1+9bbZo
	 YTvNHvDk+SefrUeNqERQXgZh6Q3YJtK0GoUx5hgdtrZtytk1ig0bDgvITlqa+5fJ1Z
	 VjEHDF4zkyDndCjriEvDGzgsqWx/MQJm+qb34Bji6waCfpdUeYn9P0jrhn6stuGkma
	 v24fCuf51MRd539rJ2EOG3VgUOc1O3WlwR81YNHp+yzrmOOPP1xv25YwmeiQVnq+iH
	 LXzR4vw+mZx/AC3IUNjZQwZwnyslDMksTGdr/DGYbkTK9Ftz9ZjqAnxCPcbvXh4Ljn
	 6S6e5dhFSRgBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD597C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 04:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006592276.17892.2046226284542437134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ceead2b1feac309c83b1ca0d635775f2c1db81474eb7e7e07cb6a44090627c
Date: Thu, 04 Jul 2024 04:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720065922
