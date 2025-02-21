Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3503B1EBA0C
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740167334; cv=none; b=kmS2A9rvk/vRRWaOR5RXERFLC1dC4M75307PYAXzls413CKakKlmkGnSZT+EzwpQRLHSiqwJz9Uv/j5WJ4OAMTP8UAFh7LW/yl+R6H4LoGQY8Ly39HpdDUKuc/UKnXtefKTUpDO1iWtpqy5qWcp52xhlndxwe851lTCEifpIVdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740167334; c=relaxed/simple;
	bh=Y4SwqswJn0kZjA7I67Zu+FCGfEzwc56wFOIzkiUTplM=;
	h=To:Subject:From:Message-Id:Date; b=hT2IMqHOYq0GAXui0vx9Dr+aF1uyDo9+YaHinyJqmOQenBjDs+J2p73ayf58zCvbZRGow36vHv/JPZ6mZGnjHvUQkHNUxwAthIRV4SEeet2QRm1gnKkEcmcfn/80d+pVSBLPRYmc3UkmfY8ZYz/Xc2p1APpZL5xxjmwnkV20JXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iS2bHPP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iS2bHPP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492AC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740167333;
	bh=Y4SwqswJn0kZjA7I67Zu+FCGfEzwc56wFOIzkiUTplM=;
	h=To:Subject:From:Date:From;
	b=iS2bHPP1FUILcmN/B/yS9Gx3VC1Ii3/6g3hdtpWFXLn2wOyC3yFySHGw57AUbsO7h
	 e7ut0IhGctk3wvn+U76mSf/VMAGnKGAq1edCqswHEfLphCbsFxEjnfjW/S4YYDqQES
	 fuC7CSUbln/3x3zklogyOKkHblova1EWUV+WrfmGHqqA3i1MhFMqsnW4k2oMF6NhWz
	 483mn+XFZFUIZaw6oATKGKxayC5ck5yRJ+rVkzpveKYHknP3q1NXG+603HgiJXiI67
	 nXroXKQ1slYJ6ositRzcasrqghOrX3viHDa2R18X+YLHVBRuC9ix48gGs32fGoXXBs
	 j3Y0Zm8gWFuUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF80C021B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174016733358.30124.13439320659959094873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbbd1149ec95b6db9277e9de03ea526a95c1214cd99f1300ac0737687ba0280
Date: Fri, 21 Feb 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740167333
