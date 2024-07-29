Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A301B86D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722219354; cv=none; b=jf17EoT8fYearyPWKmE0Ek5rYRtTj6SZFMUp+rOShntXzj2ZKAbQ6DMSplYlZtz6/bAhrt+pvWWvgg5aM8/EmO0dlqWxSdRaZBlG9W1VYtSii2pjV6WIXh17RKm6gTdSUC+uD4dSCmMANR7JLJES4RhEZqxh5ODo3AIzrSKKCMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722219354; c=relaxed/simple;
	bh=3iEQSDMpP7IpGy0DO39xpL4+pDjjPeTXE/4n432oJmE=;
	h=To:Subject:From:Message-Id:Date; b=nS6otPvKUCn9hdqt76lfrA+cE9zGYywcLYYmDB1b5voh5TZA0vmhPTM+0SdKcQnPqseibin2I2AHJtdpOazTNvsNZ4txHTsyAmKoCTO8QdAdGbrT+AFf+eEDGo3BfjNYA+0H7ay2y1qt3wuawoRzaWvCXFV1XLR9BjDhpnSmxDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMWBp408; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMWBp408"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF79CC116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722219353;
	bh=3iEQSDMpP7IpGy0DO39xpL4+pDjjPeTXE/4n432oJmE=;
	h=To:Subject:From:Date:From;
	b=dMWBp408JaSRv4Ui9T2icRPn/wsk+ustVSHBzGJ/WQ5VYEZx3aqY4J4KAfamp+kaH
	 NekeUMFIed2tmLw/s8hL5jDt3hPjA8OGVnOL57jMel4lS5aPDhwiL09EEABA5wJB5v
	 WOS9AiJkPKhhdurjZjoLxe2gcWUKMmQ10DbftUX+xvHCgNNKEL+N8fKq/kE/r6wTAu
	 M5NG51iP0kBHG9VqbyGs92vPTnPU3D8UXgK6yX/i5+7xdmH3A0HFkC5XGfj0W26djR
	 z8gtf5WVKy99e7dlPtkQNrnf6l8iJ6Z79ckJrR8pbQXiMY+AdkwN2wVgu6u+7iX1ha
	 HsVTuohoVAozw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532EC3DA49
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172221935360.12166.5045384779116806700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10f7e61c2dcac34fadcf0ef1417e949445c470d03b801f96ab78731667ef93f
Date: Mon, 29 Jul 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722219353
