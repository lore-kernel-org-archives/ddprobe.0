Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253F7BA2D
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740308934; cv=none; b=Cn7VFO/lY5OHJQQVN5CXIKwxl0+HtRdGRF2cFdr/UhyQwCoZotj2PrwnS6Ybc9yslCH7aU3/WNgsNiEDh6bOxP795aMwJeXg0f4yqmoORQzvcWtIBaUP5i8TRId2vhpKrgkFdOeHzYuN+xHCO6NG2zE9aSmnioaB/N4SKMTyLyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740308934; c=relaxed/simple;
	bh=3qpAFP79fXzxR+Sv5MxCyoLVfS/mN63TrepG+TCiPQM=;
	h=To:Subject:From:Message-Id:Date; b=QRqRdWqqTRgVdKOP8o4vAFvdc97eD+RUyBmLCVtf027WRriR4m74ymoj1lqjk2jC+S52QowAalJLDAUTKrXVIbUIxR4aEXuBDP+lad5sn5MIlG8dXy6ovc9IHxCibZJaYILJVJ8uHMwdbzsZDSXesTrXDaV+KaEddniHCrhG9O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMxy4QlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMxy4QlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A473EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740308933;
	bh=3qpAFP79fXzxR+Sv5MxCyoLVfS/mN63TrepG+TCiPQM=;
	h=To:Subject:From:Date:From;
	b=bMxy4QlSKzrpX/T0sFDk5+DWudFNRC5fps98+wPX3fWB8E9ZP0dZwFyxi/ntUm5+/
	 +MO5pH8nX5hDjUgFtAiNk2b2ZUrfQ3XNf+cuLJp27vVbT/+4K31njXdoi2sYl83IoX
	 IUB8eDTdj4McMyWKBFaSo7DaQEdrm4idWAABxBz0fbrh9ZBbbCXRQa5/BNmHVVFDw5
	 YWIaXp8lSs1xQRwCHoG62iSTFNIjUkq/NbsROO5quQdjUCP7aiGuqs/eCLCRHVNMUV
	 OeO8v40RyzlqxOIT9IqI+UpJP1GJqrnO0SDjAzm6eT2C4WE7adZjV21nrP1hpmHsh4
	 1cR9qYnL6Nv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2EC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174030893358.5346.14301383319758821015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4dd19ee20e367ed3178b9a8acddd8d36029be9bda1ac1333bb0272e11df4228
Date: Sun, 23 Feb 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740308933
