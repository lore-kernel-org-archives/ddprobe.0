Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190D226B971
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764363174; cv=none; b=NWNcFqDdyd7rUSByac8gy7zLCtOdgc+2SMhPimeeAgBaA6r6dWKOcr0IG1lly8XetdfkhELShijbDIGtS19X66sUp0biLwDEuKDpAI6BCV5BBkUAX8O0cIF7vCHVHuRqb2CIILi2a0M6w3vS/JRtBAxGIK2cfS5lrpoEAHbQzPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764363174; c=relaxed/simple;
	bh=ZhM05wgbFrMBL2TTTvzcwmD4qeG/B6Upgr9hHYcj6DE=;
	h=To:Subject:From:Message-Id:Date; b=gt6TN7SsBo/xjyMQoNwWNk6/beRPdz6cNDkT5vU6m4S+P+nQntCNGur3tAQfUF+AG0cgXLyaWOK0UaY7Zl6P1ldBnwnM3n+R5iQYVuB2oFl7npD57ZaIEJIveIofdFZp6wxmnCAEx80nef5QtHM/prWlibk7WiWpdo56Oh4Tvfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zjk/Jp85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zjk/Jp85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764363173;
	bh=ZhM05wgbFrMBL2TTTvzcwmD4qeG/B6Upgr9hHYcj6DE=;
	h=To:Subject:From:Date:From;
	b=Zjk/Jp85CUaRJryPIoCLIOZofUxV8X6LnuYgkHeNIty96j/R1qtsMNmDBuoSZWQy7
	 c7S2nSfmHvYlzRzdLZYysExQJ87hPlXSGhtQCAhsqZtlb37Fa31956z9Qc4EoVNbO8
	 CeXnS2acZIWBZxq6ssaC77b0bMum9U08qNDXzEZT1Z7t7xKcdtIklF5IshIIMJcKt0
	 oBpp/yH9nsHyCBM43eWwkZfDTihDt8mGrC5yqDIB1slMKWzKLwrUS+kC0Z6B1C5xFc
	 CKI7DK94xln5NHBhTKOHEJN7FNDV8jDdSGzQWJHSaG4J53ZJg3XeZaZCYnsEBr+5kV
	 O+zbxL7JR5y+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9372AD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436317358.28235.13121632006278411610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185674e7c401e5fd09afbac58d9bc90bfc60115a25bf945f491043cb337cd1e2
Date: Fri, 28 Nov 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764363173
