Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A65E6ADD
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754365194; cv=none; b=SWuY+IX/vkgkvjAq8hLpngsNwAPzUONfVxFygYylSvDntzhJ2m4EVbmYke2Ekijc0FxLwV4SghJDk1/SgyRBqOAzsrwWSYh9I0+7a1zJCuhQDJwfBrTj8Zc6yLtwF10jH/e9DrvuVe7GPz0GlrR/+u4j9y3+gHoZRtOK/zFvt6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754365194; c=relaxed/simple;
	bh=+uihn3ghEnMU/Lci+mxhJpNqFfAcQCb58fIo8mWOsks=;
	h=To:Subject:From:Message-Id:Date; b=QzISpVJ8hoPHlSkY/bWHOh6EWyoj/DNbUPUHmO3FB42Ysaa8b6/OrQveM9YFy0E44fhusWFWLzlpyOs65j/1YalHWsZOzN9IXuv3vvSeGfhP2yZT95BoIa9CUUPYs9Xlq4wdfGiQzMvCre4cBdDNJTgKTCK2GdV2tIWSFqHgZ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hocm/zNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hocm/zNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECBC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754365193;
	bh=+uihn3ghEnMU/Lci+mxhJpNqFfAcQCb58fIo8mWOsks=;
	h=To:Subject:From:Date:From;
	b=hocm/zNJHOqaZRFux0KP484Hbsxgcyl95E/zO1V/WfBJdDB3eQZsHOUb8RP+dILFb
	 7W0loQT2ZTlhuoXr9AmRWMrvYT6pQVGHJAYb14AL6q9v+uXvbEGM2qC3zNxsJ4CqK0
	 /a2P4rN+lKfxHCkYGzDfrYOO2Cq7Lu2qD2mD4Zz0NyWH9MNduNRMlH+7Pmhd9QmpzO
	 UT8oqwI840+/wJte6X0An1JkIb8yQaytOoWiDiTCSxEevmGIYSfmbEZpjP8cCI44Vy
	 HaPENHVV3BN8rbCZddJEzoT7MVYZUgjkmoGBcrjKEjksUpCUEiZL4e+m9ZXH8Of34N
	 JcsSIejiUjR0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3CC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436519357.8415.5738218248753933238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02986c92951a8fe17c1193314f2c32d11a4d9ffca5ca4e6f9fc3e84930d08c4
Date: Tue, 05 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754365193
