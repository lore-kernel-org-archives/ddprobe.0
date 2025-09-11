Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C7C1FECD4
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757619594; cv=none; b=uPJy0FPjHp1D7Q12Y8+0hoV/Ts+VZUyiuggBIi5FxX3OPFI9yNhd3AEQzwr70xD0OQ0mIrIN2RAKLtmBVw+4Ku9/ldgVmydVDMUdntpKzaBtL1V2JR9n5ob9k//qxNkeU9DIBIkHAjRTSHoPTerZxfTm0thmVSMS1r2NiG418xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757619594; c=relaxed/simple;
	bh=2OqbL920QMKQ+nU1OMuEwS9EaFCxrAOnwnpgENfBaWs=;
	h=To:Subject:From:Message-Id:Date; b=l42mVrk4bTg+i5VD1jQ6llh4aOmR4fZ+Fj19E1gIGvIIWfPL2GsiogQBJZp+iJE9ZbywrxWcpu8ebQR+Bd+3uqkohdEfeORoiMBaEnRlez4CgV7yaouklUeqPsjVBOM7QMEO94R/6ZVNxQ6zOaIQTQkO2rCGfnarzdjlGn13suI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEWoJSzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEWoJSzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1708C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757619593;
	bh=2OqbL920QMKQ+nU1OMuEwS9EaFCxrAOnwnpgENfBaWs=;
	h=To:Subject:From:Date:From;
	b=bEWoJSziPmnXht4sRW+gQFUxDPP56aU00yHMIGE5UIyP1a+wbrYTDlgTMw+oSpGN6
	 Vk6Gbdx4+1H3ezlPCkm5D+R8sar6eP0gNrrNsLuQu5Pmfrl56NtZy4MTPH/IoqdNiX
	 LgcL7g7kKgJb4VNMgiUfJiFqoXyUGz/EXlk14axjnaD6eYmLqd66wexsodBbKKmPyW
	 IPBLC5wwXf0ZxA2dA+xvOuIQlknKQgQR/MT4XXDKAalhxMEc1l1ntzkUE7uD7gUCYz
	 n+mogtbgiAElLyagurATWkeQt+uL7Tm5lZqFURz7et5uYneKd/kvBQTLmGv01YJye8
	 6V1D769HcSRfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93730CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761959359.23831.3578459002286997403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67304dc4cd23f4f082e8cd176c97fbf96ea4b2545ff7e454547a652add02873c
Date: Thu, 11 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757619593
