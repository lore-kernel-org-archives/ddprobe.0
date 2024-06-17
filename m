Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E43A198E81
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718651303; cv=none; b=RSQHy9wXm8IdQHoriBEx/+opFPRBKL24l8H6y57X6kEV/wFb1NBtrehiuBBUt+RGsVujECTlDzMWH1eCNh6LJXoqaqW+5N7t/Gu8Ktx5O2oiJ2oISGEotjWOxArtOC5tQE4Q1e/qkA4iBm/SYE0ZnbUeAeBZ9rrLUAotvQaflMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718651303; c=relaxed/simple;
	bh=tMXIcS8wGKwbd1aedEvqEpr7RkNpc9EYlm+yOLxG1hI=;
	h=To:Subject:From:Message-Id:Date; b=C5yYA+7SUmPJLW0SUbAxYUOEnaXmeGk8+mkL+ePFa+q+gRk9u8QBm/qG3Nb3S1ZDS58MurxSKMLs2N6D7KaumR74rbZd0d3D/yVqAFMAdFnmDsB4B3+4Tnl/8UhlEV4FHRyHuvMS+FzBP2a3967dFJdv0reHiYBJN8cZ3BbzAaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mnc870/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mnc870/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E31C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718651302;
	bh=tMXIcS8wGKwbd1aedEvqEpr7RkNpc9EYlm+yOLxG1hI=;
	h=To:Subject:From:Date:From;
	b=Mnc870/+ITryx29yq9oke8Gt8p911m9k+DXU5Glomh3li5IPoSw1wWcdAFMCqIomZ
	 PnREPQODehEtjNF939yXrXLOA8rCsyygCYVVBe4rbE4DmATzptRcMfs3K9GneCzhXr
	 oKRvH5M5EpJJJu77Se6NDqoXb5wGm8x5MXntdJ8W8pSlPsTSDn+NSPHgd2mvipM+r7
	 HzbOrx5MnZPa8OBCnuUTyZ1MDQEcQYbah9Cd3G1sx6M2e+N1/7rMHUi3icvgO0DeSx
	 v09h5fLuM4Vkg217veggT59p5l6HL7kZS5eQ+zH0jqQ7BGW2xAqGzGwTRTH69gL95M
	 ipNIoz2sawGBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CD8C2BA1A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 19:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865130278.12773.14620073719268884637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f0c1633e2d9cd6f0ae441c19fea0f3653add52918e7fa9b787f34d92304a1c
Date: Mon, 17 Jun 2024 19:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718651302
