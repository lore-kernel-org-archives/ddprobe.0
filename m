Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA81E1CEEAF
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727879153; cv=none; b=jVJdAQEjb4+LL2aTOGaMwZmVacjuZZOaXfAJ56NATIkwTETb+JQRQl248ihLlfxt38PAQCa8oU6dWg15vT/jrGir2Z0xzf0GrvwwIo89oE9RE+s2Dwot2xCajBMlFX5h2dduA4ecbWa8/pILwudmaeZIwVWUvuoHIucE5S7nIXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727879153; c=relaxed/simple;
	bh=R8348bkdiHiONH0pyZqIiuS2P37lvDp44d2ocGPmJFM=;
	h=To:Subject:From:Message-Id:Date; b=T2up3I+1ciSMc2VeISYf7pkI+w1tquPlLrThZUFgf1VzyYi0tzVmFt6tkbmS7Vw1L5Gd8x8FCfjXFQhRmOHZ+2a70AKh5TTqV54GklMLHLzvDDbNkM7DVYo6vIcUqzpzvP/340liNQZVoSx+0c1//emnagRHfJ40V8ZZW58xiYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUQ5lze0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUQ5lze0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1EDC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727879153;
	bh=R8348bkdiHiONH0pyZqIiuS2P37lvDp44d2ocGPmJFM=;
	h=To:Subject:From:Date:From;
	b=nUQ5lze0weA88/GUPmbaL2odY53Ac8bLNXkuSpzbGPJe329mbYd7PsCWM99pViUqY
	 OMBgWpVrdCIuPbsZ7lN52XXcFpC7bcf3I8P+aGHR6HSKYeFFj3Sb0vKQFQI+zrgoXn
	 sEX0d6WogjDOrw1HcVL6wY69tr/w/TZb6WIv1DfSahLXzzdNJ0fvIubZLpi/zAnyWa
	 EfRjolxn+OGd3b/oZRC6IyTvuAaB9do+Ry5ct8+yBrHzPFefL/McQ+RbGBkqX+o++G
	 GXJprxIuB9EbxWlr264OBAL/mTwa45u3QSAaoJNd2vTVBkIy4pxPofyB9CbWr5e2UH
	 1dIq+0u67EYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90092CF6D2C
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787915358.13866.7295172184972469469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8c7e0bc32cea0b030bf2015e1d97d3fca30e284367f3c8a06e9b9261cf7837
Date: Wed, 02 Oct 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727879153
