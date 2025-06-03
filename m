Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AAA1F63D9
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748936394; cv=none; b=MRTHsYCJChGIUiFDOOvpE0cGJaPhyEEmEvccMlyooiHGfeIqMdd13se+gtV53fQPBY1wX64VYAl7HzosZTtk/p7syh3a6CU4/xlHJPkdcs9SZQ01pDot2KoPttxXttr5hIdjOya8s0KsAdzHN+gvv7TKNOv06/HNTgvYeXy1mt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748936394; c=relaxed/simple;
	bh=ippXgmbYaDX2n1wYQ3cVl+u8HVMfNF4vg9Nu6F3Hcq4=;
	h=To:Subject:From:Message-Id:Date; b=YLnOIabqFKRxmanZIKbD9ABDPtVnj3wh2HJ8CnMUzl83hsVadnk+mZcKPezaLaeqtqDOK+BE5zLqU1nTY196MkSC6cAtIpfruRw94CBc1HRP6Xitpd0rcwsSXfHkgQjPrc+VwGGWBn4jc89UKBD8KQ03EBKAOMFZ2RT2d396Pdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpGxNG4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpGxNG4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA746C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748936393;
	bh=ippXgmbYaDX2n1wYQ3cVl+u8HVMfNF4vg9Nu6F3Hcq4=;
	h=To:Subject:From:Date:From;
	b=YpGxNG4d1rIZE+7GJQnmsb+ireucDBzu49Gl+ilGx2vfJlxMFT5nP3Ls/rGm29BWL
	 zIt6naw1pFRHbn2yz5xwnoH+rOc6cjGraSTJfG7p3AEkc++aaJV4j1EjP5ScczyFPy
	 v0SBK3VhLHdRASpJ4suCWu9mi4H2tsYWhDCAz0eI1G56Ozn7aZQnFeeq89xlUJyPdP
	 WKRFV50QHwWxnDMqlo37f2ajiftHltTRXuj29fLSQ32pBHhPZQ+VUrqrikJgDPPlKm
	 StztKwmeMvCFZHlDCAzplPuA3uFUrvd9Y90JD5TAjPoAX9pr4iNoHn0IEmb4rCcFBQ
	 51j2FTskNfv3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968FFC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893639360.28629.4914697050901242642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e20a13de76121b42d79639150feb9389c709922b72c7876035d9d6a62bfe58
Date: Tue, 03 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748936393
