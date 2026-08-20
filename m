Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D7B441612
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787234434; cv=none; b=I2D1pExmBfWMIZvxAIqTwKsZf1qzSeZOkBqSFQjqplyEBu/1ID1402gyIbUKVDP2pZAkVErpiNmq9RbsjV+iaS6ReJqng5Z0AKR6SdEJ0+pEVC852Ei1CYwn4J1+rxcuOGPAQiBZ05oGRiz3yXw5cdGxMhytb1+S9HcorpR+kg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787234434; c=relaxed/simple;
	bh=8AT0V2asJczHGJBgDE0TvjlGeNM/EVaQx279U6O7U3Y=;
	h=To:Subject:From:Message-Id:Date; b=JurxXGv6WKzKqSfgg6Jnuv4ZaOs/93x1BbGbPWc8HjQhsCY+gL7H1TL8ls8MirPcxSUFxLMLO6pA9cxoKL8NhBJ0T0aehYndRF7rp1qG3mAaIwm9rwr6gAMlCPn/8COVhXOA+HhjeZgtr/8SKDzXdH23UpRPMs0O/Iwznc450bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rasMC7J+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rasMC7J+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7BDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787234433;
	bh=8AT0V2asJczHGJBgDE0TvjlGeNM/EVaQx279U6O7U3Y=;
	h=To:Subject:From:Date:From;
	b=rasMC7J+JSXarLdTsIaAM+Z2z8gQfU0tOcFB41mrKAffgTbNTCRo3aQTn5lXB0Q1g
	 51rEf5o4PAz+WF4onPnPZfuE3CWu+TyLVhsRQXTdHfuFMRD8+FZImBsLSJvtHlnPYp
	 n/cDy64BCl1EvpOhFXj01r9upbRfHFSOSu83DXwyzIr0CrOA0ER6os4vJyOR56UbXu
	 4+n2egMATaf0v98Q5UtpGiu6R97F49xgTKCdjyUOW6GXfs7EhYXxLdh6Ijhg3/CP8v
	 puTnLbBL9jaLeUYQSItnIsYwnhUjZBUXoJNnFpP8lhbKJ5uf/vitiapjPlFkKhiNLP
	 lHy5UhaSIgX2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62BC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723443368.4763.6179616266496091875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124b1ec6f0e0293b5582584d7d85e7de22951a5e1cb3127909333613f6c06f3a
Date: Thu, 20 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787234433
