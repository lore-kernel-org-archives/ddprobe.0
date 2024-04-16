Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686408485
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713240563; cv=none; b=Avy03XtshJV4rywUWU2QUJpkDM/A4satNCaRZYaE7rsDkKEKfaV9Qmz/YrhCgycKysy9My5ZzyTDrVhkmEfGC3vWOhKWXT6y9Tba3EyqY4fFO1DLqq74p2/zLWNGOtlYU0TU+YyukwEaZfnQkmWFLYPgi5/b8zFsa9TxRZNVONI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713240563; c=relaxed/simple;
	bh=WXb1tEuZV/PFaVHoms8oml87ytNmDlc/OiTaciEEV1U=;
	h=To:Subject:From:Message-Id:Date; b=mXYCit4cMiKnHYBlrcQXHDR5N0TQ+UcCS9zSKadrM4ToBLwDni0rdSm1U5PbyJq+dWeKVCWcR1IazRI39Han3FON06pboVKJ0pKCJY22ajR6eTwZdbRYSVxs7AZ+LSgTbdtRHp5jcBm+vjJPneinFWIFlABUV9ZbqG7bMQRrdDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFd1n8az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFd1n8az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD034C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713240562;
	bh=WXb1tEuZV/PFaVHoms8oml87ytNmDlc/OiTaciEEV1U=;
	h=To:Subject:From:Date:From;
	b=dFd1n8az2XAyhBy2LQkdI/jBrVCsiJfUS1krLUrfIJVOj9xvSDnvacGBpi0nuZqvi
	 YCpUXQdxCR3X8dmoB5uYxMKYB4WH5eyXTyn4Tm16qR8ww4UDd78w7sX4bmmeZBZ0iV
	 6NZzMen/vx/m5MZZ9UEJZ2/2FuLngkOs076qBgcol7d/MqmZSSYy4wz9mwDyYJYMIC
	 2ekvs8bNs2G3uMxsHRy1iWPduS2hVI+4PfbSmo93QuDi1CVwTZkv0vPw2E9Clf51S1
	 45hnbwAWMnjeBUhRgocb/hutJg7aaWd28BGSVZGxXsDmqaL53vRna3QW1x3MoI/HBO
	 4+eBzZW/N32dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9A3C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171324056276.24523.11993783699976682207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07aa57e770b34132d6da0bcab1fc18534188b015fd1e38e63e5d337191cbc5d4
Date: Tue, 16 Apr 2024 04:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713240562
