Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171942ED148
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757026794; cv=none; b=Kl0sw9fl3nVs5Wf/l9I46c1zREhgs/nuQSmzxeQ/VlA5D+2Ji/xE20N75ZW9zA3U2zQbsavT++CgC5nsbFhQS5dH0iaqwV3vrY7x/MlJuUl8gKs90Fe0Zj7PG6K7UKSB+qQH92BwrC0a3OsbkxUSlkZQ7HidgnInH/wKGSd/3rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757026794; c=relaxed/simple;
	bh=f3lAKc30jJsie7XHfomooNslot6t3zNpLOXnGNUQIkc=;
	h=To:Subject:From:Message-Id:Date; b=EOBhpC0sLlNoR9rk/7OMtLfqQ0MaDq3NbwCWYSWHuU9lDKOm5T+hb36dpWTFRfygaaKl7fz5AIiPuiGYbxH9LyDB5lQ5R82jplYqE0HyXlBgkSB0qEWPdetAhUZT1knXcv51OeKnS2u8x24th5o8vTE2nQ1sC4j8eiWM3pSSpSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btvZiCMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btvZiCMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77F0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757026793;
	bh=f3lAKc30jJsie7XHfomooNslot6t3zNpLOXnGNUQIkc=;
	h=To:Subject:From:Date:From;
	b=btvZiCMvWYxyZEOA5AiKxx/zrrTmPYMCPbicUyeqvu63XNyK3ISUgVA4eJ9/f9+oP
	 VuYeV4ExbAt7Zdych6rgl/D6b0oAioIz578Ndm1e6geMQvXQThA6MoLsgyRFfZ8AE/
	 IFrH1Rb+Z0QxQFUgW/plJv1XLr/ewFtnDioGDnjF09csMGvZr9kELFFKKjg9PKX/+h
	 GsY7TwDFYZul5hUrPzy140wUXSIveFOeQEziuiGjp2ZaU1BnUfkI9Tu/haBQYRkRSJ
	 N3CF4iRSOW4wVr+pzR0BSxDF5QXdlF1piXvQngoG7PvTej71l3vqBJd0zalmLPlEa2
	 tYhKYN2i0RuZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AF2CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702679358.15030.12461769940839688476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f30b95b82e5ed0a331d9ff847ce2229b75821541da171b3014ecc0998125fd7
Date: Thu, 04 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757026793
