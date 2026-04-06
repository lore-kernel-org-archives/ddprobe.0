Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287518472
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775484334; cv=none; b=HQ+LwgZAeyEMXDEzsggCt5j8jON5ahXLx9yOvW0nNRB2q3SO8JRIRZtNGcQ0fGm5O0HFDY0OIydkNjwGABjju+OUGPARCxZOf75QHXnijBA1caa8n43FVAHh/fOIA7W5A/fIVOOitghbMnR7U2ihHNJ8Ch2bm5Q+scSm8Yd3Sd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775484334; c=relaxed/simple;
	bh=TRLfVd3hL8N3RHWrkURgd5868c9sPWmxAUGR17Hvqh0=;
	h=To:Subject:From:Message-Id:Date; b=hu4yProivj2rs6Wa5lESVvNtmJT5QDJBGoJDbwRmngTqeDDlP6YHC5f/j6YJNAVXwaXlj75xFcq0jlTPaY7OvdiM+PgKjZRSzVGEjUUu8cldyyLBiFhmpLPApgh6Jllp21ibctEYUPHGvj4m3haTlwLcSQK+K7TzH2qFNgKfsRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUIWxvgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUIWxvgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C362CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775484333;
	bh=TRLfVd3hL8N3RHWrkURgd5868c9sPWmxAUGR17Hvqh0=;
	h=To:Subject:From:Date:From;
	b=tUIWxvgopP3d6UA16Zfhfxrf/QS53pPyQCsfQqluO/W6q0BBVuUVR8D3BJXr/H96o
	 WGO1mvy2h/NhvQTPpWsFHSpQOelfmnJ1eBb99Wd2OSTm6jNnsxtdWTBE3PoloOT/l+
	 FRUmz5n9hARGlcrYprwtw3suHYy5MmogOCQuwjOK8JBPF/Ct6NIk9bZCGN5w7eGWin
	 lovXYjtzoTkStYAuhI/2Y0b8eR9gn93HyMXNch2imu0NLE6tFHhQFHLMnRHueeLBqx
	 hmsxtXDpx7YZvrqQ/hzaZlh1WrtreP//ff4VnveR/X1anoHa6VOqY0NNTFhxKJTns5
	 ONzgCNIbP8BYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C53F46C43
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548433369.15290.15729733915623395460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4332ff06e02d197ff4c3b0143d69d5677f3666ee7169d40eea209e2328f91328
Date: Mon, 06 Apr 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775484333
