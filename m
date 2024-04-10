Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0C016D30E
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712761697; cv=none; b=lEe5OpohSAoWjF7+A7LJnmtl7I0xrAGAytKPli2z4QFGHbFskHUxEvRa1Fo2/BFaxd/XNVRtlgGtbRCYgTffvhnSB6mG6D4pPyP3+M/nXbvdZCnKtj6do2K9RDvGwV/2FxDZYBi0iyXWnYS8t6Qskv5dLfpQAKh8hcJm3Gaarlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712761697; c=relaxed/simple;
	bh=sYtvDOQMPez/cSJxZZvzHJ9tSO5O9mV4YkN5cQuuQeY=;
	h=To:Subject:From:Message-Id:Date; b=HJUouXXbRP5VdbBk/SkJntFX8CWfy6qYyTG67zqFkQTuhCQjo0SO9RvDfbQ5iUH+2QU0jEmgwy2trIBwCqn8lSJQP+yhfipXyinaOTrkcRZpzROok7Q/3yHQqtaSTGZs8xRGF04lccPBYpVpJ7vfjYt8DHv+RyJ7nBFT2W2kQow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArzIJrn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArzIJrn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88320C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712761696;
	bh=sYtvDOQMPez/cSJxZZvzHJ9tSO5O9mV4YkN5cQuuQeY=;
	h=To:Subject:From:Date:From;
	b=ArzIJrn6lbkvpRvxZeGL2i2a2zphIarMTWx6stkuRaGWSU3Th9BiPk9f7zsqUhTs9
	 1aJma3fp45HveV/b4/hwo56CaxuTRLasZADM4csnozJ1fgS+Vnh4EGJiJPsvKHKqzU
	 L8jaPn4uTLEKXTDhxpi5uODvpO6vWl6GH70nCFeDIQspAXMho0CyTiCGBQYzPSchW9
	 NVw8kEfwlUd9Lgjpz3fZh+AAcHc3+6y+y7zMy8YDDF4DakagJfzkMODDvxysF/4eIU
	 MMibSFmXufm54zdxjmRK2TcLI53sxzYPlTk4wnjU++1LWJH3vXePEw0b64IARPxogU
	 ISbj01sBGcYsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 758AFCD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171276169646.32363.10098415605242088202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f61d3d3908dbec7f5ba44063b8d796e408655577c48c2a34a50038b5280293
Date: Wed, 10 Apr 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712761696
