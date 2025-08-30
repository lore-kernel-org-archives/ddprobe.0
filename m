Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EB91F3B8A
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756525794; cv=none; b=ZxJZfKoIGHu9zTCm/Kli+MFjZ9cyAKvC9878INyQLnUcp+70kBMwktvlblNMsFvtzyKosKMZ0t5Hl3BeAQRAGskUR3rhHr1RzPBGQbo5DFX77ybIPg9/56gTEQYpor0mSaLGwOCB68jza68c7OiruZLFkgP7BQ7vXT3v8a8uSFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756525794; c=relaxed/simple;
	bh=f/Pd/YiwHBXcxfw+Tzfnncgi4a0sNUkVDIP73f0ZgXA=;
	h=To:Subject:From:Message-Id:Date; b=phFplul2UAINjgIwaw6/xeac6nfp8sEGSdxj6Bq6ig1q2H1E5OFgblD9xptnaGFJJSuApAX3iJIq222taumbFCx/WTZ+cI8ZtmJMN+zSmNUCm+sWOHwxuSEkjqUl6IHtoDBCd9J8puieI7hyjP1170CPdxByHAeu0Eiv1cNRx7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCl0Oi6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCl0Oi6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A2C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756525793;
	bh=f/Pd/YiwHBXcxfw+Tzfnncgi4a0sNUkVDIP73f0ZgXA=;
	h=To:Subject:From:Date:From;
	b=MCl0Oi6jm7B1dXUUUZZsgbUQbIuUwAwpSN1vcLKKFTqh82e/fQfYYTZ5JoTSYD5kl
	 xO4ypleGCreQ83bj1/TX26JjNDqZge2jeMESI3Zwj07HGRztFAbQh9QIID+zUQK7uE
	 X431oL9cRsQmzTngIesOhcK40n2Up+z2UztXkj88dc7rxI37lW0VUWlARTYFM2ed2t
	 6cV1af/LjVx2ArNMF1hPuMi5RM/zh8Q3n91C37ywHbqaw+qMnKuhvzZt/c57oGKmTM
	 2CS8bAPLlTQ41DxUq0UVyvlW2IpED7WcH5671RXbDRejXB71x+8GLCnvILj0dEy/gU
	 HWms5K3IZHzXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9103ACA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652579357.3059.8544432108852038057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb327f1f376f2318c539a08c1b83811f78fbad61cb8669b5bc21fa76f47ad935
Date: Sat, 30 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756525793
