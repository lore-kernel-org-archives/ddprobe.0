Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243F78831
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711270097; cv=none; b=XiqGHoRTNUt+TPXBoLLZM+YYUhoaLjKOK2jTMFjI4LGgIku1m4Vl/ut8pvjlq5V7ruOhb+i4yUYJCVN+EdZ0SENNTh/he+x5phk33hyPcptAoVNSOQ1fmNX+a8Pqp8BiXhVLY2d1PPPoG39DOECGhtGLMuQLzQ73aX6bswMxcRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711270097; c=relaxed/simple;
	bh=Xuo0QCmEITNd2nnFXy9yYR8u+UAXKXUEmvUpS3aegPk=;
	h=To:Subject:From:Message-Id:Date; b=A2mrV3Pz5PyNrAcgAI7sPB1MqbdWEDfYehyKHISP01kHZy0eYNeTget/G/wrVJegj7Qs81L655oR3R0aBzudvrRCBGrr3kDobzIh5dtX/iLD03XcQScGuWWyG7Sn39mLBqkoM0G26MaRey6Pw6XVY18eAwI6y0RVTt/kmIp70eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVWsXsG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVWsXsG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9282AC433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711270096;
	bh=Xuo0QCmEITNd2nnFXy9yYR8u+UAXKXUEmvUpS3aegPk=;
	h=To:Subject:From:Date:From;
	b=pVWsXsG/LP2ooEHaWqgJC+h/h96jhdG9dUMVPsTlJveRinXkbKeuNnfdmeeP7GTYO
	 SL2FlYDC02V+byUuFlCQfAWK6z8h1gov+aHPXv7s1c+A9xhjZ2o4ZYNYkOTWC9Uct8
	 CV+NyimSxQzONkFPaKz+086gLVjR65pMuFuDzNvZRN0Wk5tD5tn8ZMZRylt70Yd1BD
	 5wsH+OxCCskez4huBVRcAdbhAtEFbKpmjubrC5AsKOBDyNieHIrh6YdShodBFCbrqg
	 JAWviXWR2N7FUmti+eQ5LQGMW2ygUWv4NCevKTq0C62s/c3qoFTvAeJGoKo4fidAiN
	 T9VNAzZMaE1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 787EFC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171127009646.6644.5673420791439870886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677c28e86964d9c8689f12abc181907ca7eeae699bc4927c04737cebcdf405d8
Date: Sun, 24 Mar 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711270096
