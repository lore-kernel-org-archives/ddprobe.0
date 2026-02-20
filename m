Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2B036826B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771614894; cv=none; b=dcfbUDhbMERWJoBBjdwehI2hgJ1YmWqwTp4XaJRQDb0hGE09h40HhMjPzSDbIPfakjiVxPffhmSSwthZxd8piHoBwunc+8VQZRKwF3iZCfDigfMvj5cCKONJcF4Hp5f0TYLQLiZqIqdW7XjehomowR1vaaGOiYQHq0iMXrCtX5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771614894; c=relaxed/simple;
	bh=EClCri/fIHR2yQ1XrBE23oJwg5jx//f+TjLlvsb92F8=;
	h=To:Subject:From:Message-Id:Date; b=GC+OmRQ3J5D6XXZBKJCfyyhz/GYyySxkuReQWyY0PzyLFvqfQ3juEn9wbO66ospTjrf0Q+qqVXDzXBKSkZq7ZAhXgrVLUHE2cJGt/aJy/J6dDVOEoQcb+61Pyf5JTwDofVC+oz0oqRVxHi8cvoaGnvUfSOiy7Wy++59yziz2jfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7cPoqWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7cPoqWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6D8C19423
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771614893;
	bh=EClCri/fIHR2yQ1XrBE23oJwg5jx//f+TjLlvsb92F8=;
	h=To:Subject:From:Date:From;
	b=X7cPoqWRG+qmKIG0UCORqodIEmWHOJlmEwVpnr4Q6H9g0g6zHJWPo7+RluZ1MKg57
	 wpj0FMTkk+lvZhWTE7iAQgxy9rdRJiI59RFXZY++J7CfRryBqlWevlexDgvYYsxXYv
	 WNu34Pm7LIoHsMPfCbl/LOFPEokesl1Zxa1wvwWjkaut6aoZFzi9tsmTPadTroAXxx
	 09AolvZ+ysIwL869ws2SbyFLyBfWxumOCZbR1bkK0KZJEIAHlV6JcEYBE/U+hBho3P
	 Dl+iauMCDUdBpNxpTltdsoEKZ03lSOFZ66iUYx/4YyBzDPstXygCciHQQGtpH3GLIA
	 lrVQ9nIHV/PpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9657CC5AD68
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161489360.4922.6842847399097286602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b05fd6b2de1e5e1d90b321190a6ec468ddc2947a5eee860edcbd6830523e68d
Date: Fri, 20 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771614893
