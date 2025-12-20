Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0F3136349
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766270634; cv=none; b=l07LkBGNNDFf1quX5vR9hs2HJ2d/LV4WlheXxqE3k/xjh1b79sLpV4Xo1Kl4GT9n/30tLD0lupOrg4aZpjcUEhHfZpB2WZyemI+0D7iIR/cIXFh9t/7JPEZA5mJ352HKy9c4EzhGGgb9cnzpRbZm/78FIXm/8D3feyDFQNcgBq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766270634; c=relaxed/simple;
	bh=540VFuagSgIDAinceGkDAmojYHZII4mFDipitGyv48g=;
	h=To:Subject:From:Message-Id:Date; b=CeAox/h4mGvSxVoM5hsT8bUJq/C8Okb2dhnYuKkE52Onby8wr/ByWmFh5D4XHwwWSwX79t96unxJ5Sz1FqyT4er70S34A5tkJDa9CEOQfwkzZ1w7dHmPuMd0Es70UfhjDyWtGf/daAhHhWBB7H63GetiywUzgO1G0Oi9oZRiG9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHqlDT3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHqlDT3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8563C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766270633;
	bh=540VFuagSgIDAinceGkDAmojYHZII4mFDipitGyv48g=;
	h=To:Subject:From:Date:From;
	b=BHqlDT3Mgz7Q1ySn4S1YRa9vdaCb7ko2jZ2N5KaAtF5r/E8+sksmY5exQaLOLqip7
	 eznDocYw8oVnoJNkVywN6QCU1IrbjTB4HgIywLgdPkBNJMC0SnjxfbGK9BvAPEj9Gm
	 vLIfyJIC0Ux4kJ9F6N5Tuam+ndHDAzqckuqjg2dgIP4ut85e4dTqAXWLdyJFVFZ/e0
	 DzkLwhbvcrY3Kiidg2UgkLixG34Mdk9wCEh4BWoiWvTclsU5YRGpoXzij3FomJgvaY
	 9r4BMODm0xb8+OjsuZqN+yzAcaM0gsj9YURHKzUHus0+mEJwMbrMeUBKvv6RoAPG5K
	 XW+V2KLh7sZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E6AE6748B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627063358.6157.11860901869048365291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8564ff54639022e933e72e5209eebd3eec2b3a07effa0023c143b0d2f29a3f2e
Date: Sat, 20 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766270633
