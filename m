Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3201C450F2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746355194; cv=none; b=Big2CbDfpA8f5hi7xu4cXS5ln3IWaXoG3IKJGHpB/KcHZ4FfLtX11s1DWwQW0Uka28qiV9Sx4OfCY6hzG1f583T/3QnoZ28O8ViLHilELrCn1Iou3w4F9gB0lkBEmt1r/tSQDY7OrhyVaMY/MLVEnW/6QU6qAb4WqkB2MDSJbmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746355194; c=relaxed/simple;
	bh=oAui/BGbN+bc2mThZXfSYcWQrZG2HVFeA+BTbyPRbZI=;
	h=To:Subject:From:Message-Id:Date; b=ch3cKU43uK5IsYijwfJg+Q96mxZ3zy/Vko0FgPHo5VZp/XSLlbE8ZceMz7giWoeYMmzNHytAGcogURf5rguCcjDx3tbfU+t4SFJf7pll4h3X4IRgqIOYZIO9s4iNV7ezjvPdHvYzQhL96eoRPts7xFKtx+sb7OlHly98Hti55TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSbDTtkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSbDTtkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C03C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746355193;
	bh=oAui/BGbN+bc2mThZXfSYcWQrZG2HVFeA+BTbyPRbZI=;
	h=To:Subject:From:Date:From;
	b=fSbDTtktBQSIIBmaBMZfQJolJARQabSTFcW6y1ktahDz+gCSa12Qd2O2f6q6l3gVJ
	 HdE1YBH7KBruoQU3TNhWXBf+MV3U/LmCbYWRSe6jG2GSPn+vllOF715Hwvww6H08mu
	 /kAx/KJrbNzFYg5Iz90v7dlxjgIXdgHK1YMYMwFJ9SWBEg4TADPSQML40WErBQ038a
	 HpUnbv/cf3nSkqBcsprxaJ5rvhxwTiJ2Rai8gsRLXFDyHNn91v4+dd9VMceQfiEzIR
	 bMyObEdiO7y9+vxbiW+/hprx+LF3EzZJKdOZ28qmNFfx5l5AdeYbRXb3vY3wmeZvog
	 gb9im9BEBIUbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F8DC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635519357.8192.8464571391015147382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c3053fadd03792d7e632d853a025b3aa2fed0a09a63bbb0b7fd2ed1a1babb6
Date: Sun, 04 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746355193
