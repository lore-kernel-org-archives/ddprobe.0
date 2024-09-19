Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333DC14277
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726710954; cv=none; b=bTtRithTuVrMgL7vQ7F4gHNLKOZyUg1O6iupceJGdHUGpZo60RzjRDqybvvXHCDGQvzYQAbk5Q0MR6sE60ZdOqQ8mFY4ne0cMb1rAoBmkwPj+5/erio4SzISFChM1cmJKu4HBOXYEWmkMWvR9gamn/h4J65ZRyOT8KJjV8J2jV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726710954; c=relaxed/simple;
	bh=So5tugsmn5Ny//9Ep7xdNG21VZKURVIPrrElTVcA3fc=;
	h=To:Subject:From:Message-Id:Date; b=KfNiay+mepJc8Rz/iLLZOf8Djb3AelkqdXApYXS0OnLizwdOBcVDaCFeoSirWUx/LXimyw5jUJJ+O9WE+hGu+Ktq/wduRLH6svMLaqAsFOv59aViFVDDkGIDDlC06LRFJQshHWZhCXujVHOEqM/14tCPH04KPIGNSBucIgsqGec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxV2q8bL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxV2q8bL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB51C4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726710953;
	bh=So5tugsmn5Ny//9Ep7xdNG21VZKURVIPrrElTVcA3fc=;
	h=To:Subject:From:Date:From;
	b=bxV2q8bLgpXg0leSTcWulZewoeNuCrQYwORsghw6c/nEc5LzOoB7Xsk3+ou7CsnQZ
	 pWY9EqdOsLVim/znNazA344lR1Be2QpT7boTkmzgc7fHaOKb8wr40s/uCeh8QODn/X
	 zCGYfL8Mh5MZeCauPvsFqw3haaSdD3+IRQu4bjQHbT+Orf+0JNz2kJGvhhT/HTXAhq
	 6nNutxkcIO29v7dDWMmeYM2vtOwdMwBIepCFj0s1DIvm5Ig+mq+bjrqotGm8YaSEie
	 lXmxMxj3GvvP5UF6YihGHb8D1pH8tJFkcjMoNxiLqb+CcjtzNDv4+5s155C88LAILZ
	 Zg6UYJAa1ugBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93700CDD566
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172671095357.1920.4079450131503930289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bf3cf34e4a24e784b4b6e272274d02c75afebad42fc8c0f80ad2b3e4a05220
Date: Thu, 19 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726710953
