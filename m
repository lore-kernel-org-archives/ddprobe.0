Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DE414265
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717962443; cv=none; b=BXcJiI9jfkmwwB0HKfHqDzz81C9HMCRPS1/TiW8J9kMix6kLFhOAcf+PnTzZpNswClP5Uo+2r7R+9fskB48VRIHyegOuEANxwt7uQR3R/K/Re9ck9Wrs4cUxNjLJIwC+vf4LdC7UG0vYY4BYFirlf6N40vXJr088ZsX2oAng72s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717962443; c=relaxed/simple;
	bh=qxhagszvvqnzTSTOIqWeH4KjA6U8wob8M8eHal3ijJw=;
	h=To:Subject:From:Message-Id:Date; b=CUGP/T3S+yT78uWHw7f97Ne/MnnbE1GBzWT6/dTy/4MT0bIBDDTmtInK42N/72wTtoR1E59TP4EY1Sjx+rEE8650RV6oWgdZ8qyCrD066/TNynqzmzNOSQkSPGugUsTvf95Te+lbHWh2zCXEYJ4IqXqSIKp6SDbXKXMHjAfouXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcWM8BBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcWM8BBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC46AC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717962442;
	bh=qxhagszvvqnzTSTOIqWeH4KjA6U8wob8M8eHal3ijJw=;
	h=To:Subject:From:Date:From;
	b=kcWM8BBIImh62c/jEZaD7yxVRou79Tk0TBJeyDBvjLkBbmvJhdaFzu0yi5ldJMhAt
	 UyC4p+EO3KA0TTo9zYOBEkXCcCrl+itJVAiZQpzecnxnvfn47HkWCElv8Fy0WQEax8
	 zhu7RMW2RjgtR2OLOP5VsNDUmBTCKcctTZQCVgdCS3396FvJl+izNFq1RoSUks8eXb
	 YWCA54treL1yYEfM4NJr6nLkghmVSS9P/QiE7cxGVbaDx905W1mGFru1ahLU4f/w7+
	 OO9F3iMbRUTXlket0J1Wtz1m4ZAXWuLsEimidspfnpUdUqUwwgSSlVDOfjp7MIHPgg
	 XR7yOa5Muq88Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45F7C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796244276.3573.10714074381989064182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5b534cc0f9edafb94d1e8e9c2c159b79db70c65045a871ed71abf000bff00b
Date: Sun, 09 Jun 2024 19:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717962442
