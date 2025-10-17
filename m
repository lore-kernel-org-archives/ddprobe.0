Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D002417DE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760733594; cv=none; b=ZPBFRlB1HG5t+Oyr0hoq1vwtFwWVHg1s4H9W0mff/UCBFfrmJcOLfKRajKTiLuYv11Hkp3t3K6tN1K/Rajh1LWiHY6fdYi/lIXH7lEcLNiNLPF1rvT5785jdX744uRtKLci/zTQRkVqqR4JOWIgAEYKfCk6bhHLDIdaITTGdN5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760733594; c=relaxed/simple;
	bh=rJo/HD4ix6++oAs3j6yV+w/useMPBaqLswwcYIQVe/0=;
	h=To:Subject:From:Message-Id:Date; b=OTBiiTGYxRAmyTIPRa2X3cy1rK9U3l6jiWOSFOVHrc8XPH3liigXwdT1PGbfvx4J/2ntYrop+K8gQD6NV/3RTZ+vh3vwEr/jledJ6f52DXONA5Vgxm0fEel/KFk+ukEtJQh5yEVBAKR0VaHUaReMGk1hUJZPi+kmZxyc8YIeAUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORuuAxCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORuuAxCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A031BC113D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760733593;
	bh=rJo/HD4ix6++oAs3j6yV+w/useMPBaqLswwcYIQVe/0=;
	h=To:Subject:From:Date:From;
	b=ORuuAxCkqm5/sP8/M7Y5t2A8UJhykGzDzw/0udOF8wwpUSI84CLsotb/hdlKGz80J
	 o9H/UkjPTzzQtNc7dm33INiICR+ce+GzdnuZk3kvuzjvPUhcT5lnuZmdlY1vljmYBL
	 gxqYeeV27x8AJ/Z1j0YHK8Xaudx3Nq5zgplER6AVM63z3EP3m7F0z29YrGVbtD2ftO
	 tcCljxLb/odIUgDT/9KCHGu+dt5dw4WKm/DYp9zWxOR7Djoh68idlk2AGhIL7xG6yO
	 zZgewh/OMN/bu58wZxv02QXXcOne1spRBtM3mnk1cRbZDItM8P7Y2IA7fR5h07bXH8
	 5ZXk//07gnp6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90048CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073359358.24826.11328218141326065017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8485df144631e0afbed0b2676036dc74e30dfae246e76dc2881b844b7b0e24f8
Date: Fri, 17 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760733593
