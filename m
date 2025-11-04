Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E582C21D4
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762256394; cv=none; b=HMS0+R6qEA1cCL48joVnQIelF5YnnNzuoxMa2TVeAtHUh7KSvdkFlMH3TCY66Wqh+Fr0f6s4AK3QgVp3acKtsK+AVr1sN4q8e+/HJEcFJIHspbp8v2zXq7RpR24mTdcVAHvh3HntZM0Dqntoz72WQp92gi53xBh+4G2vgkBqOws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762256394; c=relaxed/simple;
	bh=8uh3IS4ogiQJk+aKSbm8FYH8rtYRK+poyIcJzmq/oEA=;
	h=To:Subject:From:Message-Id:Date; b=Q3lUm+7Zd5bDif8qsVsyGxGS6GDBvGRvOYPFp8HQM3nEvNdMyc9b+6SeBsuGUCBDAoX9oQRDjOZgSU0xVlA6jNDu38pDbtZ/zzCOWeg8/O7PGCNFuYlro+L2thvax+AlzfM3JmSPRuWz0dCaklDDLlahODaaCsW6CN5yv9lRw0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0u8SPRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0u8SPRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0D4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762256393;
	bh=8uh3IS4ogiQJk+aKSbm8FYH8rtYRK+poyIcJzmq/oEA=;
	h=To:Subject:From:Date:From;
	b=T0u8SPRp05Y7TUIRLg3GD0uUP1iTbKBQPPClu+Mxfucrs9WSb6IlH8X4xCgztgSyl
	 x6yTRTCJObMqSME4AlZmINJqSpi7iMOrJNL9cdSiXMwe1Edn3S84wdTDA2xXeARGqE
	 cR1reFyvLnXiAri4TxJZ1tMYqDhyxlVZUne/ogeEG1ei1MqrjVuQDoKgkUJqFmP1wm
	 rGukwz7wc1Rk9OrQUvh9wZ4HniXiSPzNUs/Oo3G910YKteRfSQAdkaGbTNnFHkrjom
	 vwRlyRllBwAz0O3VoT8Ah8Eg5Qc6J9DXCqwq37iQWIPmQOD07LsGUHdrIgJtPUjQvJ
	 716wxpq4XR1RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA92CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225639358.9513.7809337910862221326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfc8044b6e4c4ef96acd62885860e737337b56ce9e4d2b649bcf15a23eb0c76
Date: Tue, 04 Nov 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762256393
