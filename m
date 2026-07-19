Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EA7346ACD
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784462914; cv=none; b=lF1A7fSTUqZFGsvMEIis7IfQ+pjQfqq98JY+RpBzCk+KJ/i68KQqhpIH3UkVkS/GcW+kWQEasWYuBC/niIVg2gFol7/2BachnxyM8cE+8yTABlJbKj8vY8N8pV5Ztf9U/JvDpD1gYhDfZvf0528GBsrC3d6HtTEzMIobBUd5yMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784462914; c=relaxed/simple;
	bh=5yrlo5hJnudsmaQOKGphFN3zPj1aUl4VkknPtKG2/0M=;
	h=To:Subject:From:Message-Id:Date; b=eyX1T+W3CuC2zo+g7RPrlT6iheSulvNKyw3GVWjcIEp3r10zlUgT2hcP6c8aO2j4ferAUIdqAXTa+lhuGq1HmLZFnI/QqmPay+moCqa3pEL+YaHvhRjZpeAMzXzzeovYkwzpELdjrWa0DdatU4JY0LM7wzdt/qr+zbO+SxSYOMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPeaVhFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPeaVhFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF646C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784462913;
	bh=5yrlo5hJnudsmaQOKGphFN3zPj1aUl4VkknPtKG2/0M=;
	h=To:Subject:From:Date:From;
	b=BPeaVhFWyuClAfZKSwxhvbpkcSPMhwYhvy+VwT5FYSw/ZAxQeyUt6ZR7MqlyPQJX9
	 l/7f3NxpVOOgIw7lydItMhfucQSzcFopFJoK6Cl0B93XRHiYm9LfKx/HZZuoxk4PVS
	 /iKeJ+jwAtGU3ppfp1vGU+BNn8bIar0GAQblAp7N0Td3chlNB11hUAECYgNRHbSygb
	 QZngMPO0gaAZgaOVYmsQhCSqgQD38Ygv8BpX0qa0zWLkM5JUXVvT4fy/tY2wRLOlxI
	 +7g36E2g0gEmKPs5HerPURxmtkDrj9IMzR0NnWWBYMlMChgYvGrs68ynEpIm85FS3h
	 lifOPWcd59Q3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB25C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446291368.28882.7446281606597679955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d48f0f2b07c8ee90539e584c9093abff2c0a9e68cf813db882bb2cdc59bb7f
Date: Sun, 19 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784462913
