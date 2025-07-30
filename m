Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F212AE84
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753885194; cv=none; b=nXzj4kF0ubI6UqEg7o4b6r+iatIOPyNe6JQz6lTTATOM7Kzzlb7UcSeLyPc5gaAX4gy3v9vHpZnrcUllXj6Q2gPcV6QWspoi+s2S3HhoYmg+UbTzhYuvx5DM76TsGhXmmB29wsTI+XmWV4O5goOFRlHQIWjaI3LQADSgQHovIaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753885194; c=relaxed/simple;
	bh=CWQ7y4qU6xnFeb11rRog9xKkqjtV6BL7t68Ouv52UeI=;
	h=To:Subject:From:Message-Id:Date; b=a8hLOi+CtB1WUuDf0v+V4l59m1gouLcZQv15e6hpDE2UbEpWrRj22jAaGvUgUn9LwKk6+Q4bZSGzHjy+3NXhwEADQRQTzAaJMFWLWUUlgDdQSvKdrUZtKGROKT6v6OeHL5Q+jI+gPDAezkUfoGMSWf78nFJV/RbPxHgR8gsIJrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAYzJrHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAYzJrHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE45C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753885193;
	bh=CWQ7y4qU6xnFeb11rRog9xKkqjtV6BL7t68Ouv52UeI=;
	h=To:Subject:From:Date:From;
	b=rAYzJrHrp5eJwegpyPfn7+pDvEawzTyfqj+qS+6zeLVcRO6SIePMQkT8SVDaeIgu2
	 gXCWJ/Hx+Y4uiu+IzjSZOgMxwHoeJ1zFlvm39M3fF60AFDQR00vT5LzXyHHsUu/awq
	 T2pARgxs9I27OBLABbaYmrXAY0Q4kTZMZZEUJ8HH7ZpoeouwZIsx7xJ8zRPyPymDzL
	 vFpLcO04NrWmlP/kqA5d8yxrDQVlJ//qW9NfXLsCfNRqaOUlXlFc3WFkmSrPysQpEF
	 0olJS3c7laB1bhlI2AvmzapFkMZBFj2dNNdtG3stAh9Ai4Rf3o1fEWcEuh4ZdWO6IX
	 BtcO+OMA/rBvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92BC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388519357.2751.503243149325635296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874efd2cbe91c38d7966727a42473d4a9e5fef3c76f51df1fc4a04b746b441fb
Date: Wed, 30 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753885193
