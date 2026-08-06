Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AFBDF76
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785982834; cv=none; b=g6o9gTc9ldPQHW56AkE6FALfLm49dRthhBMClLDPaDzMakt4LAKeeDzqx4Y80TOHJa3wEGJ0ofP+6Kz//JLzhaHHmDZtuzOz3aWOyubvv30JDZYHTYDSxUPrTSPDW8r0o6+eM6z1VJwG7C5X1391Mn0ztMCFs1hmRnx7+7R4yaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785982834; c=relaxed/simple;
	bh=pmsc1TZW1o5NGJmtzjXy5bP120HJNYWbPFW5oW/OIfM=;
	h=To:Subject:From:Message-Id:Date; b=PS+wFxANeez9ytc25Dvy3ToqONj1Yp1mL9PZlumte1HwawTlEspkI3b/tpv8VN+Bw9EJBe9bU3MbmQWSKqBL9Ek0sfGOieMX95DjEpQVAPINv6R6jLra5KjgTUK/DXLP6BRwyx4XpL7KZiYDFk3207TAVXeRtyne2TAxFvSQqBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liXbq6CS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liXbq6CS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CF3C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785982833;
	bh=pmsc1TZW1o5NGJmtzjXy5bP120HJNYWbPFW5oW/OIfM=;
	h=To:Subject:From:Date:From;
	b=liXbq6CSpG21HZO4Ue0/gK9cnjoMu/E9n4BTbtJcpbB6sr8jeHlUp6P17tBRUbVoT
	 tfhjNoqfxwdX1OgL8Wnlirc6wi7igOdmOXmaO+Ex2NGpJ3R0CYgaC4j87WUjKiM1de
	 MGT6jfr13wCmvP+cLVNGv7jTplKMqJpuUBEP+jT4YnsPk1tV8EZepcv8jVk8/cazFF
	 WpQ7yFsoBIM6DY50pfC1NkNTcN3Pp1VLpUtkouWrY3gH8FwuQMGsVPOAkmD9A/KnJQ
	 1AMTMrzmX5XaP5uqHFhPX1f4hMFwishO7VGk9s9TYffIBBcZ+XGxb8ny4W3XUwgVRi
	 qK5vF2KxGPvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC50DC55ABA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598283369.30319.5414631716025126852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ec7c9e606f3143b34452af1082c2a07aad6268327418c1b03bbaacd92f4ffe
Date: Thu, 06 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785982833
