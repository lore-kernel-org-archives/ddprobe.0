Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC901DDD6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721585154; cv=none; b=B5InzYshVQCRDvIhK/OyLu07SElVyYSikxbIqgXobqfENCBa6cnfTozcVAIHSLwljhL2MhpaOJm3ml0sArZzHvDS/YULG7HVrjafZRw9GvoPZdC5G5zYrGYAIvb3a4FxgjeCwkQ0q4Mn6m1/BxKxiQvv7NNLkbRT1FeFcQDLhR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721585154; c=relaxed/simple;
	bh=n/JHrKE8v4OSUNpJvtuO2MRn5CAaTRLrpW9jd/eL5l0=;
	h=To:Subject:From:Message-Id:Date; b=WftbRHoG3i7b7JXdGY3yB33j5iyUiRS/cuFjb3cxcB53sj32Er9AYxcbHUeW2rtLB+1+xm0nZhj0v/QzP4VethKeOLM2L5Dk+ZWxucj1tNqMMAgLaCndjMqzI8kdCRbCYJvQT8GrFdKZ7LgtbAiK1c3VqY95UqC1kJo3p9IaCd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmOe+CWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmOe+CWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24C3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721585153;
	bh=n/JHrKE8v4OSUNpJvtuO2MRn5CAaTRLrpW9jd/eL5l0=;
	h=To:Subject:From:Date:From;
	b=cmOe+CWrDT1il/BS/H5F4NQEzzQg/I8EvXOQA6e4HC7Oi9AvFrvTT0U8cOLC77f+v
	 I9viUZ5wUqXaECAnra5oYYqQECENNcL+L7NOORxKD4KknhyZx6wX28XIdD3HpBc3MF
	 H7H/roMC2ZVICJzrfEbmwsTCzkmmt2BsrFBTjEQHV+iWvRv817dDZvuLA+xo9ttIub
	 xpRKsKYE+T6nqqv8+vxeKQNZQCcA1YwgljXJOngpyHwrmewgX9e/oUvRCOtvMM4pbL
	 XdPUjOlaDAwswb25VNMmjStFh14Tht2DmDuYUnl+3iGZ17SURwB3HatF0BxPy20KtA
	 RoLEpzNUkA7QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96450C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158515359.6928.13618137000723778811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8011bc50bd7299dd4c8024bd9206f53cb78cd44be7d44c9be7e7daa2096f45ad
Date: Sun, 21 Jul 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721585153
