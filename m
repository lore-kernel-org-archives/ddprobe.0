Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2342E253B73
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751721594; cv=none; b=PSXCn5gieR0tTzeD2DIoxh4CRb1OWzMl+6M6k0qOuHKoKdl/IbyC2WGU0sfAIsizFbF8wpxR2kX6X07G0JbAQtCIcukknkCWiIu+Ikp4e5EvT5827iLIsXaYEJ5MXIpr068pj1+fo4MDSyNCfgwhf3zybVp19fNrI+CZvRgodl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751721594; c=relaxed/simple;
	bh=qJFb8/rpbzRsUQYY2eaC4yZziJsLRWp3ZbaOp8OkI30=;
	h=To:Subject:From:Message-Id:Date; b=mnzSuzRFISLbZ+9i3q4Zc93cEty9VCKudrInxHe/jI5BspY99EVsd7c3DSopnMI9+0NCNBRBkiVW8wxUjTe0pEZjr8dI4AkaOv6swCkTFSLN4bZvAMKUNnXRPtmdnwlk74l8CWKZLtzlulwkNnJtNjABZ1oWizNV2/9Ait0SJp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgWxzUgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgWxzUgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE21C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751721593;
	bh=qJFb8/rpbzRsUQYY2eaC4yZziJsLRWp3ZbaOp8OkI30=;
	h=To:Subject:From:Date:From;
	b=CgWxzUgLaGU1F+yMsgHh9BROMs+ANki03tqu9RUiozyVw5ZhncSbqXAMCARfmlB2D
	 mJVGYZOt1Ip6jCuqSsnWQ73Z+TPGoqt2cAdM20/0ClLpdfUco9vN6OsJxgN5XtS+Vk
	 y6SWRGRe4z99dumEArbMyBJ8v7dEGpwXJSfoZb7Qz+N11H3F0AYDUp7/2v1oZUksg0
	 M7grSklgH74jlzFruLnQK1N4RongYS7ev1lfoAISJg8e1lKrumHjsmIOE0TVDG5R4k
	 4HCdtb2QW53+kLLMNn8C22j6M72LsVvrw1bVVD/q+kfd0lcSERth8nt3u9y5XJmIQX
	 dpRFiJM4RrmSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91262C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172159357.21331.11738655237627032083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03543ceed26a5b6501076b58eaf18d8245f3e4c6a0c5ec346a2c5af79e23bdb
Date: Sat, 05 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751721593
