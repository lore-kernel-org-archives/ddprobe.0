Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCA0330B27
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767905634; cv=none; b=UJt2kBokYGcR2J6dIO2ygwt7/VAui4rPllY3jifTxNzYdbxYKEdtFgtkvu98iNIc+XkV8s3jY62/yjUpJkdXpB5C/3kR7gRtn09oBeupdfi8w43B9wuCvQdA6MBnSbf2v7xCKCbfUFl5aW5i3R8ZAiDQmlZNdv85lpw2fQxdWxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767905634; c=relaxed/simple;
	bh=VBW/L+D9OtBAEMpJ4Xu01DQIVuQCt+DX9fm6in8RAH0=;
	h=To:Subject:From:Message-Id:Date; b=oUzVRxQF7GIRMQei7JV5xDPiWU7XdYMfcF7zgIER7p9MJ1FPPCrMpOhdDJ+ripoLsB4LNVkgx66yRtLUls3EaHzlpTFFTEpuBLDE5vNWvJWRPFcYTt/VU6BvQxSs/7T34KHz091j0KTWWALYMsCefHq22JWMNPotORd3hM/Oo3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoP0666f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoP0666f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993F0C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767905633;
	bh=VBW/L+D9OtBAEMpJ4Xu01DQIVuQCt+DX9fm6in8RAH0=;
	h=To:Subject:From:Date:From;
	b=MoP0666fbqqhtohsQ9z4Nr0gyx20w2Ihy7LZX3cRS261ajY8lO6unIm/gmyez/rl6
	 /5A7wETcfmSPAdRWrtdPMLWB+ZBiGyD2UBzw1OxxkSUkTS3+labRROSfgk8T+hu5o8
	 TzR1DwElYg1OQg+JQxFE76Pov1TQGXpsMlkqK/u69sqeStIbF2FnLrl/CsNXF/apjY
	 NG88c/vwPa2hcXwc8qMLN4NeiXdb/BZUIpSi5uo4lQOJ6aZxtLtUfI3mKBw5KahVns
	 3Ivr6N0ZElLIAdUzY+BUUgKU+d5zNf+3ZcmErX/IdJ7PV4g72WRncKRae3+ypx9Lv4
	 LqpveoGMiiVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F505D1D48A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790563357.31035.4152792217503824878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d89757c0466bbe56781b4f5539eb5ab0e2f51a1445bae178e6cb0986ac01f17
Date: Thu, 08 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767905633
