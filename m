Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236B735A397
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781525794; cv=none; b=pRHCJsruS/k3N8dr+CM+Bo8ia1vDddd5MWTeWzMkNv2qwT+wgYdan0LUahPWN0jog0f2+6S0tbFwACIWg5fXacty2EB8JDhcasP7+3tQvwZk8zrqRoTqN4vc6dua753CDlCA3G3Pbd2lM9D3CLyE2JkCmVOih8PxlzA699LZx0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781525794; c=relaxed/simple;
	bh=UM/ieShrI5q5JCqh2wrGqX8ckfttPFB8FAlfex/dOVg=;
	h=To:Subject:From:Message-Id:Date; b=bQlQKVg4MnDTjzZ5LAcVKRKGjQ0sFSc4Z6uaQfQFcrUUHS1Q+QYOsMriGPn5v5C2HCYVGSz8Zhuexl0Q1pPOSsSZeRzYFSgb0Udkdn+eZZO6eBMjVDvuEcLpJ6RhvVu6xMLay//fn/BDb0wdByx9nPRXaMezT9zzkP3TSTxID3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7kCXZjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7kCXZjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60E7C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781525793;
	bh=UM/ieShrI5q5JCqh2wrGqX8ckfttPFB8FAlfex/dOVg=;
	h=To:Subject:From:Date:From;
	b=Q7kCXZjVOYSYCWAb+kk9kNFdg/bNVS1rqsDd9wD5UeXKhD+qN9711tpbfo3PvQuEv
	 ycUBJ2JHGecK3/llelU4fmf4eKJQtQyONiSSVuohUrV8W5YeH3gZui/6VwTZAaaXTB
	 VhbmURqbG2GDZKAw7f4xTSZX/SMtH1NyVBX0huC2r9PJgCX7nRnK2OUrRRs18LWOBS
	 LvwtFLW8/CXw6I2Kj9CIZHlTSvNoV0nijfy1EvMKBqawBSGu86wYql8/NYDq00EBq3
	 o9l93E1/2X+npebnK2/3LVYI6/Wyu5nMttNsNc/ak6p0CcY704drp2IHpXPg9tz+yG
	 b2+OHoO058hGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC37ACD98C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152579369.30816.1591065492321321189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1aae1ee9e1c5a18d2ee088b6fbefb8e6c4db25a5784577e204abc8d89c5b844
Date: Mon, 15 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781525793
