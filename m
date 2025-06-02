Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAB04A02
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748893194; cv=none; b=VRKnuxN/PyosV6m07EdyetdSDsiGZ9r0EryLZMmsr9VXU7gNwyqF1JdGc6sN6nJvXa7hGZfXl8UImvSpgY3SC+XAFchHb9tl5D2hj0NcvIHftTpULnXgqEHHejGq2fCoh1MO70HmzlQbthMMNSIVmnAaTbksbDcU4fM/i9yiH8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748893194; c=relaxed/simple;
	bh=oaNgb4s9XI6osPi52UCEUEIcI199NzTRLnd1DNwKhTk=;
	h=To:Subject:From:Message-Id:Date; b=mHyNIwbgyuAQel8WQRO/upTMNEbh1kXL/S58BZIVNdKag8GWzRV69TSlya8tOAdcy0B1/1m/OjkswytwxisIiuN4a7hXX2BJfWJCi3qSSbmRWtnXrhRVABPWoPWvGGMZ/wreCVCcWSgDdsINKqRYl2C1alhWycNCwVsYVw7A3Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Py56WNTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Py56WNTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96DAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748893193;
	bh=oaNgb4s9XI6osPi52UCEUEIcI199NzTRLnd1DNwKhTk=;
	h=To:Subject:From:Date:From;
	b=Py56WNTHELT+Phng8pdCQq54ymroez+sRKTptE6QSncVRM35k7HfRNl8/YcewQfDM
	 D92wyC4ofe2pHcgxtS8JvWcyZ6PFEE7hMzoTg0N7eCC/z2yydZ96Ub0xdISlnYctze
	 ilnQDRA8wfXBe5qHc8LxzoaiHVupjBQ+XxjeodBdvat0GtxoMsePap57JovwivXDGw
	 st4cD4nRbLn7QDcpQ8rkMkoW6S1Q4G3YH35JQeFyuWq/UqLaBaSW2wNsEErvFQ1eqr
	 vLtiKwQF6YZIXAD08f01K6xF/88UZwMv9ISNTXs53uSo91xP1Snm+GTBaSO8QSaNaO
	 2n4IfPP52BKlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D180C5B555
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889319363.3594.8839947679711481574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f11712e65f0edb49b5be7694483b11b3e95fea3caa4897f559aa59fa167c9797
Date: Mon, 02 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748893193
