Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F28832C945
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764934974; cv=none; b=L24ZZLQIws2nIzJnE4A3qI2zG6GsLDIVryN6/6x9yee5AgDBp2eY4vYt08byRuow++YmY5za9ilFB7YRX5dBW3dt69Bic0rGE+a5/VZnaTXtFuwXIqEIaTv3tD4YMkfoFluy0Ri9/59aOH+0leMXVqC9YfThicxNrejoiu3l8TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764934974; c=relaxed/simple;
	bh=Qk81XFwh8VK5kn2VtEU5TzXC+BNnNxE9lqXr8fS2O4M=;
	h=To:Subject:From:Message-Id:Date; b=e4TYqraRRXFR9fITf6nYlOFvDu2vJ8d9OVLqumdGYm3lpcFfo8jbWrQctPF5CgCSv7LAedekrHb8yVc4MyDZyhGqAf1ceBRlwMr2MZv2CUyaCFQzVgKUcQapEqlevyuh0bh2BbO7Kyp0smYWKPaAOkxWIEVj9nvy3n2Xm3NoCbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyKv7EHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyKv7EHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E5BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764934973;
	bh=Qk81XFwh8VK5kn2VtEU5TzXC+BNnNxE9lqXr8fS2O4M=;
	h=To:Subject:From:Date:From;
	b=LyKv7EHUDrKOCWkLI4vYOaoY9qp0OCf8toy/yxqmXO2kLgLe3yE9WrWY34KUOmWi/
	 GCv8Uvqjn9LJ16AbceKNH/lPNhQamtc0h6OJ2wjjMZomwgMJe5atq71sejg9soMlOG
	 z1aBts+S9QqvHOFbd4ZZOGthpjCPI/Wesbz6A3dsYyxUDr9WRr9MlADvuauyNT8I2K
	 vx9XaU+8Wv9UhED23QZziJF/CrfncNmhf+8pDfpfonxqX5FJDo/hSzXerPE5IlA52P
	 x3oO7VWaeYozD3fL0dMtD3if9LB5g94Tu1TkSmar79lZ7B4exUbtWnpYdNcRIZ1lxB
	 0yaFQKyT1hQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E792D2F7E3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493497359.20282.14399948695351569115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72533018a68eafd073b41484ac8fc55e3906743175527132b5e63335b97eeaf0
Date: Fri, 05 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764934973
