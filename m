Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAE92C9D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758771594; cv=none; b=XdG1WMtiavlaFccX9bNymzzE9KpZ8JnvsYHc1DrTpofRL4hHwIulJbSWuuh9Vaswyq20wU62ODPfR0UabN3YqtO6Ya4hKnSwNqa3JRTO7YOeZDx344QEpToyPD5dhMEw/LLmPYm/dZff3S9YRyrIoBIOOaI2ulrC+j2DcXW1P2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758771594; c=relaxed/simple;
	bh=wZ0gNUR+UJQ17EI5bJhudZSDC+e2hSuDHwKw8H1V428=;
	h=To:Subject:From:Message-Id:Date; b=NAXmSdYpk2Vcq2fy37eZwHCB8ZD2C7536yyWwGGOn6JySpRwJzbTfZkYIi7bSt2yIO0yJzAIgfMBUNs5x2o5k6IT3jdXL4wiZxfZOcPkbkrD8IFzeFCR55AwGR9tXQpXZndnFneH+Ud/iW7r6vmK86qknJDBjNcb4RYNsq3VWg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMKX0DAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMKX0DAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE63C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758771593;
	bh=wZ0gNUR+UJQ17EI5bJhudZSDC+e2hSuDHwKw8H1V428=;
	h=To:Subject:From:Date:From;
	b=fMKX0DAL9ZQJeKZSyu4tSxlA5JK37FSn7+z22AHt9sy6mgfx17SBPiX+JwizLcH+h
	 EQeRcBGkwF+60CTd8Wdr/VxydEBPvLcDUfODSUVdJdsZ1G2q5hXTvIKxR/erQtUMiP
	 DlCKHJOI88FYOgC2FJhKHQRxUr8GYRfpaAz3dGTk89NiIw0XAr15YiDdYc7Esv9ebU
	 I473EmJvj81+Zml6eZbz6obSUsX9p8e5K59j5RskIw2KANisJGIvEwZx4vPs/JJYw4
	 JLwZsdYxpQ+zfI1njW8rpkwBhtHRm1V7oGPpLMr42WlIYLupqK0NQ5ecMxrSquvSYn
	 u5mUl5budCTdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90111CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877159358.16996.16048202034551087292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aef91a4fa6347134184913422784fb96697e7a376cefde813ade7baf71593d3
Date: Thu, 25 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758771593
