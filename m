Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFE530677B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780374874; cv=none; b=g4qy9m7YXOcw9VlReeiWb5ZSYOkPNYAt9JiuSyELJ00sfkoToahKHsRKwvuQmveDGxw+FITOTLIScXgvE1shfhRGj/utsQrMxQsYUMq600VWoqUDJEPV+vW+q7z2Rrga5ujwFEn6egP8rS46TlGB2HKJz3KHMkrtnDQ5sVF0sh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780374874; c=relaxed/simple;
	bh=iCBnVI0QnDg6IweA5NJtAQQ//dB3XM8LoCgMiLE7IC0=;
	h=To:Subject:From:Message-Id:Date; b=Dl2Ywf+CDFjZG5RYVc0uU79jxuuMvKb5MNCfbMHstHmXFtOvvHip6o8MUeqJvhbsaaiDnBFC+dQiCePzF8gGaJqd8SU03bDtOQKIuMbYquo5FTO93OPlrV0afqwZ9y2/NgTLJQYfsXq9Dfnsz+H7BdqjgAVkBxBXhv0Hmi23Bms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiFsMwlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiFsMwlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5469C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780374873;
	bh=iCBnVI0QnDg6IweA5NJtAQQ//dB3XM8LoCgMiLE7IC0=;
	h=To:Subject:From:Date:From;
	b=fiFsMwlc5FB9IfPHc4ZOH2qVD2z1W+vDU1aa6RIH3ZbLeeDFcDuzEC+lT4HNejUHs
	 lC20bD6JvetAdpDLYQtdl9VGey051UCfKLPpYdqf/TxC+YL2/kmB+90utM0oBGvmUB
	 a51aoUCqkZPx7JlVeWbhuIxkPDQWRXVM4QsIg2s4piEIMxaSxpWkoJztEqaf5lyF8a
	 hATGi65SzTLwBKhw8CoGE4u9uU0r/P8ntZDVs359ZsvPMvc90ZCK4CkReFncGRkuVR
	 +4zU5yxx8vQ4z/TgIaJt4l3K6KPZpS+fOip+d4wZOcnhLhqnjUUsWvootZXBh2w8xh
	 F/6F/Ya6BC7Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C8C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037487368.2757.7370947456545881808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e8b66cb4f31e1a6401dc57bd412576ee7d83e78dde4c744d9b3145d9a7b1fd
Date: Tue, 02 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780374873
