Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242DB3FBB3
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759365594; cv=none; b=MVsySKOU3SG8zhieQ3BxTcIi1IPp56BrRfbGlg9u/Ts8zsoW6muoAl5MG1EEn98DkHEb+zlvBIEZaqs/PT642SFZkqYzK3wyU0F6UVluJujlU8gLRkZygDmipryei+MDjtCDcxJ1O7ng4A8csk2+qRccSjeHxjzCaMICSGgG/h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759365594; c=relaxed/simple;
	bh=l2YRWvBZ/1bQ2o0lj+8Imu7p3Nw4s7btWKygpVCOAe8=;
	h=To:Subject:From:Message-Id:Date; b=Hq0vjkse1p4l88DcW8RmcPSxu6RG8OG8CpPqECm5oVYravYpSrUCsHkMT68fIauT3yE4v9bQtPI7SjJCpXMrK2VAihH8y6fAKhewgaAWnxiZNbaL1aYCfgb5Aq8iZclJWbNKfc0WID8cCVODEXB2q1X/E34GtO9xgMyjjLAFlyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsBepE02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsBepE02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A447BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759365593;
	bh=l2YRWvBZ/1bQ2o0lj+8Imu7p3Nw4s7btWKygpVCOAe8=;
	h=To:Subject:From:Date:From;
	b=rsBepE02P7sVpUumfKqv1xnAiaxv8NmJzeAEHQ9qIJMXenFgvKMFfv0Ay57QuR4OP
	 Horahjg1Q5vgZ1Teqsa3orz1C32sSaCtB3K1Gp9gad57iNMVRPtUCezXJwNqbWTtHV
	 g1OKKYxMdJiQtbMw8uyy+HlN89W/npL9rOUI7ilETZcZPAoV7FmXMXeGcMXgszGwTL
	 q4/59WPHXE4iiOGAJbTtQEUKJXjxBUDf+q6caBcg03vfqrZZuW6oeGCLZbsKjr1TzL
	 44v1/hX30b8IIojd9A3MMAaP7I7/o9QYkyUdnyMA3jzpqN8KUNeXIl+keGx/W1kEis
	 fJ9ek+3nU9zZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC5CCD182
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936559359.28484.16638996355771169621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728203816739f73726110c2b19a712d69bc00a85f02ff21d846fd2d2b40294f7
Date: Thu, 02 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759365593
