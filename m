Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FACA2914
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731305154; cv=none; b=OkGZ5319y8049qQFd/D7pukK1YFpMmN/KM/14d7acDUQm1z81EP0uKlqA06g8Mw9KciCyPY09dwTeQHo81VAO7ljLXdz4yGxiMKeZJr5s1YCVL24KcsuUBpIacpPwKEkEVXK18WVh0r3HbL1TfuPZ1oS9Wz20hnEJLFUtQv+eJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731305154; c=relaxed/simple;
	bh=9An8TaKnKFIgNvH9z4h+18SHAH67B5j9+TYvIRhe4n0=;
	h=To:Subject:From:Message-Id:Date; b=qQbMv8KnYppaxarxfB0Eemnk8rkp8Sci87KL6Hi30HBglA92hB75f3BYgvSX2f0xq6ROo1U/3SVoWhdzOWbqpDFopxri+DBZ5fiwrLxBmRF+wjYAy/SIqBikzhu7sNt41mfjkMjbBKpMEnA6XchzcpkfeUw2kePviv781sEziXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYgSMd1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYgSMd1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3971C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731305153;
	bh=9An8TaKnKFIgNvH9z4h+18SHAH67B5j9+TYvIRhe4n0=;
	h=To:Subject:From:Date:From;
	b=EYgSMd1EZD3fwkmmr7kM11nnisd3tkB+rcODLFFXa17MjxhUWAxAh9LKN26R619N+
	 gSemb2ORB4PIUSFHwMnbS2g99zzlhaq3Aap7huRnCd0oKSogE00lQk6fYcwBotn0Ch
	 rXzsJAUSMhgbUyx0EUVbEAFHyiLXOVkgMp5QM1JyUZb5tSBZmdd/Poz6IssFzJDKgs
	 Hnmb3eG4tuxl8vRammXXCm92OGJwNugt1ZI5xOhQJXztphj4XX22PleWApJibRDRc1
	 +mLiTkA51iORt9HetfdHmN9Q4+LMO8gsjTZ0ipt8pVVnRESqHV3VuaoQHUOsMza3wY
	 +LhyRfRFu5X/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E70D12D71
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173130515358.31232.726239856607604649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c497dab5bb02465e1dd61c4e2cae9ed3fc809581c237cd6218cd36588e9b93b8
Date: Mon, 11 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731305153
