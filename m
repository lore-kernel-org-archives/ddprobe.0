Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 850DD3D47A8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778510434; cv=none; b=vCGGwtvjTarwhPIWlssePLYPfmpfJsFP6/NLed3tjis8d4qTUpZ6yoZ9k/AxGdB9xUH+kwlQCcnznLDA5zlfGNjqy8T+x6OgrKzaZcy1Ai5f46KEI/iPOsudsftWmwyzY7cbMoNz/qcH+V3Tg7ibcRVxiLlGbJzHe3kuKkwn+Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778510434; c=relaxed/simple;
	bh=0+qDQZqDD3iRWT27ZWAcExK172NuKt9iBwiR2qRyw0w=;
	h=To:Subject:From:Message-Id:Date; b=q4ogkFhS/d1AxkLIAk3Prv8r2B601rXBYTsu23MDg1DWTxNsoyK9D8W3coBeFyzVc4uweLt0PIVurpvzQRO7B+0JB41FGTdpeCl64Ju140WdpTc8aMrWUCH+ARXO6GO356T87Zmmm+XCMaHRYG2DN+mzSDRIuXRCKi27X2yEY74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjNvFRdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjNvFRdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B914BC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778510433;
	bh=0+qDQZqDD3iRWT27ZWAcExK172NuKt9iBwiR2qRyw0w=;
	h=To:Subject:From:Date:From;
	b=EjNvFRdiSx8GipUvxMLjEeSmtwCE1/gdXPz7+StkxDnyau1L2ujx8FzBF++2/G/j2
	 wddtSyMBlMwAdYbqbUxJF3sIUzclQK97lS08Q4jtdb5d1ENXhW56Pe3znAdRoC9xQF
	 tYw9Ocirq2PJ0FEI7uLDvtqJVJGjmGVcN7ITYQOFk7idTxiXfNppOmz3sdE1UIlB6t
	 T9lXq8YOV1WoV6DO5gNONPkWFt3NhgiApIvdkFXXcfReEfkcpXrD7wE/uQdGlN7aAB
	 dnh7vzI6crDyeNy4qoVbKSi89/rtuZ3ZOTeTRSv7ArUZPq/kD9xwjz5I4DncoxEV2m
	 Rg7UvtNfbEYAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB162CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851043369.11755.7784912043363356967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b73726738337d496d2f351d4363a0c781f5594ceb0e72abda094dfe63883527
Date: Mon, 11 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778510433
