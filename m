Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCDA2DF128
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791717034; cv=none; b=XmUo35Xvo3kRiFDhxRwnbbEVtnjxb2zzkSNYohEOjiIGsRKD0d8crfI7+M4VdH9mHpCc3PqNMYpOiWKvOfhBx88pA6++q/+0anSWnxuayHy38Evp49gLt9bRKk4r17bAABYoGDPTeGP9dr4SDd6CedWhEEzEHXJ8U6hdrRqAbE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791717034; c=relaxed/simple;
	bh=f7AwdYBQvcs+l8K6Oo6Z2E/ZyEGx0OZRfnAl52qX+1M=;
	h=To:Subject:From:Message-Id:Date; b=h7nYI3IW69aaNwy6MyxAK77PuUiMc9LV2js0IopfdaLmb2G9yRxGlkJD2OR3HD2YYebCDd7vbTHA29DjMovsZ820T1WcaJhrAz6vNaG2NaAjAu4EKwmwWw+xDk/18jGrX63xQYj8JKmlVEMzMJBmTpkRm4/tbjOjXIRy5JeVznU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAZh3OBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAZh3OBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6866C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791717033;
	bh=f7AwdYBQvcs+l8K6Oo6Z2E/ZyEGx0OZRfnAl52qX+1M=;
	h=To:Subject:From:Date:From;
	b=bAZh3OBtGo5lhP34BR2PWriYUgSErA4XxksrhVNCMLTBqofh2bnuTD928HPDb5j2u
	 jZeKNH1xw1w+9CM0TqTRRZPSDUYGdNWQmjs90ypNdIOX1d5WN+0h/Agfwl11w7f8hH
	 M+vSWlAS/xRA37o0kDVURs3K+gOA8hXIFBotCvzIRQfuV4tK0ur3wVSSW5Fsvde92g
	 qmvxyyA3a9u+JJDQ2IDZ1rJi/tlDzv2uBsrTwQQ/QWYR0+4SE9bc2kl2ytxwoXpR00
	 qwOFGV+o8FcnWY7T5K+UOhm/ZFz2ao7/iKnwIMAXkh4NT8zOtRWbX7oMHTvYREVFyA
	 6Hv6rsv7cjPwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED67CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171703368.25576.7428073798100531952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302398cc930ff898d8ad26b3ce241f80fadf2b6892bceaff5487ecf62cb879cb
Date: Sun, 11 Oct 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791717033
