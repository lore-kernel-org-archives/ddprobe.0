Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436A3367
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746127794; cv=none; b=ga98nMTTIOtOwinVTbcaNliuBlaAzWjKfoXxxnAdivTjcM4FfUXQ8cnEf2VDdAzswrX3/p0RibrmFdfnFcoHnF3VCukSM0XFSBdkKYKqblZ/cvxGDvS1wOcfk96DoMf6CkAZ6OgGIJkKgDlyHxVkw2dNNkH/QdlEnTlYm+XVbFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746127794; c=relaxed/simple;
	bh=InFjjYblrRoVOKd30fSAoFUmat2mh+0kkBTgtFvXPbw=;
	h=To:Subject:From:Message-Id:Date; b=cND1vvSirxRIcYPgjPq8Ck53V8zuvRSTT2sqPok+l0pbpvK9Afjqer9byTS3pTSZCLvwZS4icKlY4tXwgxbU1qOSRT3XIrQNfLYIOcziMp3pNdtN2d4Y3B8YA0VnAmxOav6esmSANB6AiT3HOCWPiC2CzCMBpA1LMuR5QiNy9d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESyJm3CM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESyJm3CM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C369FC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746127793;
	bh=InFjjYblrRoVOKd30fSAoFUmat2mh+0kkBTgtFvXPbw=;
	h=To:Subject:From:Date:From;
	b=ESyJm3CMO86wQ9Cr8bFtgx0Th+84M4QCXU+OsNoZ7AHAuzbVqJ3PQ1dPcexaNxlEV
	 iqlUrgQfJoIRVZzsBWf17T9FG07AKlLrY6URAl2ME3BTi9i6aVPw6am1fEuwp1g4cn
	 vEkmW24q2GresQfuUOqZ3PMqBMCLGZnA15aUeg8O/l8BCmOdcPqHdlOn2+GLwsopeQ
	 Dv9jYbvr0XUK6XAC4aOTaTXxm3QTZsnpg2pirG/VMjgww+Ww5Aqlz+xsRy/rWmevkD
	 X4Sc/6wq2htbqoNBUzzIopb8y/KBJvrpH0knXTUM1GlTeIRrJps6Yar03mzgNwMVSY
	 PB4ko8IGb9i0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A7DC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612779361.12180.9873707225139711962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3ae1e03151a562e29b500754fb4a812e605b20a6a8ef7007b1d87b72048ad7
Date: Thu, 01 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746127793
