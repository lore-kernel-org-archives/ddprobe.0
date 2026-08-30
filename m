Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF153B9D97
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788108634; cv=none; b=P08x8xeIVDMPnABuHBeYaXePkEdgGhSsafb+NCVfC9x6wuLOZbssgPiTVwKX/t4yzhdhsKo201xZBPla9PVjPSCH1rf79y6EBOe8drr2AuWlqOJf5bFW4scCLQCXF6vlbu88xx/0k1wj7EEDi8iqLO6wRuqm/SZ6NunMAyrpHAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788108634; c=relaxed/simple;
	bh=ltQMKyjIveLG3cKJKs2eHJHa0j5EJbcLpOGBOO0xeuU=;
	h=To:Subject:From:Message-Id:Date; b=EzCScWCJomBKcqspWM19ANIkkcAM5ZdX6MAlxKQRlNCqNKaQbTVXzGBXTjRfUWPsWXsg73rpYXrZ2HtM+Pdlmnu4euLM/c5boAAxUwDY5jAbjxOICa+QiMfOiuW7FBChWbqDq6iMJ5tA0OcxZFa2h8t6KdRdxxQzAIWSZ439SD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9uEM78/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9uEM78/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0927C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788108633;
	bh=ltQMKyjIveLG3cKJKs2eHJHa0j5EJbcLpOGBOO0xeuU=;
	h=To:Subject:From:Date:From;
	b=d9uEM78/OGdMhfDFapydT876345FQNYtmd4lMEb03zuJXT9CKyCrsTg1SQnI+Yl7k
	 aKTnPXDUJK6VRV98GLNEeeIV08hSOvH2NcgFHKmokwz+BPiEoqFL1PCRtChytOxcXr
	 I3eB1LJEjkNfG5+J1t8ZIWaei1RzjYEFoRI6kApY8/712qFrV3s0xdnd05x8h2K73Z
	 G8XXGpE5w5DrePqNs2YA9wO6VGOwQl0oQz1X6D0+W0bowlcvqZqrKiHJ6PO+bJMGgY
	 X7ZJheYFoWH97ceBMZOe8Nc3JaWoCGzsOXEV/HDpYHakG7BlV9yYoMJfurOCAlcoVc
	 tYbS7hhKDdZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1FFC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810863369.18957.673476328772512973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26288d04afe0da5b8c20814b75e8e1868073ca053de49fef80198ae894618d7
Date: Sun, 30 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788108633
