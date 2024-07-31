Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F91016426
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722438954; cv=none; b=QM+/rqL59qDyMbkw+V3GbAOWzkKA0UxGWLYilL8xP5HHvxAQnG4G0/D6F3au0HxwAHpq2GpzQc2NdklHD3DccKXp8pHKQ/WtaoJ05/BT7zsQXgq5OZwDYax/S6mmPHqsmS+Hi7t3ag2PJ9o2e3ROThJyvIGLpuJNT9hrPC1+eI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722438954; c=relaxed/simple;
	bh=6Aj52Z+n6T/DtjOGP8MBhtQPFGaUzKdpVhtn3ojwQAQ=;
	h=To:Subject:From:Message-Id:Date; b=SGTt7S1YvcXHlB9rNT4QhVfAWidC8HIfLO+GL3owi0F0Mb2IjWOpqO1SbpTkjXmPcPGE0I6k/KM/lFYMNKKuBic5kqGMKzy0tfNlGNtuozDlG+Sh9fFbl1Y14TPyWaMb8JMtFZo4zwyvn9SJPZSqlzFRp9JfElH0hglnvkKu2QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/dpaYqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/dpaYqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B08C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722438953;
	bh=6Aj52Z+n6T/DtjOGP8MBhtQPFGaUzKdpVhtn3ojwQAQ=;
	h=To:Subject:From:Date:From;
	b=Q/dpaYqhWNpHV/EzTS4YKme2/3PytN33xMkcCK6JzL3w2S5kCGj6qt13qItgLMSid
	 snczDANb/uCZwl9ZDyhIE4Ojj4wRb1Fi7Yfd+i147DIq7cObg7ZJSaxwbccn/Cinb1
	 dLEPsuVgFL/K2vsDgFVniDswfMZdutZHNKbjU8ADQJfrEAxs/6ow1/eMyP76MqXUky
	 fkN+G/dbyyetXFb9A901OhjgU+R4hn6V/zWapdA/eVJFKFb4Nm7aA+vktqelPiN7Ea
	 IwxlcSNBq2e4dsPaDiqC4TCsTJnFCeMY7JXfD4Xdr11tBFiaR83YzmPY/+/tAlW6EU
	 cCTG+2ZMr1nZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9604EC3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172243895360.8075.9767673774381385532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0987e28f3725546e1e629944ab3af2b0b2076bbbeeaf208db9641060c501255
Date: Wed, 31 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722438953
