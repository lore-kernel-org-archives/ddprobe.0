Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD841A9B24
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787526634; cv=none; b=j6KZ8N/XL+87cWoIc7D5SVA8cK7Oup/121zp55hdM4g+DjaOGAiVWrV+p/nueaGQ31egy1UgKv0l9wep7HxuJHNAjrLOivKy2YaKhjMHuGGxZfJQcp5mk4W/HWSAytbwSPbZ96Itcu74MhOfv17C8WiT8csHRrL488ZcU7rp6oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787526634; c=relaxed/simple;
	bh=NHrFJhvlK+O+1Riz/0F39He4OLIbsoCxwtQbnM3pleY=;
	h=To:Subject:From:Message-Id:Date; b=iJlNaBUIYicudgytIWMCcoTdf8U7D5EZWtX5Lxi06CRZDVs2+er/RdPlnRxD0VsQuOTDTop0V770REYhobxeP2NZBH6oI3Zt4vk/Bl6mBQBn1fmBVTzFl/WfKvaNz6JvGxUo6fMrRwtsvdShDSmxnCJCLWoph7oNGdGGHDB981s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbToZETQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbToZETQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9E0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787526633;
	bh=NHrFJhvlK+O+1Riz/0F39He4OLIbsoCxwtQbnM3pleY=;
	h=To:Subject:From:Date:From;
	b=FbToZETQUoRmuD+xfj+6hg8h6pGHpeZ3xQHCKPEj+4Jy0siDQygHfSTWnUOfAvHhV
	 a3nSLllxFsLXwP3+vp1MA2+y8WklUkQEJII01C/yqLVFSnbo+KP/DKyjwotQkdAQxY
	 vYaIJL0CpFXYSiM6MldGctl5UJbGokhX4/UULLmPFwIezsqlCBDtLFAArp1LKBLlKv
	 uyNzUzxwgSTrvI24hwLzhirXZvQW/Bw4+UZ2quoesYJUJSJqpoQTtBmNUNpwJwSPZ0
	 Wg8WPBwypJHEYWCKmr84m/YDCdYPid4xP6AnK1GPaDhrFX/TgS27T3JeaAfTya3hb+
	 Y07wn4MoI1p5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12F4C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752663369.21618.5195090178804963059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133487f0feeac4e4827e57396b980f63684150107a617b847863423f70c8656b
Date: Sun, 23 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787526633
