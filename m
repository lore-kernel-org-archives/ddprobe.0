Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471E6346AC0
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786011034; cv=none; b=erz86c/sca+2SlIdBJ5Hk4Ht+G3nBPL8u9f3/eXcux4FjEuxJG8S4gkEJtMqeSuWAEBHqKfVDK4dmge0OAgpIwfTgV3cR/r9hBpJP+02tdvzAW5V+2Gui3p+RI3PLtLNl0g7IwJ6QxQS7rv5XhvJHk+H+Bk1hhSqW3VD4beuUnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786011034; c=relaxed/simple;
	bh=MRuK+FaMU1JVtuGOjyWNj4uv+VqlH9W+S2ZVV7hb+ac=;
	h=To:Subject:From:Message-Id:Date; b=Y1nLfGcxw1ib6U5BvWtKFtGePQzr5socNLy67A2I37zYlai1B74NerNGgfQRfLLWBw3mHoxldIWoJJISarT0NiSsppp9xBe0FKaN9fLudtw6rsbrWoaEzY9PLQ1eptCB0NZulfkyBUuS2GsXtzl8BrwzZ/Xfr6b0U84TqLcIB2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BF364j8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BF364j8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8CDC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786011033;
	bh=MRuK+FaMU1JVtuGOjyWNj4uv+VqlH9W+S2ZVV7hb+ac=;
	h=To:Subject:From:Date:From;
	b=BF364j8A2G5Set0KCXmhE1d3RWj4dJPi5+JeFzXPV5pzq+VxSElMulsS4VsU8mugO
	 Kk/jqV5D2K/jynklOYHP//TikrL5SFWyrm34/+QeP7uXd8eFxlwwxklb2jdYr35DTo
	 0RstZE7t3r44lnL1TM4LN9NrlrqiTuTN2X9mZpUWsazGRJEoW6fYywWnSK6TbATFbJ
	 yommGFxPLqULz+tHKV/DJE29JBSI9VRyO/ghL5STqtRD0PRjtbPBkrTPV1Unf3BUQD
	 XFxNPRGi1/hPXrnJWrW+3lMjAjHmzM1q+9D+L52maskWfPWa5YsLgd8x2DRPZdfUMv
	 0SZ2zQWBEj9qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B458EC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601103371.7355.12222048439144675554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d63e44228a2f4291ec266a001cc5ba0aa1c63bcb92e89af0b2179169c8f17b
Date: Thu, 06 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786011033
