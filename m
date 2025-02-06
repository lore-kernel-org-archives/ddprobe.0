Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5546B2253EE
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738830355; cv=none; b=kG29yKaOIBDLuvLNO3JGChxsgOZlKYWnC+sYp7HwDI/jSKeXYhvBbXh0i6S4c5QN0oR9hkS9trNatuedAMF73CgguVuRsAqqy5IL6eJ84OUb/Kbyh+cfhlAul9FUaHUMexnM3IywzH1+e9L8HkrU1RdI7VW0+iDSzfAutB9Z6c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738830355; c=relaxed/simple;
	bh=iXsrvSB8rVaGFzPBz5hu3WPknd8apRV5uNvjmB2P/D4=;
	h=To:Subject:From:Message-Id:Date; b=l04tbOvBGjIbMqH0yI+KaayAp3hCZfRu+4199voOOr1WEzVYqmY+eIrHzj+gZiaImySUPraexH7ysIWQhoQqb9hpE0rELkbTfv9OY15MT+0mK6lygGDSFY4ouskd5CQ/KgaTAVimYoxDommxx+fIt998Zx9YsTuYm9vjzVjz6eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF+P6Bhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF+P6Bhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC33EC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738830353;
	bh=iXsrvSB8rVaGFzPBz5hu3WPknd8apRV5uNvjmB2P/D4=;
	h=To:Subject:From:Date:From;
	b=bF+P6BhsjsuPLWYtY6AY/VHgRxfERq2ZIbELBq71YHgPSVB9+ab0vW7/gfciVt2J9
	 F1rLvo4meL9l3y6ZRMQut8/PCZAGQLFcICo6+Wo6FOShCptZ+IbukVeSA4JW92/kDe
	 u2QBm6aT0UrgOogzNpThRp4Kwl7lYRnA0i7iJgjCPOpK0zBgohfrXZ15l7f47UgfFu
	 r/Oyf7EqjJSSdY9u7xPjYko8x46HsRRk81bAWRScNTvaURNYMvotXxtJ1RSwAOl57z
	 FUMGrbSyLi1CDISCgGWY+IJlNwJvmVjIkxlz9JB7EFviwFEF2c2T09GNGwsZ5q1ixf
	 U9FUJc25rax1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA9CC02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173883035361.8412.13658605680178396323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40a1489c503b27d055c4beef0137c8603e20528425083633eda7a52f85d555c
Date: Thu, 06 Feb 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738830353
