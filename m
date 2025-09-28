Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320302309B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759026594; cv=none; b=bKxh2Iwa/C6Kq50ycNIR7K5UHPJb7NsbDK+Y36GYWbheqraO+XUg70IFHI4QWSRoK5e3unAutyXGhj0gCm2h6ZOeX6ZHjSJdKtlzMC0XzP+Cz3EsXFhF9x2d2e+iIhhRLuUb52XcSxwyJggQUA5vlE+6BxSWj8xNBC6Qzf4fUj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759026594; c=relaxed/simple;
	bh=Xjy//4zX/aek8t9F5oJlaDSJrciodlaJmjX/xNzVvaI=;
	h=To:Subject:From:Message-Id:Date; b=qaLOz6iqJgPYMul9+hAAPEX8F5FJ8FP+L+Un59C6X6/NiAevaoYKbOlHmXewphULx3qEKl6J9S2Q/d27X3c5FnrZrX+KOCt87FWPehlvQ9xDq8uWNm/5ji12OD1aH6SCw3CRIKqbqGaqfpM5apY1FZ8DKfNW5odp6KNdcqtDF8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGssqjJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGssqjJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E8DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759026593;
	bh=Xjy//4zX/aek8t9F5oJlaDSJrciodlaJmjX/xNzVvaI=;
	h=To:Subject:From:Date:From;
	b=FGssqjJ14vOR0/s7xoop4Ov582RN3X+8fdMQY9pIf8XgrINzxH47CmH+GSpCGb/Vb
	 VmmGpr1E+zbb9LsxpoovM58/BHIAmek5MKPQ9/7UT679kGVl/d5dxE+FMSEdjCmC3l
	 2Dde1FMqh6VBiMeYHlpFJE57JoNB6laIp6Cuss98C3vWKz8sXtISmpvpwlGQAIY45h
	 h+nmTsCNGiBlIhgzZxkU11u4clvHV5qwE+N2aeB7oDTSRpvNXy/zo2sBpZxqH8Prus
	 w3mNfYUfBBd0dWvqJ2Yv6FMvNyySGhht1PH/GxpBg2x8j6rp2fQFKkKsin/nnmwIvX
	 ECiLqhFWSsYFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9ECAC5BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902659357.6709.13521742116876319703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de9af94343b73e1764a711dd8578b09a089f6f19bdd4a3f7544283518f47cae
Date: Sun, 28 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759026593
