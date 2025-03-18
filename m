Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1AC3FC3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742272194; cv=none; b=HTXLbI287wMAnBpeIsxBWPjZUp+EEUYrNlmzenNz84ljDtDA7LrCvRHB1+oHGqpGqbl6Rn5o7GPtyo3veKpu8y12SxIONDPcdCPH/o6GJ07T7uJM4mglUR0ePTaoZ19YC8X3d8qNVk0FdBReYZnxMU869PhvO5FP/PTwhJ7cgvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742272194; c=relaxed/simple;
	bh=T8h+HmYt9EpCDf/jrH4WMyvn+ODzjCInSCln1Ygz7RM=;
	h=To:Subject:From:Message-Id:Date; b=EoIj1qxVKtvAnI05S9MZYpCMWAG6FPWwtBSVqJMZnvx5GMxE5iwrsIBroej0xKONuhnDNA+WiYkzlkfjLVSzpMqVM4uKaMOo247VsZnjPh0x07DQmSyuVd41g4xgmw7l+79ivXqRbxHHZvVLAbc+jwjXMtR2vxAQTrS/7FKQrts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxi/DCk/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxi/DCk/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0037C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742272193;
	bh=T8h+HmYt9EpCDf/jrH4WMyvn+ODzjCInSCln1Ygz7RM=;
	h=To:Subject:From:Date:From;
	b=oxi/DCk/loyh5GUg4iWf3r0/J4mV5P99V6D1TUjMsgHaytMANm2Glm9FigcyPypv4
	 rNa95yFi8DTYRO5iDzJ3+JTMV86ECqNI5aAnZS0pi/1p86w2akKyTBo9hSK9Q7iWBu
	 9WNRYIRFaM7fp+k+odpdGR0zJmubGNtQ/knQaWqiNDkbvNelBy3ZtOiJOsWGkC84OC
	 9ISnkmlzXXmXrvsorYgaTmwMywxjGXd9ShgL0vH13TvFMRYvJYP/Wn3Vfb0LI/kAgy
	 YsGI4sDRKrLbYaHBP5xKYK1PTe/B8lBuZKIcI29iYykqxITk8MT++SWBzxNns2IzG4
	 7tob0kAe4/EqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A33C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227219366.30990.14757621174412734042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c78947901dcceee85871328dd6b080bac9bbc187720d62c36d5efb0c0186db
Date: Tue, 18 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742272193
