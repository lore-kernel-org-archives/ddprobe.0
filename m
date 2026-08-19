Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A7F3CC7DF
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787179234; cv=none; b=hwn9KfcVLveA7FprsgDDP7VQOF4MVKw7D+FXfEvuvc88OhkAUEvRWBirJibRrv0qLvcJ4lbEfnj4r48NmgsYM1bQiPpl6pFxLGOoJs3aGJ1BCOQCfkdL/K2X1EnzZ9qLi2Kh8qWmHxnKPMLWGd9x9pBvwHqm9ROEoYOo3oI9fHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787179234; c=relaxed/simple;
	bh=R0mCMT8F+ou2hs+hFLS/2oh9Z1b5bXw2bkeG5fhrxpQ=;
	h=To:Subject:From:Message-Id:Date; b=RijXggo0scpynGR4CuywQji+wzmgmkTiu1pp0tpeWmvYFUaBBCkxW1gBiK1qvinpKqWgQQT4MYjeGz1Bk8ihkyB4vlKBtFSwiiEXYB/oUPdsD/s5Z74HxSisyLRkWux+YEbDAaSt1XnQIFixOM6xUJVohWjNqjnJ3EBbCqsyeiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmSIqY59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmSIqY59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB67C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787179233;
	bh=R0mCMT8F+ou2hs+hFLS/2oh9Z1b5bXw2bkeG5fhrxpQ=;
	h=To:Subject:From:Date:From;
	b=mmSIqY59Mbxa0N0MDfOeJWVR9kLjthJFMNKx+TMo2byV6ecQrQLpbn7NYYp8ebgZT
	 gXIM/9e2FcHjObtAY+5geM5Pqa4ySmF5JXCVSP0HSkoBecSnOg/wV+0s0VjlK1dgqd
	 bn7FbmPIAeu3ndONMVmNT4e1Qu1RbdieHbDieNhIJraLfqdV5d/HetjkgFugTEsYua
	 QwfQj/ZFg2yhx/nFRkHAA/7Uari25tdtUHvcvwXaSEFCwEuJxo6akNGl2qW3Ms7Dd6
	 /a8OCRVVqddFX+ui5bSomAYggdeQwW2q6MOEJk9xefpXy7bQnanP9sUhqbGetddZ+e
	 e5kiVuBmGtkfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2542C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717923369.7524.4535520182844525840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96165350bb0095228aaf041ee6b18321b5b8b4d460a6584acac9038cafd21366
Date: Wed, 19 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787179233
