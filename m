Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162682222B7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768716834; cv=none; b=eYkklxLQikH3zJdES1BRcV7bCnxSGSz0Cl6YMykYBIzmFCc7z59AkxaMDg/3SoXYqB/oQ2LHikI8Pkc+4siZs+Rma/l+LV3GjrT5vY57LTBBB6E0Sxbacjadm9OvLPWAwiHfnlUHgAaBhyEXE/EVX7ueZ1F/lPefNlzuzeQJKqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768716834; c=relaxed/simple;
	bh=PA/34K+B0vQyb44pueOOokuRr70aGJw9agOi5NxZM+M=;
	h=To:Subject:From:Message-Id:Date; b=K2PQwIPGNjemn+YeDFp6+F4xHP04VYPOtg1KYuB6ucVcFNEooqj/RFD35phDyHpCj4Jh2+9WU9HdQyccrugyRW6BK/SVGNf6Jpopf1f9ugyng2/TLgZtH3TrZbC67H+8KvE0RG+4Jc72c71TzmnzMkNHsCFg3hHtvZ1NCX9NlZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCT1mG9g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCT1mG9g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13EEC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768716833;
	bh=PA/34K+B0vQyb44pueOOokuRr70aGJw9agOi5NxZM+M=;
	h=To:Subject:From:Date:From;
	b=cCT1mG9gRGfpQ2CNXNqcubSOkw0foBHqA3E0ISfSVE7BxXyZ9NqDhvBw5W5+48mNK
	 I8S4xXYANmifSC9cKUkqMWyPnSUYoD3YTTZ7029IWk0znfDMmnXLMXgORGcqMpVukZ
	 3BTSbGT11+kpSb1GlTA6VBnhUEi5FUVIeaaeEWTcdTj9WmsIIXHu0CRetnNxG5STw7
	 xnQJLZJJxsue053JBrKhco3B/GJWef+ToW/gVYK12d3oZgY6ZSRYgDrvigbq7RYr+9
	 vkE+FsF98L5/E7qcNOebpOQ9biL/jzknm7Y4PzWu4fJClYqwHQAcMzgYOggnYYiauB
	 QT0y5t3cU36Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90912D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871683358.10807.6955027151414581436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245b16210bb5780437dc6a65d98da3c8a894c01867bd43c5433c8b245707a00e
Date: Sun, 18 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768716833
