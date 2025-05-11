Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598BC405F7
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747002594; cv=none; b=aQgfQClCGY4gG5icOH86JVGL5djdFwSaT0iEt6Yxvg8wcmZaJbJx+OcsKvzDYbZ6hxoGtbyXZXZB9wFhTstMrt1rL2ntixpjONKOZRy6wRcu2TupxXE5q5nfMRspMNk0G7wQuWR53+4ATUc7MuqBhXx08yggZ8B8O/6NKgGzZBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747002594; c=relaxed/simple;
	bh=k2cAeGntp1ELMOo3Teywv416SDsNzh2m1Eb/qXoE8KU=;
	h=To:Subject:From:Message-Id:Date; b=fhtpr0x36uLn04+Fzt46oxirCxNIC5Wxx6q7fqbcAyq8JeVtKv+gLMpaxiiEmr6L6j5Ki1Tqt1iK4i0AHKwefqWS1aENaZRnsR4XpooQGKgyrjXmhdXaTOcO6shZmOJ2618s2nK4yfQnA4FRPtP0tqUDioK7O2bmrq98Atj8Sz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rauIQL+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rauIQL+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C3C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747002593;
	bh=k2cAeGntp1ELMOo3Teywv416SDsNzh2m1Eb/qXoE8KU=;
	h=To:Subject:From:Date:From;
	b=rauIQL+Z3/DnMYJ6E7kT2j9E2qSXWU0vZExx6692NZSpnBfrhrVE2K0mXsIleVbv8
	 FsgQwB3I1vX+an2sMtowlaZgekKBo6WFjrytfisc+cJMTxMAbnryOlrlXQMjGxR/kz
	 OG5VJdryyE0wk65zdHRhNHvGz9ZH9wxTndjfNjg8kYTudTyIQ+Yu31KNnzo+8iq3Rr
	 vLeL6eztvmJbMeWVlNdGmOtzMn2QDfvOEl7aiKa3UM61hs0Hu3gozzg3dTnryOFiSt
	 zKJAMtCfmS5ku3/59Im+fQce/tpuEVmwg+gVHUTy/UWorQ4CtcbHY00o4ATRVRg60z
	 /VP8Nk9m/k63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92337C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700259359.3625.16238445427463783287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb67876d46aa2c97a980ec991200601b091b7754d4449c16abd63f315d3f9071
Date: Sun, 11 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747002593
