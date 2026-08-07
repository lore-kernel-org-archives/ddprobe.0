Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3BC32AABA
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786142434; cv=none; b=TVuNBeAPGEdQ977tvcQPyHCQMMi4r0PRB+J+asdvvTG1NY9T5rb0fFqcJiWMclsvur1dOtnv61+7fH6ljBT6ae7694Z0R9JX/oyYzbBqoqMyQxeEevnYqclVuVHGnBYfqINEwVv94GR95vMjb03qTomG3sufcUAlhkv+7/eT6Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786142434; c=relaxed/simple;
	bh=M+wI2OiookM7F9el8KAUKCsMrKnnoDUBDN56pl3XxOQ=;
	h=To:Subject:From:Message-Id:Date; b=jgnfNM9a7zu/YGhxL2ck9neQDARy4FNr6DxgUpksDrJY04xseIKglD2ep/ZSKLSIqhtlIIatrz+QJii2h9j9Hh9izl6j/3ijTpMhkjLGZ8f4Fec/b67ItHlO8Q2sI4LpQIilAHHtvquM3G0SiAarrubHQkVMI6Y8K9Q1vqDz7zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjaH5MRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjaH5MRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D303BC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786142433;
	bh=M+wI2OiookM7F9el8KAUKCsMrKnnoDUBDN56pl3XxOQ=;
	h=To:Subject:From:Date:From;
	b=DjaH5MRL//v1Wjm875karTSxZWjIisXfaUT4LUT7aKV3+qdL7g298pF51UNev2Anx
	 +IcbvnNW7eesBf2qFY2lKm/bIia9Hx8fjdkIjnI2KFGjHaYHN3NC3NWXKR0htlyKqu
	 x7tNUMD263Wf92zHuA1sjGeDXh14S2VCUHWtNl77uGfGiXWithTEpAIBPPyZN7zKOj
	 mqzMN6dbHxN2I7xUWt76dbUWrMD1q5w98ufNhN2Y2Zpvg8IzMgiifI1DGuXoNsBLhf
	 G2U6k12GaIujMmnonfUJSHew/qMC3WViN+c3Qe0OJuRkaXnmIA+xPX1IYfZz01BC6N
	 vBcWMl50/+B5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2E6C5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614243370.7638.13090114998898477138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b716425ab409ca0ad30e9ac3d1edd54ededc2f0c9c00cd534189ffb91c24cd0a
Date: Fri, 07 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786142433
