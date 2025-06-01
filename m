Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F2342AB4
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748785194; cv=none; b=hUS5PmZBuxprsx4H/kXuDKO0GIWl4HXcKZzk/bSUc8rUZ+eOmq3RuR3LK2TWisVuccmC19D3f27A3koAlv460Zh6ZH5gMr9x4eglFv3lg1AmUgqPzsDYgaZtz4EUGIHUlndbknvkJLinkO2BQz4Ud1jhvd4FAYCu3KnKOeyb1vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748785194; c=relaxed/simple;
	bh=by6Erfmzba0GnPs0rc4y7TeQ3qz+pZXzgly/g2RrR1c=;
	h=To:Subject:From:Message-Id:Date; b=qr4UUCBrIJ46RYdiHJpAWj4yeynZct3conOvEMGOKly76lMleVVtapCE8tvINrpm9XBX6GYIZS/YljYDz4sCn8qrOA4mk6qmWYtg7VMdM3qX2WD+4r8ghZfkXDnwC1v3k7oShbaQsR2AxLmGAe9F82Qe3H90SGjMV3NuF7FQHj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQdAHOpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQdAHOpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8685C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748785193;
	bh=by6Erfmzba0GnPs0rc4y7TeQ3qz+pZXzgly/g2RrR1c=;
	h=To:Subject:From:Date:From;
	b=MQdAHOpVHTUiYLweOTytb9Z7ZTOczGOzxAimVq0tWi99XtJ2ZPpH1e8QiIeYA/1dk
	 L/u5dPwZat1tpryLMHz1P6fEBcqDBttw4rGyv/QgTwmrXUTqi0xLdn6Z7TbMbAKw2T
	 7cudflIeMTdA8t1qk6mu6I3E0/R77QVe59zONH82/OgCS9n0t8XwCvn/6qu4qBk11X
	 rc8hDLNluukfldZZcXUy1H8BB5Vu/ME7uaNmE40LGYaEl1b0agMbOtAd4BmYHjrh9Z
	 ZXHVWfTEPHv8cRzdKRjtS0Ut6+JE2KfJ3AHj51x/wMjTG4YSZS9EGIkrjQ9e9U0F6d
	 pznPxjGLWZI1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D32C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878519358.3357.15546086265765952917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5d34083ea5c71f008a078b285c87ca19b4a04d7505b869d63a25a256463b0d
Date: Sun, 01 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748785193
