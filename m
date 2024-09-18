Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEAE60B8A
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726625154; cv=none; b=eN3x1v1gMRhGLb6kQbbEfCHTUmApFcnUpSy/mE2AcWjMQ1n10BX0GLDopMPGi/y1Ws4Knjii7SpD690JFeGPNocqmqybrm66NE0mQEAZa9d8jfIvgkST4MO/TwRakG4mPAqvBLYGLmQQTWoWtrvlU3rCxtc9RgDyzIeYSC233dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726625154; c=relaxed/simple;
	bh=WdzKCVKrEI5hByr76qX8IHdoP/+3XtRQEjGzMAW4GrI=;
	h=To:Subject:From:Message-Id:Date; b=JbXvyNaDlZ1zGTPR6y4BqESjw1578HuJYETrorYOZrwHWKaZQFLBE17aWeyy5S+R5Mq5X9Ln8TR2K6ZyJ/qP+J9qiV8oAd/wFDSvd5g1Gw/TBIcZRE8A3H6tVP86Z3fhPwtBO64CyY+mIRo0yOjdvMKhwWDVWub8cNuowF7uivs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9CjGd9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9CjGd9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9703C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726625153;
	bh=WdzKCVKrEI5hByr76qX8IHdoP/+3XtRQEjGzMAW4GrI=;
	h=To:Subject:From:Date:From;
	b=a9CjGd9cnXxTV0vX9lFSpqwVS5i53TllNNKBgA30BEunQq9jUY55jEWH69RlMU4VC
	 kT0CvSjejMTtHJ7Ju6IpqCAXscMJzxG8HYeM7OfijPL9OnV3nBsnb/2LTapya/wt5O
	 AhCYalnVna9qHP/Rktntl8wbl2ZK2SFwkrgRA7C3ANWyCpFRRPjgzDurOWvdDQ9GVy
	 b77uQ7G25oXvO34EQwiwayd6AEX6jgR3je9eRgR8TARUpu2n9kinnt8R3m/cpKKYDT
	 P3vw35pov71k2b3ilILSNcGMcTxWhyykOAmf5uwZuaKR+ILaAmHgTgKfCCApQFQHoC
	 NF0lddBEncc6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE8ECAC5B2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172662515361.14834.16457633206900169190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469cf1feed9c176314cef6b6488ac7cb501685f5faac654ab6828e2800923976
Date: Wed, 18 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726625153
