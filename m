Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB851A716
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728244554; cv=none; b=YWxeUJFp1wvsAxdqm3iJK2dIg9zlCOzs2WMQgOU5A4IkpPIgFCqThZLNJGegDvBzUhlCloyzy5d4AzxPvqxs5X4s3D4yJ+zfkpr8m9rudYTEbfGJXAALYG57jgjvmSbQxRKr8uySK0v+bcilaw8VcLLmDLDzlBm419/KM+C8TbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728244554; c=relaxed/simple;
	bh=hWZ2+mpUT24Gy0NzdM+zbfmcobjCLLRf8GZTQ9T0Vb8=;
	h=To:Subject:From:Message-Id:Date; b=i9FOans8zxOJ6QlOTu7dMDqez17fUx/nvmxAN+GWEnVQpPHP4ZXsHtWIUxUdjyHshm5sgQWpbNZy8dCf1hXaW3c8p/uJ0DEuDNb6PjR/aHM3G3m5jHWzDsW/ABLZiGdgmoO0RuyiBTbMiwsSHfVMXjUMBO1jHLLvz+f3SryKTMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XinqQlPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XinqQlPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BB7C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728244553;
	bh=hWZ2+mpUT24Gy0NzdM+zbfmcobjCLLRf8GZTQ9T0Vb8=;
	h=To:Subject:From:Date:From;
	b=XinqQlPQ1kcEz3LNShKTm0LUyGOzg6mOIndOT0xWbAgUwh3rNDkjkEj5qrw03/MDH
	 YT6Fx3OabuWMkxixHO6rLwU0IotVrgf8liIM8tdZLMo6MI2mRLSp4Tu56dnFxBIuW+
	 Takz4ktJupP9TGQGN2LmRIYB1F7MASEqMyuY61f8oUIMuvTNfG3JR/shQOSCQtGm94
	 IY+QiRJGv9gcxk/SO8AbM1rE8fCXn0tgkH2MB+1jRwi7Bwcj5gheWyY4p68Fyu+BzO
	 aXXDnPT0TWj8qfFjKN79kRBq8I1AKl0XcMtujedoGHlB3oI+WzdpTycOOzy+tp+FS+
	 b5s8Js8+dSdXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B45CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172824455359.20671.6647886270344922728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 397c1af88b2dde786aa5bff3edaaed0358678a4bfcc8782a38051336b2c65e15
Date: Sun, 06 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728244553
