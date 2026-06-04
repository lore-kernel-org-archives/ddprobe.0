Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF373B0ADC
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780549474; cv=none; b=Ym/8iNDZNP3R1wVRjlF/QeES9zCzPHpjE3v1d7S49FTdki3PD0/HgVMUIwqdALPshelsOZz51/ecke7ttZHRg+/iOIrQkDbKHAzPcb8X4yYKaoT+q3G6GXgjGxfjDagTsh68tmt002Q7KPAobiBZH4wkArr3TZevih7dlUnPZIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780549474; c=relaxed/simple;
	bh=mzz3UHHo/xKET9QgZry3LfCh73owczF4LFLLY/XbU2Q=;
	h=To:Subject:From:Message-Id:Date; b=H9pm/5YAWOH7NaysiPesaR6/iej17IuZx6Td8qlB8KCe9/6m39U2yEe7Zmhz1kyJtMxZk0FbCJMtNeSorDHxEQ6qO6kbZ8uGDx/NpSnvi6+gNfPlXhLg2QLRoQnm9tuAPdPcU7FnTuSj6ruJmuoRBKCC/HNGJolrUgXUbJvMFYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcKsUIeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcKsUIeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C231BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780549473;
	bh=mzz3UHHo/xKET9QgZry3LfCh73owczF4LFLLY/XbU2Q=;
	h=To:Subject:From:Date:From;
	b=pcKsUIeIpFpjNb9CawFmCjZsrojaOOptWPwEYiZ5RLoDfbTrX4L/lDYDf2vxly4hv
	 otVuuZKiqPpEfX7fkE6Ue5EYsf7Vtv7nFNOC2VJs4gn4+Ihujb+5RDZAPrBnXJeoJc
	 eu+su0gXbYvnLrfjYMYjGJKiAYrRSO1tCLUWqNn5gzE11HBG2c7vdbAR6g3lm+4dqG
	 4nFuD+ah/gLq/FPD9dhCH+KIvXyT5rf6Nzj6oRrrNiZfLoodTOfS7QVGocJBsQ/fKw
	 2uV9O4q6k+4lNH7fRT21MaiG5YfU1uLcjVo+el+dLAywNixXU9Jp1SRvqQzcdo02Jo
	 Gfo2115LFbnsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B0CCD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054947368.8358.16097779800540019632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c2d4a865553f2c716252c75e9a677c4cb7db67e7664f054bf550d49820846e
Date: Thu, 04 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780549473
