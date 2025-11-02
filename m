Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4990D34D39F
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762073394; cv=none; b=CyGhy0v/NROvMu4AFVBP+doUU4eOwP7ERAmcMzvSGjofpir26+M9RQDwjYDoDDtJA0csaXuYQWQcKcVUKSK4UD3GRjr0lvZHojUJD+iFw8qwzAVHRK4FQ7qNcTzhDs/U34D3nQfFZhJcRLxvpJ9Gu6wBzsU0s2aEaab0jfbsexI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762073394; c=relaxed/simple;
	bh=8BOSbTGNUrJ+LAleyJBsd1ft7IVZyYdDEpud+k8GhiA=;
	h=To:Subject:From:Message-Id:Date; b=cOE5fQjCP9Y27ZZ0XPt7MorfNVgCsRGb1Nqib0ix3HzzLSBw7NSNHn+zwfRA+vx6sDsXXlM+LP2niLFkECQyG/NX69oYaDpCP0Ot3swU1R2H6M4e1zfPUdDLOjAefZfkwU0O9INtPl/qtYLZtZ575DCDY3juqrX2Hl0Zcl/rK9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaReGt2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaReGt2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73A4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762073393;
	bh=8BOSbTGNUrJ+LAleyJBsd1ft7IVZyYdDEpud+k8GhiA=;
	h=To:Subject:From:Date:From;
	b=JaReGt2LA1aPGcd1vUTpTY4ch0h/zK/f5CZbcxPA+jes5M4joxsiLC6VmOiihmHp3
	 skyaGU1QRURg0VKBcLYXjAVv48V8eHwLgWXxQudT3kZBIT30VmYSxz5pMNwMn8O8TL
	 8XxZcn56iYWBD/hyvUMOLMMpOx9wg8XJXZl9iqNskPDOGlzWwKjQY+CUwC+SVz8m+Y
	 06AiS5gwx48dzFA/M6sfVMkXSQJ7yZifdNssjsynXshCbj9SHM+yH5APRovzQU8+Nf
	 n+/n7d9CbtIz3wfzfro5r82D4ZjcsVQptsN7U+VehLNbT0HV1uMszQt3XiZ/T+RWyf
	 wwyS5EfmiyMMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C4CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207339359.28786.1909624287943119135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcac1593cdfe0ba980509116659a00bd261153250d7587538d1f09c23e787bd
Date: Sun, 02 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762073393
