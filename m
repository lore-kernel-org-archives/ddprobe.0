Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032303375D7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760545795; cv=none; b=dsh9bgRdJADWGpmLUvsFipzQJbbfWwbvJj39qaPNN+g93/wGxMr7pzy3rhhYoaO7WS+Kbe6/MafTDAXFGBhELnyKHZ7BBggUXJHaETVaQV7XO62AJdzrneBJJ5pwpBagMMVwL7az44QCtGhVQ9Vv0NTdg/MjSSRdu5bEX2haSZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760545795; c=relaxed/simple;
	bh=YysDcjWuqJHhlVsp2m4voeL73XVsOxKIhkwztAiM1nU=;
	h=To:Subject:From:Message-Id:Date; b=rIKZds7yigYIPJfO+C8OHevgiAcJrUTpECaAVmbOhu/A4Y21zwOnAdjE6eKN4or+Fv++ihqb9MpR7pung+A+ZunAWn5fHcUHkkIjKxkO6FbK/2S8xQZAzuXM/w9fMN5IIfehOhJcKlYTbRGfedxa7Rm93d5iYNtK9xoOsfVijUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMFMbtno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMFMbtno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8A5C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760545793;
	bh=YysDcjWuqJHhlVsp2m4voeL73XVsOxKIhkwztAiM1nU=;
	h=To:Subject:From:Date:From;
	b=SMFMbtno5+p87s6f56crrw16QGLnysihaSQyCrRuIDHmSmxFDC6gI/t9l29Qh4pJZ
	 /gHD2MX9S/AouGl82N8DHkXgui1bSrW0iBQTq1KVzk4P8MEVSKpHSMRhyEyc6Zt4n+
	 0oOVOpdowdSYaz4nRCQFTX3faFx2hYTvEkg1mTFe0xo5GgV+oZJPVdJZCOSBRUQa51
	 mFGz0AmAW8YU/stpUNgI65D/+xv6uXzsrmnXakGvk9CHl4P8F0+rrKZPA+TljGlhSe
	 FLmQsy9p42DPjH60jMSkzcJXIGGMeeAB5uJ4mnfH67/I19U05+pnIyGw9u+1jnU2IM
	 A+LpLumIJQldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED9CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176054579358.15379.13133570389457851102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dfc81cac2d7b825d4e5ac7126a93f28a7d9dfd96aeb21a2aba219c096f0f44
Date: Wed, 15 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760545793
