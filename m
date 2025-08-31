Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307851D6AA
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756601394; cv=none; b=hEXH39o/7ZU1jYOvaIbbmACj61maVCwAHVfyYLsW9LsURBhTyVSNxhX/ZSsB1qSdWIiHuM2XY+wTT4FUygDbaM/+Y1Bhy3EdE0ec3OkRrd1ufRtsFJS+51qMZapARnD8YVxMJIOJRVKT7ziZzvGLan6Kvb2h5pmHNExahVkxNjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756601394; c=relaxed/simple;
	bh=fN5+FMXB+pipgYCyfERxwMoAEM4DA6sjShhKKcVY334=;
	h=To:Subject:From:Message-Id:Date; b=UZTQkK48CtSONuqUgxxAjQ464wwTDMG3udi1CBXBzDJb3EbX9D7eu/tMEaDZFKvUl1AAUB+TNB6kxd7OvSOjTFkwKt4REXSLa4u9XUEYYnImGcRh+o9B+gHs3ksAtBVWdwglQYDpUMy5W/xDkyqokrOaT/Xqj7j0NNYbaI/W+Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfVZ5iey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfVZ5iey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5122C4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756601393;
	bh=fN5+FMXB+pipgYCyfERxwMoAEM4DA6sjShhKKcVY334=;
	h=To:Subject:From:Date:From;
	b=OfVZ5ieyNZr416pIuII9jNX50NDpGr+rEVgWrZrxKDcv01rRdKxdJofoUpYK3+Sbh
	 qYmwF4uOpVqW8tB+L0qCtdSpvDMgGycPEQ5l7on74/mR6c5r6wWOltGe9O2per+Nye
	 GubQz+6Y2kQDPIQ0jM2QUuVBFlsVpzjIj6Q3O9g/paJ3tTxQzb9ZEkupHfrAepm5fi
	 WvFdLMzkgEQu9Bf7aBjjvdg61RM/w8SHT3nNR2HI0eH/qgg3Da94V8O0F7wDt6aZW3
	 Gc0yy9H9Eo0V91F0YZ7qcxtabtfYQHTTxAv3YqQKNu+dHJoW13MG4/vZsRksNbg4km
	 XrJw3LKelZlZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924AECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660139357.20301.3685857541986269668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd061f6e38de90eac47d6a891717da854aedcda1dfa0e6ae9b0e4b57548f8659
Date: Sun, 31 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756601393
