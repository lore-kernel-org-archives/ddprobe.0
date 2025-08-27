Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298FC205E2F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756275594; cv=none; b=UEVrMeEuYihc/yJm+i1hLE0az38oC3BbdzQdhgVOax35k37C2KxCNKYKE4A9P1Pc1gw2wvkDrenk045Wn8xZjwfjvoCUmZK5OBDO8B/IJsYCoAnnGbRwtfekpY53lDoCCnet/ezWSbV34DYExEVt6XxNchaEBYaJR/WX/LU6n88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756275594; c=relaxed/simple;
	bh=bGJo1+xHmJKSdTMqJL9NZWcwVbUj+Zr/SvLk+nOsAnU=;
	h=To:Subject:From:Message-Id:Date; b=YbYMKQncun+f4Tn9odGkme44/NRr2sui8r94YVL86+rMD+oAI0n2nHaofrrhh9X1bKCB3W9q3H7D/JsIESguyIKGRkp8cyW63xrhPBZ8mTVhjD8Di/D3Dvg8Eh3JnqrYQFsBa6Xn8TiY6OKvyVETYpV4dPWBybfacjRurotwzl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TB31MPTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TB31MPTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0761C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756275593;
	bh=bGJo1+xHmJKSdTMqJL9NZWcwVbUj+Zr/SvLk+nOsAnU=;
	h=To:Subject:From:Date:From;
	b=TB31MPTwYIbrAMtyX5cHcV7120nba6l6Yl3R0uyhaZetZCjpvB4bMNVjVApyKzZte
	 vfmdvD+6Af94YEfLqvQ2KRnk2nMFOki6Ti8tYxTuFFa7Vn1Jo3TgrtMH/XJpU7VIep
	 PL0Vp1i/8mjhy7WDt+fOlw+4xJcSJZ6e/mDPNSfccMA30l/WuaZBrVmL5+Nnnp7tlF
	 fD3STdRmYP1o17znUT/ggr5MjXJFohy2SZTc5qdCQgIj5KQ7vqCSYkHbq+jOIzTled
	 ALrEDXtpqeWubwGpA9Y5ANIwBs7ki5+tZwWDElN2ysSqPD90IlXdx+CPpC6G2kAp4u
	 JymLPfQI+qSRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECD8C8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627559357.1104.16955204724575398260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6907c0f09203bf5b5c17e3b62c0c5bac92abbf1b318f3c47137b7d1bc84e7d8
Date: Wed, 27 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756275593
