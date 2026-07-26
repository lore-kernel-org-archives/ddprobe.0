Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510451A6809
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785033034; cv=none; b=q43yrhXss0SxXy3uEYeH3zvfFI9QCrSlQzf1r/Fck3ORwEyiMKKCLJV1puPJD8fKBtaJoI4d7nfayJBbN0dAE+noahtLqDbBdXHz71qpMi1goCV//4Br1iYPRssbQpGG30TaHL4L8kj8Q0n2HKVYpSN2vDrDFKA8sAru+3wULyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785033034; c=relaxed/simple;
	bh=nS6d5aLS41OiVDap+5jXUhy0pLy4j/URuBenWbPqw9U=;
	h=To:Subject:From:Message-Id:Date; b=N2yHBaM1cj81+qIzIikKK4otm6Go804yzSDa20/K8d0NyRscMjSuDKEZ074LNLLyaaVhrSUL1sRWNQZw7qFWP0iiaHOZIpLyx0toY9IUcKmr/KhK+G1IAOOPl/xxgcbKx78DrDxGxQjqdzr2KY3DDY1+Jcr5xOlTWxw98Vil4l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kO9I9iwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kO9I9iwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADD7C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785033033;
	bh=nS6d5aLS41OiVDap+5jXUhy0pLy4j/URuBenWbPqw9U=;
	h=To:Subject:From:Date:From;
	b=kO9I9iwyjuWU2lVaB8+aXrnQvwfbfcpW3T7TMLansEzNEGNWD2HPOpy1dq3TcTQCO
	 05zmJ+iYbHGB/FaIFxmL+Y84ylv1Y8FANmFLJZA6NzVQ3p8AdvH2kGvcKab/d+8s0d
	 LFZmUrXYPWfLiMRV7hv4oXYzuKhbxxWOHIWb8yIGpRSX4AFptMvsdwOlifvNAAVxzT
	 Zap1nRMc0aIXuWlYOM4us43J8y4k+ayyZGkxvrcYlOu/Un+vGLfUQ2YUCL3ShjCF7a
	 gKZEwDlEhRg0dSWWcpQRZmjHtCkJnMAzV9utbZe6OquZBSLrqQVoYpfwvCoqRej/Yu
	 MQX47cGkyFl3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E22C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503303368.12716.3919778042661014068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc5e8c4a54c7a2dc7436356ea641923c1a1a2059f9bc3e3fa3ae4201749a759
Date: Sun, 26 Jul 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785033033
