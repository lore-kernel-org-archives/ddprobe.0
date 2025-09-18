Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863A2EBDD9
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758181194; cv=none; b=TOuQHpfH+Aj0DBca85lMb4m07sxJu+iZAaBs7LEWhnc+rfC8rff+mWUymqBLintCRYZrmY4TX1tJfFb/HCa9vOd7F3fS1IX/ZYZ0Amljsxk6JF0UuQaORg1zcLHOPEy4Wd1/KdK3Km9f5AIKCyE5dPZhzuEPZLdanPEDNQ7Xp7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758181194; c=relaxed/simple;
	bh=HH+LgPGDQyDF3EFJ7Ne13dtlb7cZG7cR1dgGOAA+1ag=;
	h=To:Subject:From:Message-Id:Date; b=uUjuMN7sNwT9vA2LmScTMBDc6wDrW7yOjb/81JLCgSGRpunso8xsthilKNr9zncZEK2FOAXYNp/15Og2gf3RhjLyrWR+qNlb/ahqL90zMh7WFI7I9xpUhpA29bsPF7nSwM7Cf5Nf9dTUJ61yDmCPfHhmdfUC24RSr009RT96pP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujPIAk/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujPIAk/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7233C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758181193;
	bh=HH+LgPGDQyDF3EFJ7Ne13dtlb7cZG7cR1dgGOAA+1ag=;
	h=To:Subject:From:Date:From;
	b=ujPIAk/efz5F6KfT3AK9hHTHlqES9B9OabpF/QlTz8Bd/ZP1umYN0EG7bIIrGT5z5
	 MF3woqP5xCc2czl4DUoi2y+l0DQI/hHTLZZJzO7kF63tomgQ2rdYcXq5LX21gNCzkl
	 xdvBdSLT5LKyVYXQM5wMXXqm65K/ycLvgqHv4hfNVQWLen/v+tJ19qmmcHW8k8EjaC
	 7qv6Jd2LkkxbKt0ekKT8O8gp5nJzr6hdLXCWfWeS68zoqhM5AV9qwBUbCi8vPF4hpH
	 QAUok5dWeMD8TUMaFXhpreZquop1BXYismzneh5zLOgD7iGvEuXZ7whKcWswgESVIS
	 er1Dpaw1JxxjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2CCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818119359.7452.2217894232609819257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01dfb88468d13c23d319a0a5e78b256ed4a77176357c5ba56353007f0f403c7
Date: Thu, 18 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758181193
