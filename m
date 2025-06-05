Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338321DED70
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749152994; cv=none; b=flVFWUVuVnuu6Y0Y2QQCPeLdK23SGcc7Px6BSWFBcapPHZ+7KdY6QvnxpieKcOXthUKdokUdGFZeWheUzkwDdy6xlXcL6ch9TGIWPbxxCOzFR1EjphfSkTuO2r3r2cPOKpzawh+yrzjhwESGYV+QlgpBWG0CECHXRWxjx5EUhGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749152994; c=relaxed/simple;
	bh=Ftbh52rNmvvDGHSbrxhPkaZMdhWNm5f/9HIrXStBfHo=;
	h=To:Subject:From:Message-Id:Date; b=MXYnYTmJX0fFWoPb7M3BbHMznrOSqAPd90Q8F+EFdazXEiwu+MSaBnL1VkrVR1P+6ElicpNTJ5PiW31fnfPPVKtkesw1QvuqYTuWDbsy94ZptDScr85057LUQeuW4ulszqH4pdzen+cRHPJgoPYh9bJhf2Au3YClyjxd1zvOkUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6mp6rg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6mp6rg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3758C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749152993;
	bh=Ftbh52rNmvvDGHSbrxhPkaZMdhWNm5f/9HIrXStBfHo=;
	h=To:Subject:From:Date:From;
	b=k6mp6rg5Vj8IFm/j+S3R/pX54ah8od8iZuHikdIM5ER/6zU3WTgGg6UFBTKjGWKVJ
	 JYJTDznMbhzzpvedudiiXBOysU82ae1zOlhFAGjn8Vsi2FpzkOjLrurVefQwZsOQ5R
	 vtfzxE/Sa4N7Quu6pSF7w3VUfveWM33AKnjVcDi4U+Wx0XinLJSmUEgi+d7F/95Som
	 F5JtpThgglXDybZlMjF6gDy6m1lMwOf1dnQqEUhz7RFFn+4yYciilmqBUp6gJ76bi6
	 IchYz4r3HaejyGpc0vTZoNvot5diyadxF7M6LrrcKG9IGtUMlmruUxKvLX+FEuu9Jt
	 PCve3Q6WuAUig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD3C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915299360.6316.17997175327551687467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5fe2c03d1f19adc30ebf76d7402a10b9a6005f9b7e98e3b7055e1908ea3e21
Date: Thu, 05 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749152993
