Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224D52BB17
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761763794; cv=none; b=Kt7RCDru1y/7s+6ZuZdMp0amZLa4WSrOYvP6rJKEDk32yw4ejOD3X44zzUE+OZspDcb4r5zEPvsmkS8+mpTVOksZKk2kCnbVEs1Yllqm8GLAHCaEp3LDHEN43oAqGP3g2MvuJxUbVAUik6bnWIzSGzINuYv+JbH/4LaeiXyGsa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761763794; c=relaxed/simple;
	bh=i7uuLHD9mKer2I+auyHSo4FaupEwvOrJxvXT14LnF5c=;
	h=To:Subject:From:Message-Id:Date; b=PafZrEijfN1WffL2+I+gg0yE3P4SiN4qIPR1U8fammIkTY8b0r9SQfscOwbd8sbKA99x/Z36uMkfGt/7fR4YBLrW/2Z2d6a1KSMuBs/l+PMChychGy7QMFg8ao/Vp0rOrO6qL+vNeZv3rcpsjLs4q/iN8KeVoTcNV39OU15i4E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh9xl2iR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh9xl2iR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0DDC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761763793;
	bh=i7uuLHD9mKer2I+auyHSo4FaupEwvOrJxvXT14LnF5c=;
	h=To:Subject:From:Date:From;
	b=Oh9xl2iRidilbCh0Bd8QbV8I+5Z4Y2Tpd0vNdQcjaV6+UYjz0CgI5+k31LDaw+BTC
	 w411KWWDuZfPpsiO+Ri0T/VvX+gMOJYvbDeuRhKnMjlqtiXle4fjLH+GDpYRkQ5jUi
	 VYx4FzdQ38AGna5B8OgQczcrzlEZHnA78LZ0pPZeeouvTFAWU+A3ZGDOLbzLPQfEb2
	 YKCh6xNAvoMmfN3ZOa5B4tXX11kE6CSEAAauvjfEZno1ffjJkL9qHkyQO6g1HprHzh
	 ou04uGsmqBF3Vd1hPye4QF/zy2vLtwR0JsTe9pwbr+BfKg1EOF4fGIa8dFr6Jxhp9n
	 GXf3WGzFN/OUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98516CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176379358.3818.8354688095518462502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cbc3856ab5feb01262ea70405774a7dd1a0c7443683cae2f265e32ce0d691aa
Date: Wed, 29 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761763793
