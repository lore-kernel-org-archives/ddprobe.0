Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5976923776
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719085343; cv=none; b=qC2DUM/Wz7lifMiEIBgHCwzfu0qEhnVwU5X/8BNui782O9Jky4tzG4A9Y67IOWvMeBp0814kmGp5lNt37zt+hC+n7RV59lsftIksu4i2sxCmGFfdWvWx+GxCmtvCUNpfyzVBGDV2QCa3XAiYzKSDkRqrTvn6NWBvsJSzaeWrKIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719085343; c=relaxed/simple;
	bh=GxLgmfQXhQhEb5JuxjBIJGDbI9jvggUmULLspeWxz4g=;
	h=To:Subject:From:Message-Id:Date; b=QksLhXTRFVQheWalnhOgo9rhVRdFRpfFMzmN+gKMfzDSCh4L/+n+fVMHOZi5kWTJgw2r1olv3+8saA8UrHQPSB7M9P5gnXgS6B4afQ4UBVJnCfyyPI7r2xCCpu3U85Xw9A7O6AlcixpiRBPj2K/oUi/84WNzOt8xLd4P1XVlYnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuglrBkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuglrBkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8ED4C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719085342;
	bh=GxLgmfQXhQhEb5JuxjBIJGDbI9jvggUmULLspeWxz4g=;
	h=To:Subject:From:Date:From;
	b=EuglrBkdV0TrWTmIMz17dj6akgAVfFWqT7NbJWN47nSxzYF5Wo84M0R9vmXPwu4rV
	 sdQb/ussZrDzm8yWGXafVGgZlVuUcp6J2WbdgPhZ1pH3/zAWSSptWQm5gNnSrKfNNh
	 GnqL8B3xi3LujRIayC2yY3s2sjdKok55GG4FwhD9wt1xk2qwtjFcDRYmx3i/wMP1Nf
	 SaJSKejahYkLgdPrkT1wW1jiGS8atOXlLZ8Rh21t3Rvj7lXOCRp5OHbYh1psgzNUwq
	 fuiEty1usNW8CITBqWuPj955cY4WXFptdz1t81Q2jmEk6Yn9/q43Z6357qAjsfMxjl
	 g+3U+NZb2Lc+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C571DC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908534277.17777.6042453376590535485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192d84629659d9737cc8d3eab0f478f47c1336c7e0ddae0b28241c2597cd57fa
Date: Sat, 22 Jun 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719085342
