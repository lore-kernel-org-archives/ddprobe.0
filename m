Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029873624A4
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773060894; cv=none; b=Tyz32DA/Fop1JGU6oRvLowjIGISXO49U4shUGTYN+jm+TJe/21xNouiGTOg2C9maUE2YplHA/8V888dvxdfa34mxNAgQ5NYGFXhtDVTDo4ujTSY+iehfkpme7tpWYIeMyV4MPAM9yji7oRMm7tiSfJAx8kA10xPJygzgZhmSa8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773060894; c=relaxed/simple;
	bh=TGTfIp8ItTVWl0pzXrJniID17PZ8Q/JmT2SMB9VqCT4=;
	h=To:Subject:From:Message-Id:Date; b=HeHlk5BpO9MLGOVgxN5Hm1NAVh/QV+MV4YfMpLqUVt0ELULcuY9o1xh78r0omDrUAh5rRnksl0EG6gIpXLg7XaIvKLanh1mme2oe49bzsUs/m6oF2afeppSQn86YUQGEsI+Ilk1HVumfhraVl6RqhlCGV2Gnfvyg342kN06Fx8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdXor4Pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdXor4Pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6D9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773060893;
	bh=TGTfIp8ItTVWl0pzXrJniID17PZ8Q/JmT2SMB9VqCT4=;
	h=To:Subject:From:Date:From;
	b=XdXor4Petp6IUzI9mMKP1Ng1x0VGuahCcV0SJAWIXxYmTxISYziObLkhcWXNI1qVt
	 JiNi7eGXmlv9B9CcU7P/V403UWzcgHbWhyALsZOkuLvDNKDzZqP3gRR9KtvoRt3Bns
	 nJ7ogdutEolYXR9Fpy2QUaSqRGKxQAkM9hWsusNgss5J6lZA4OcVNPKxQ2NDipwnM/
	 HEbAQEc+OLvdxbEljK4xltQM/c+fgAXmiQM3ZrFX7vlQdyZij8qQwijwVsW8EXlHg/
	 +BQENAhUBYTCqNhJ6AOvBXCyuxVB++LwkLrMK9X3hmlOoyNGUJtR9qnpMmN0eiODQ0
	 bJwJv43XwlgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E6F3C241
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306089357.27098.10321512385251673669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c68315e06a6289bc510986266edf90d26084dae3aa1c961949da34d5f999e85
Date: Mon, 09 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773060893
