Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507532A1D3
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716647063; cv=none; b=r2SzaCkiethKBdq5qJMFlbACHngsOjKf9EaXEw2Yh+aKCq9xM9WsSX7P5pI2v4kbAt7vpXKk/QKs5KnsMwtHGpgj+MU34L0dQDezjOGheiV2L22atCnoj7HAD2x+MqOHmcLVYZFqJ2i0sBQA50f+Y9UfexBAUMqQJwriboGF8Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716647063; c=relaxed/simple;
	bh=G6HpbMfHOIkxyrAbZDhFfw8N57P+MFWaCZASfka7pR4=;
	h=To:Subject:From:Message-Id:Date; b=G8A8fr3IgozbN6l2/h8aJkRRpN3AxF0AkGb+xj8x7nS8h0Usz+XEuZgMe5o6Vr63iQLVCLBYc+IdUZf4AHA8kszG9n1gG/QZveISw0L4fLjUbhsfYnFGSmUNvSg4g+OdR8sEBL+i8hGq/y5cNeNc9oiOZYqSB7udoGIPfTBBQD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DiGTPdIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DiGTPdIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD2FC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716647062;
	bh=G6HpbMfHOIkxyrAbZDhFfw8N57P+MFWaCZASfka7pR4=;
	h=To:Subject:From:Date:From;
	b=DiGTPdIlUu4Do2B7w1C+REwuV712cBBbJ647wbYgS1FpYOYisY/EaY7BBX1KnQQwL
	 DWJWQxGKum5eMNSdTb1eL3TmwIc3fkHcFjz/3SSgozEhveEOkqFE+KaqQSdNgP9Kzn
	 zD6db23AIE2hDUL/dUM+umfbhN1GHl9W4IK8P7cp37xXk9TSfsm8T1btMENMrOzOzK
	 WA+rt9pwUu1AOM7N5L5gg+lDNS4xPil/wovY4wNAqpF5ZFI27FP/lE3FZ/df69T0As
	 jCpMeRqzBDf3eY7C0/NxVfaVjY3Wq7xRYTFKBb+BPoG5+kD8wVZFXLi/JuvkLOiMxn
	 118+joxoAVRjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B1FC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664706276.8916.13987100811674358634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3954d38d940e9b95c7dff5a67458eccc15fab4f49cb24054a6fef2fc693c657a
Date: Sat, 25 May 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716647062
