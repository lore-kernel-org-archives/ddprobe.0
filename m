Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359BE12F5A5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748807396; cv=none; b=m/Na+aT8ScvFEHmec4rW07Kroz7RzZxt4/Sou6RF6nSX/81wQ3IeGqmW6xfm7ujYajJeYl5yzvkMqQqQTrSElFj6GZanmzvtdlClOUQ4qZevQ1Spw9cuSyhjowtmDms5amKJmr0/6nE7N/cOSD2JyAz9b0LyBCwEjUaECrCgxP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748807396; c=relaxed/simple;
	bh=28I9JMGPGezT7N6uQ4e2jJ3DKnizZWdfNm0izGjNlew=;
	h=To:Subject:From:Message-Id:Date; b=HQ233i0J0VYX8BKRATgjczaKvRZz5vGRW5xL5xcIJcjiqYz112YCChy1juUeclcedbpSv72+rWb13iGnzD9rTbaxv2zSunMoyLFYaGpPmXVvgFiZlX1JS0nYuEnSq4jtiyHoyFFLaHaghDqiHiRWmoChVgess4ITipXVy0hMNdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJJaBeIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJJaBeIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9B4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748807393;
	bh=28I9JMGPGezT7N6uQ4e2jJ3DKnizZWdfNm0izGjNlew=;
	h=To:Subject:From:Date:From;
	b=FJJaBeIvc068y6mBOnmruazMLv6oA5oNhF+Wv/5xe9yF3dp8eqyKNzVxuAJYsbiDk
	 gnxdFX6ksS4SzKI82sqyDFSAao6PssvuyOcDxLliI63kZNT8mT4i6M/qb9SqN1L0Le
	 +Jb5AmZt03LFon1CFcDyL6H04XgZDuR0UhjZ1mjfbe93jIa1p78d6VxTBzLGZxoZHh
	 +3tefAd9uU/DiKk3ByNzOk234yv79jEn7hxfyhtZX2j8tETKqvpt8vs1tR1sxUux3A
	 ZFlMP0xX9+6limlBNeENwuzdtMTagLR4ZaL1AjS7RCn2Yzi1ffpKjXEytJe96CXhgB
	 d7bCSCrrmMHsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96616C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880739359.7016.7969462449616566691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe34f14a566d208cf8bed46bad2c06743fc4191aebe3d290cd2de1094e8be194
Date: Sun, 01 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748807393
