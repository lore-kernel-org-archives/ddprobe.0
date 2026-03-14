Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F1923AB8D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773479093; cv=none; b=gpe4SHJ/GwkRSkz2UpDpEZxKMTRoq4t25XMYjUAxZuZjtmxnQgrZh8ac4yZbJ8fJYjOd1hnH3HLyIGKInr4JHZ1vGRTfbS0O7lXonGR5phlvjjCnrGZA+1DRQ/qI1Q4lVHzFlQVfBHKGERdILt3rLdcbYMV+5bbjsC07HInAD/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773479093; c=relaxed/simple;
	bh=B5c313MFmOj9shXX6YEDs2Fa31nZWU4rXhXDyADfXWw=;
	h=To:Subject:From:Message-Id:Date; b=nnT9DZphqtdqlNDzee0pLm0xq9/8Mh68t9tlI1rQVL1ciwkmxPOI4Yx2yN0YNqLIzxygv1pGvNVJgIElAnTqngV5JH+zEfbV9nSHYLcd+2NbmHAg5NRf4pyhh3daUXwwpKsxuNfEOx5Ku8Qab90nzNPH9gUv9ZNUHRKFwrEqcmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/h6oJRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/h6oJRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59D4C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773479093;
	bh=B5c313MFmOj9shXX6YEDs2Fa31nZWU4rXhXDyADfXWw=;
	h=To:Subject:From:Date:From;
	b=p/h6oJRA2B39HfPMgGfF2lVFcT+6RGLOuIk3/rqYM1u34Z9QIwapMPWiyNU4ci013
	 +/o47SOerg777SHTlHTUQh7Eki/MSkWzJpBwEU88wicpCheBXkIbx6fP6ZSxPIlG3a
	 3Olupe/4DIFClJQ7s65wNE9XI1XcqVXxuRSHYNdTplkValvhF0TsaNGL03upiiwqRE
	 aLZ8WB2ieQG1LTtZlgBOB3Kw5fOPPcY49raUvVaXE3hnb/AXiGswHkqtymYQR8+Bgt
	 oNvaCvtJgQwfN5iEDiRz0i9+D43fPDpbB67Z4eL5uqFlcCgB9zQBYcA2HeGMHosdV6
	 r4+w/0NA9ud6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A4107BCF8
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177347909359.26302.10012265784583169008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8560b37aafc4dc32cc4f866b9050f0ea2f0c5727a8c53549f6e1adfa9bb1562
Date: Sat, 14 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773479093
