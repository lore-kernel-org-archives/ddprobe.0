Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1968F2F12A0
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764066174; cv=none; b=MzCw51o64RNAqGlKGm7RI/asORj5DA+a77Tv9dzFrUsJtlbIt7FKwalvdATMEHK57pJCXTRxHQztSjwVfca6axuozucG9fAzSmXVZzZCG12e508h0x62VT9tWaLx7vtLPGnGL6n8OiZWIZSvAHfoBS/5D8VYWGzDwQ4MJ38wmFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764066174; c=relaxed/simple;
	bh=o8P4l7op9/cGUenqOWk71BQMXhon4ViYCwFvi5c8yWo=;
	h=To:Subject:From:Message-Id:Date; b=SHfAfhWJQQ1cu+KE+P/au5r01YL5i3jGF7ZJ5gmq8XCscWDt7BUljIjHqzj1KS2B2JtGmHrTDjP8nWvwdbj5+hOHMyhpLaFPxKiYrbWun+pbz69xohf+42g2uWmZN2b/todIluXkjnrnsb4HTI1M4daFiIGSd9iR1WUHMKfg820=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+Q3jXsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+Q3jXsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764066173;
	bh=o8P4l7op9/cGUenqOWk71BQMXhon4ViYCwFvi5c8yWo=;
	h=To:Subject:From:Date:From;
	b=L+Q3jXsv5toUi8mdZ0F/p5HgDIEotzJ/RLzrlQI/TCWIa55ltPrg17VhtxSppGMd6
	 /Tu3A7HUhVn+Xb5pwO0KdIVLI9QNBTwZnXDa64Y6toqiAWuPJ24H31FxcsC41Uh78R
	 3+H3419Z8iK1PMvFzHBujuxfBaTf/UVsPK2GBS3NeqONjRkhoAlRnZMST5mVAzh8Ba
	 8s0FolTg3RJAU6GU2UFhypnEe4uojftfRGmEwBKrrsBTmN4AQaQZLkAo7tmr6VoOKl
	 bdp5UizV3NO21tReP56KyV1/QWG170MnYGk50H3Axf3SnR70cMDRgObvBkjR6Av0p7
	 v4Wcl6jMSqJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F09CFD37F
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406617358.10651.31033120002408857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376ee02725ee42baf4172661a70da5d491ebb19370646b889b84b3d696bf4171
Date: Tue, 25 Nov 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764066173
