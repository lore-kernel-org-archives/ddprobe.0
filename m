Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76A02836BB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744415393; cv=none; b=tbkZddZ4nig4G+oR2k9BMNXb5wLYG53Lei7npW24INeJLN6EfdGQ5ga2KAr06OSvcNkVioiE+p3NaarAM5CgGamGw5o3toeAe/6RST0iQtGCrEbEP0C5wILvNLtmtSL0xI8DajPYYvUGEe7Icli8TGOFcYcLnUUd3HL9MTF4o+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744415393; c=relaxed/simple;
	bh=7GYjDkEnkxqimFvfX1Vm13hb16qsSerjKJTHVsVv3xU=;
	h=To:Subject:From:Message-Id:Date; b=GT0GIIKjMSHTYKCsoHT/FMpvGKpl0p5m5YyegCspz7P4L6ir04Ps7NruAiSF54m9aIwzemIoktB0MKu8uG5vpFzFA9lXuOHxa7p9KW3CohBZfwsX9c9L1bsaUeQhpT1RnwBQq4cNAzPqLxZ2sA78vulfaS87HlfOAploSnIovfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/KCE802; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/KCE802"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB32CC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744415393;
	bh=7GYjDkEnkxqimFvfX1Vm13hb16qsSerjKJTHVsVv3xU=;
	h=To:Subject:From:Date:From;
	b=j/KCE802fNa/PUkatoN3rd4cp0KAzyePHPzBoLauPKsXzN5ZPDl25iOjiOW6cEcK3
	 vzUtlE0MM1WUkq5mg/oScdJRnM5tjlnTmSCeaQp55JWy8w6P3mtYG8FwRDsHJdFTCM
	 O06Cp9gJNGHWghjfGZfMr401+9Gn6dBWiUtMo+mSCXknNbMGT1mIY1i1AOrBR7dC91
	 p6ju1kmmY8UjL1BGk9NJp4JKHPtMzArSLGkXsi+jxQys5Gmhd9FUb+NW42/sPq2S7P
	 UtiY6CpIuSE55r4RcxFnwmOozx7TrPdCyKhC0RE9AV90rWzR8s/B6uydBnZF/fMKhz
	 db+z8tc9wwVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A4C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441539359.15618.11084735911947175582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae40cc04804a33b33eb07cbe1ca7df16981008ca60c46631d1f9e1dddba7ac9
Date: Fri, 11 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744415393
