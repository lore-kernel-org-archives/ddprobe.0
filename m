Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF683BAD89
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781093134; cv=none; b=hdImuyHxgKPUbfi5ktV1gSDsZtrFnWYWTOBAcnEK4d+An0eD+B4A6AiN4gryG1iPDHQXACE9rqD7IBwFUHSt5bxHWNPfI1EXz5QKx5se7ukL6JkSES/aEfNmzeY3Rs3PAL9N7t8V024jZ9H0ap26JZAvH8IuhixBfPSL5ssVlek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781093134; c=relaxed/simple;
	bh=lNEFI21siMMl2EOZLUhb26+xNzyNouilbjpXwscfu0Q=;
	h=To:Subject:From:Message-Id:Date; b=NarnHsFgvMhAyxw8KOAUtZRvo2UE18qtogsA5jGV0mstwpDAu6eiaDPSUymoOFBZ4DkJ+oWubADKtD8yOM4D8HAGWeerKl3o7WuZrMkrqfE/heLMKVY00L36ZUmxVCVvpNtS0TmSUuDETCNgcLC01lATAN6utR9lZI5YNQCawBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqDxPHaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqDxPHaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C218EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781093133;
	bh=lNEFI21siMMl2EOZLUhb26+xNzyNouilbjpXwscfu0Q=;
	h=To:Subject:From:Date:From;
	b=lqDxPHawFkdtzulzFn9lERLrdVlGgonjRz5iAIuL8xkFa0xMM22MrMoI70trexcSe
	 OcW8n4eVYvgffa5+tR0c7T0qLF9jWw6xuTeTQCwAqbHnyjEK7xnBy08KCr0Qq5Bu6j
	 DiKzAk7Nc/nZ7k2jf/upuF8PJCydC36Urn1Fing4GFtLFRFVF30t9+iYYIobgCPrP1
	 wMRzr+xrrIeEaKPimBVw8z2eWUVr/KoCM77d+iOGJluuY6FLAc8KhddUicgCuKefH1
	 cHwI5YJUuEGsaMLNtSRg3xXbqtsIHumQ08xOLrR55aiSe1Y7KmsUBJ+gVX7kGsGHSj
	 jRDyUjMs+lLsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA80BCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109313368.1360.6914169996724110035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ba82663cc7c3624969a54797a17151bcffc801308b99f1dc5f549f5113718f
Date: Wed, 10 Jun 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781093133
