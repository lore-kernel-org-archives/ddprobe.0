Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7226B16FF28
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718753963; cv=none; b=k+3cl0FzYEpBD2+2QwOggCs0mHgn9zRsozG6zKQUUzWEpyVk3eYuTGFuW99aGg6U8+u8v2rHV/hf1nmFgVBNiGig7tSsTL4p01PT+kPz9VObOPOBdpTsc4g30l99aDkyFTCyqObZHNgDzMgL261/MiRGUWScEZqiBwa5JckHUGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718753963; c=relaxed/simple;
	bh=AJwsQEYPZESyXQUO+V1q5nhnfQ2inpK6b3KMMgwPQTw=;
	h=To:Subject:From:Message-Id:Date; b=i13inYsLQDYyWhFFApeasCNYIpYRwUwWKkNyCzMgmlPHOLuo8yaUxXdWHNjVmJkzCyYHwnmduf5O3LG5XVx0SxaY2D0Lqfhb7XjinJfgXK4OTmVTZ0sKjP5jRh1aYlmKEZqCm8+p4GLZij3uF1V492svMFto9NTxzYqFD+zk2vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg4OpK2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg4OpK2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1110C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718753962;
	bh=AJwsQEYPZESyXQUO+V1q5nhnfQ2inpK6b3KMMgwPQTw=;
	h=To:Subject:From:Date:From;
	b=tg4OpK2S0SwuLSLLK1ei/1HYsgIJfcEkD4W1Al+sf1kM8343mnfWSAkiXpcP86A00
	 sFfvhdLqDR1Oa9mKqoe5jcU1481g5ZIcYqbZTyihYP8f/NTsq+r90DkFyvs38fUcXY
	 maczXA+ePQgBU4rgGFlEq0/QPUy0XQ56eYViWzzj8a7HapIj7I0Vv3ZcxpVVkD+JK7
	 BlcXSNaH9LcTl8BMN/OhgOdn3Y3AxezBpR4vE0cUG199NwLKI4FnKCmK7uAXG2B9lP
	 gSNuTxU8sxYzcsS5hWxrV8kGovKd/chQDLyLTIRyOxQzflygODNIJ+xYx1qxjW8g/2
	 6Eo79oUEtVZdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA90C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875396280.11923.13807753505747189843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c8441f7820969cfad4810e885c19650e3aa8bdc3f55c457a86f389a14107a7
Date: Tue, 18 Jun 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718753962
