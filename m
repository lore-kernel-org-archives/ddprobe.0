Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E9E299ABD
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752060594; cv=none; b=sTPV77a+vIb7NJNVSeinXqO83Woreo+xZg9Ft6556Bu/4yRRxzF2FFC4w0AKWiHTNrtb/o482mRzbstnEwlvxs7dwkqAEwwygPIM6o8AvKKx7UEb+KZn2MXkXpxoo9X69fdOnKVQ2G2DZ6DXqWdipvch7bO4Rf35ZLuVInS+cyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752060594; c=relaxed/simple;
	bh=9V39OK/SM68cCsRmzTKSjQu/hZRtXEK0lRVplkKqRWU=;
	h=To:Subject:From:Message-Id:Date; b=JsGg05CGRlmujaerQ8KJZYEQRE6E1N12ySJouoGZFqa9VISOy2BKvwix4UQkhRO+f4tRGw/4bD/xy5kZp6isvbm3GoxuWL/bJ6ViUcXyObjUaVGYtR1NjBz8fbHNSGrPvPf5L5B6NfK9yiVFwvd27JUAufeM5ObwGMeRGByq+ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRI6/FwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRI6/FwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F491C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752060593;
	bh=9V39OK/SM68cCsRmzTKSjQu/hZRtXEK0lRVplkKqRWU=;
	h=To:Subject:From:Date:From;
	b=HRI6/FwCHUgOJq5Jm2ZhDHofPJWi8dB7dcZQSpzViAPBH0y/3nq4OtwSuhSHkOlId
	 gGMUi+tk1fS2G/lCE0gBkP1rJG1bf3YrEccjytFgWy75kiB3sRRlyahQPLUFtp1GlQ
	 meTibTTlr9MEntks2OKooHD8P6baTTFlkpZ0QDJS1wkwP7Gfv28whSt1/0MMracK2Z
	 8ZC2KgnMkSaDtOpHdGYR+zPRCqIiau97+UesXO8rR2xMiYMuB3EDosDpSI0IKaI3DT
	 fuK8Y03H5VU0eiO9Igu8D4xBGm9B+41g9Bsqpfm2+M2TOYJphEh1IZYlPKkiyVYvjz
	 sEazD4tPrCU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90075C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206059358.14479.5686122209067937935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7880acaf9a0cbcf23c08685857dc5065d9d771befbc0d35e116ff669d2a1f9d
Date: Wed, 09 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752060593
