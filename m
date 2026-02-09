Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C92D322A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770597834; cv=none; b=bgwa4YHnxrJNQxTA2i2VjoL5F5MoStdgot97QPSJOLYuznNbRZ0i77XYsIBD3pmCMTCdrnRkARCl/kSBYOPQCCYBuAt1hns5FY+ovrRj42Rv1y2pESrV7m2iVdk+bQqOwcuiu6cv+zDT2lvnGqO69Uxxz0UCQUDU5XkCno1ZGpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770597834; c=relaxed/simple;
	bh=nzfLKW1+uup45qYzvK21ueseu/g48dY1uFqGXXrgSRg=;
	h=To:Subject:From:Message-Id:Date; b=rHlKVSQxBkc+E7nxobCgDVZSczLFOYi5yITTocTk7YxVMWucbn2c2X2di3h2Ho69ivhKhNbWaPaQwgdUZsLo/yDifJUCVOqAas7Eceec+xfpsXaZv8FRTjyaIlu0WScJwQiIm/snpDVv7Zrj5gMEABUKkOCTmrqH6ySZtFiQObs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhLlnKS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhLlnKS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DBAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770597833;
	bh=nzfLKW1+uup45qYzvK21ueseu/g48dY1uFqGXXrgSRg=;
	h=To:Subject:From:Date:From;
	b=jhLlnKS4sq88pYcfDgsLoMNTv5QfYqrBdvtWvkcZeTAtP8NMKWwmWuTZw28Ax2nOT
	 i07hSpKone0ZldkcDxvlanAjDBtM6HKoaN2kfIr81BxqsdzrWa0Wzk75Kd6/S3IbeD
	 k/lWOVdUEDTEHvnNBhuBe4xmjbWaNTkl3Emkl0P10pJ2DS0X5mB2gVgQK3Ybfnws5x
	 63pCxA9HqJkiTUYZ2+MWt+lyAMfKVUtv0dYDMODDrrB6KeJFhiPWhRu3BgVk4k9obO
	 HYipD9+s9hbBeJpkoK88WbgFTqxKdJ7TLsjNpZD7NQCZkKkIkd9sLytwuFeF5Dl6D4
	 dYjaUSUYXwirA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34ABEF06FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059783363.31099.14128499150130077551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5c4adce6c707bd8330ccff7aa7712a17b0cf97ea8d31eb769e3a92dadc3ec3
Date: Mon, 09 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770597833
