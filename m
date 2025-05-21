Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37622261589
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747824594; cv=none; b=PEAEvks7mUenSqFiY/6usP1N6QpyXREmJyYEYDUbk3xvO33r36VL+RNNr8Zve5PUK3Y8GoQ9rbAzBstaBBGuD3fnfu3XMSjNQ9CqACg7ljyie9X0ZIwCwp2M7qLxjxvxJY7dwWuxu02uvxxfWe0vEKiwgQysTClHiiJ6WHnNU2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747824594; c=relaxed/simple;
	bh=qUjS+BY2JvRC0n040ZYA+l3eSnGsd6vV3kC/aasLus8=;
	h=To:Subject:From:Message-Id:Date; b=KaxxJqL2I80prnxqKbFZkC/4plzXb14CeO8PvNGA24qzzQICBIezgTyX9RgaqH22gaS45vfgdoM4AjlkIBfnDdi0kIYa5KdAXDnWgrfljdbVo0NLQisc4W3wGgrJYompf8hugICtK/b43836h6yjlybCQs80GP7w3qpmzzsQaG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClIE7z1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClIE7z1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A349AC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747824593;
	bh=qUjS+BY2JvRC0n040ZYA+l3eSnGsd6vV3kC/aasLus8=;
	h=To:Subject:From:Date:From;
	b=ClIE7z1m41FY8tC+6S/crUNzGk6FZJwOvGrhOJWK48s+obze+vIwL1Hq6xVzIXbur
	 UjCnmu9pXQ6WgDEmsDWKsSmlixVZSauyTn5ZTtEfBRSxfBkiOrPQ7v/jUjsqK0hHQe
	 OCJQ0UnIN3B9tFoiZaLOgWowQx001py5IjbiPIoWzhmtw7u48XKjuD7z/RBQEd/tEq
	 K93tBE368kCnSX7xSa++jeb2pGOQUY2RM8imYeAxj0lcXKi/LeCqnlKCmmgeEeSA4W
	 nrWSdZySLOAhsfab9EvKNY0UaSBM28IW0E5c5P48WPSJQeIlSQ9rRk9lf71u0vb+IH
	 7fPR+ARWX2LPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033EC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174782459358.26637.13616322500059517388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d870fcc5344ad4421b1b31c55b0be46b5a7633466f37882baa2c68b97cc5104
Date: Wed, 21 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747824593
