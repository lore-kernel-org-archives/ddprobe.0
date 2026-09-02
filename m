Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A7B48A8BE
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788355234; cv=none; b=YQ7Q2Kw7f21wB+iq+zlhcHKzzv0XekozpSeNpegkNefKmkEISiog//EkxRnWD6712CZkoY/qK7tEwxo4tsBBIT5aEvn0MMURXRIYuVHqGKDgD2UcgtEZIg7alQP23zAfji5Pgt62SvJ+ILWistslicf1hxdq3QJ7fWleVsoaERM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788355234; c=relaxed/simple;
	bh=nSRTZv7kdpXFLTmNRTZFrvsA5P9aiqeCo80EFJQ0Vsg=;
	h=To:Subject:From:Message-Id:Date; b=qLgQ3IQaGXHcy6+Yh3uzem5sLS9buvXsb894+6+FoqbAq1mF4P6Fy9ocRJUl4dzPVmwTZKObXq8w3i18lRDyip3a1wQ2I93+z3nV0eSrN2QUl77l3K24Q7zy5B9PATXRGTXhMCPgOr4t6Ie5eV3xunGDxmtOVL1BApGmULSn6gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGokxN2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGokxN2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC935C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788355233;
	bh=nSRTZv7kdpXFLTmNRTZFrvsA5P9aiqeCo80EFJQ0Vsg=;
	h=To:Subject:From:Date:From;
	b=sGokxN2YkSfsowrpcIXdMtNnB2CvZW7z7Z4wkm4gMjf9aWNbr8mbuRdhxBZ2OqAB9
	 qdTjyLLi9Ot1L1yBw9CmGOYeTTUYo5TrQWnf9Ugn41iRvjDIaNplA/vvPwLtDt9wmZ
	 70BqKTnDdfMgWg5SRQpLna40psPomn1w94Op9Jt2q1SPzsIW6j7NNvyWA1flB+5286
	 cnaWpscE+yTaubhv4mi28P3Cv8rfwjUW8xYxBdoVpj+PGU/2Z1VO24LGuTr0HxyOIE
	 hrRBGOsjpLONiaV8J7Ivhui3qcHpGAgYg9ghfK3R+b+Xrw08MO53j4WgieoTWbGxLV
	 3aXCz0E78/Apg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A6C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835523368.26346.16921869001249658192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b731b0771089e0300994e57894a808a6d1bff006679657c57026a5d73fd2b363
Date: Wed, 02 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788355233
