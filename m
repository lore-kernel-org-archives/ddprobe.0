Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7B2A935
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759718994; cv=none; b=RsNve6nbyME2EGVg6a80JJvcJdGlZZ7sXltbAUw/9CVPQH1z9IlvCd0ETYhfrSxzEG4GHD4hwNxezs2stKlEvzJsJmzL/F94bj4QbiL3Tv5k6ba9Hq3duaf8gM6aeGj33R1628QOTFmGXpHXQ8Ob9z30VMT7dy7lqMwW36VE42U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759718994; c=relaxed/simple;
	bh=LQtIy53THaXIZFHuWGphmdsFrEn0k090CixpMi93z9Y=;
	h=To:Subject:From:Message-Id:Date; b=gATKHLfh5F9YiMAVKU5PngarC/iasC4LFQU6tKlQMJEjF2V4etDvR0/loxgnPqzkiOcJ6HvPnXrbYVmngneaIfFr+UBNk+tfJCKdCTCIx1WiPVwbYASj+n+qCXspB7XZGCnCaBDrs465ZXlrmfCfZknNCp8rZoVmOVqmo3ORxVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igti39ZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igti39ZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53EDC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759718993;
	bh=LQtIy53THaXIZFHuWGphmdsFrEn0k090CixpMi93z9Y=;
	h=To:Subject:From:Date:From;
	b=igti39ZONqObsQL4NaZ0O0e/o7+RgnDX3vqHiPl6KvNJCHW/bm/wMg9e5bNIRueTj
	 O0s2TqrhdyKc/bEhK6K9EdhS7isEWACyTlThBzmS2OSGZ1ZQjNZV+cAMDUsvV7fWjf
	 uVYwqojlpUDbmAaG4kHDupEDRZVxuhqeGtVk/rUyLnZkBoIDaAStpkFYLNjKmB4pxw
	 2aWK2JBzeeJdX7o+Q2cECbOxAKpvIlfd1ldo41G5+U7ssgsuc2dRm1tO8RRFoy0lcM
	 PFcP7ImFso1xAbkiqt6lG5TTb6mbvGR2G480aNs5duQE7Dw1EA78A4eMuaO6WccaFV
	 jbUHrHmqklmMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F7CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971899357.6809.2290865388663201717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743d5d60e0c1df18a4ff2ee08324caed061aee73d0d4893f7e1700cab984ee3e
Date: Mon, 06 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759718993
