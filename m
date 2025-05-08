Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367E0214211
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746728994; cv=none; b=JlsbK4c30vVCbgjlU6at6FhjZ5RcmKDNgGlBZPSwP533qBypIHZaMSQfBXUWe1GJFaSRy++csylSeir6cMZhuUG7mINhke4S59hNG6nbH/jVfpjryz1Cok2Rlorgt8l50/8X9pY3b9iE9s5YAajq0zUX74oo3VFkXWFmZhDuIrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746728994; c=relaxed/simple;
	bh=tILeg7T5vdLjHHgyNzNUb+r9okpSzenrD5F17XP1v/A=;
	h=To:Subject:From:Message-Id:Date; b=s37uJsf15qe+niKrp0OMBSaOlAqTMiCqUkBRilSuxLte/1V+AccLAYWtXu5uEEffkVJQSz6TTPRq+F32IiA88PwvKq/iR8cgQQ5MO5zSlU0MBuMEeCxt4nbKMwkg8aiQqA67yZWkSOD+d+kmP14XaAGWfJ9gQHCywLmw4Q7iK+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mE+evl50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mE+evl50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53ECC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746728993;
	bh=tILeg7T5vdLjHHgyNzNUb+r9okpSzenrD5F17XP1v/A=;
	h=To:Subject:From:Date:From;
	b=mE+evl50Ypji/1qai6Hv0Xoaois4CyStChAT+6zqDjkscaZTi/zrzUBClGLVtcmuh
	 /Wcx5M67ypZKP5RIg/I+9ejVBvneFofNIUVL4TNioILSpsbG9D6fPKfmnztIPad1QH
	 tMYBh09of8E2MoHMvQwo6hrnMAkXZ48uZxNw90FiH2CSFprI+3ugobofmJSyCnuUJh
	 HvJZfluSEORMQJQOJTBsP1+usACAtLlB/3Vu7c0GNxGfHXd1w+HeJDB/c652UxwJnE
	 LBLBRVTgB9WGm5CQsyu1+ycdVzeKJnTyWG3fhPe3DwrleShInp7rTFHiSgeKmZhKLX
	 y7lwX6oVN0WQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B20C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672899358.31510.3903343293666315617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7439f70faa6746149a74b69cef6253300d92379936abb93fbf5da8130bb99de4
Date: Thu, 08 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746728993
