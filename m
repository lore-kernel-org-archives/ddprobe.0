Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F31F23AE71E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772022294; cv=none; b=lvbm0wOcoYKd4dR8qBTXXnFfStCP7x82x3dHAZ01I+rdGVZE2Pe0bWa/1IeflsLdr4CaaTmAh6RxDy5+uekfZkNwTLakzVLmGShiFyUgQ3wlyMKvWlK5/tRFYQv1hMMqcOZU2/Uy1m0Oc6FrzalMMIW0+oBUAxIC2yGHXcbM808=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772022294; c=relaxed/simple;
	bh=yFC1QrkDjAm01t68guENucqW5/Q9XwUqabNzbYUOaGQ=;
	h=To:Subject:From:Message-Id:Date; b=lzJisupkIPnYRZSuOgTsQ5dHyvq2CsWzyN7O3Nq+9+zld2caM8bxy7Dw4VMv1TEi9O7Fmx5PjP2BXzOGoBGaJp2IzmgRPeBeQV/5bIxmgtquFBkezKK76jFRh4Z1pM0fFRb/unU1T9jK4d4IaQxwZ42TJTxSJFKp9kuFvbceOWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiZeejHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiZeejHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35F2C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772022293;
	bh=yFC1QrkDjAm01t68guENucqW5/Q9XwUqabNzbYUOaGQ=;
	h=To:Subject:From:Date:From;
	b=YiZeejHd3Y5OuM9sLtTjqPMhe2ZF04VLbVtGTye6+y0sgS/rneqk+Du3/2DBeykUY
	 W3zGPdNRPxxB97F7LD6EImHGvlTh829kyvANiFP3Nox8JRbqUAbS94ZkOrJot6miSL
	 eCFW3VZMntgVw831MO9TAdX0EpQbgMDLLRGsbmsawLkiB11jC6gGXg7dAt77p0zY0N
	 Gigs7/Redk1DsejM06NDstvGme1FAwFN3qvmZHByGJSJDIo6LbvyyclXmNhySpjBB2
	 kOGIkLlK4TTwSz/182x8DIVicSLqRZv7NZqbO0ktAn2uHhfIGbD+tm92EFeRwDB5ga
	 AlDELfWaWqOGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD7FD374E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202229358.19192.14199715923307574912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b915368cad702a95b13d6895090d5bf8ec7a7f7d43f178a6cb68635fc780dae7
Date: Wed, 25 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772022293
