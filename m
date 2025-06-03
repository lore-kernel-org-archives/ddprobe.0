Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF3A1E570D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748974194; cv=none; b=Ig0ZDnkmuI0opXtjl0kL6edB8Rr1B//4iFwfXCOqQKxp17NUweqtFYW+W/KgM1hj6fNQ4pdfChmTfnG2F2vu8vd8w7+1VXou5431cYO3nm++DRowZusm04fisqtNPMhB3sToc7ZFe5x5I7LIIp1WPmlZeLt1Qfai2ndrUA6NOGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748974194; c=relaxed/simple;
	bh=9uySYCN4ypyclLQrYIBQRv0EA4hDyMd+a0uu1qqKWNU=;
	h=To:Subject:From:Message-Id:Date; b=Szzkp32c6i2tR6vv6FXm4M/tsAin7FfZjpWf7ftMsujXhJ6yr+UEyBDzDArcCzutg1ztC3iVyipMnU2iidfXV7dvE3gwz41DoTcaoHcmzsQjDofNfvuS7OUWwKTjl8KVpT3MdBUkJCQLc9lhSvTU46SyoLBS+AicT1JdUFrzy0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qS/nWMbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qS/nWMbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A4E8C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748974193;
	bh=9uySYCN4ypyclLQrYIBQRv0EA4hDyMd+a0uu1qqKWNU=;
	h=To:Subject:From:Date:From;
	b=qS/nWMbrIvkJIVGg92iJbdEaRUlNkMu2AVvcMSMJ5SnF9VKmneUMoK7GtX3ntCzqH
	 M2A95P+zBp32CF3HJGa5xf9y3bvNZLDwAbt5JXYPsYZqEjLzowzw0X/wIy9zjnvEmw
	 BcmQ5/vbnxzydx21A2zagyqo85cqtodgnVUbx6L9izUcsly3Aa9zG9NSKfBz1FU2wN
	 /IrZnDm+qGFm937mPqjYVHkSuXJtZtrNIxCQGUAGJM5rP/qrXgU8wYgRTzs98M2CVY
	 Np8qevzUuXCho8eEIrWYKthAo8WYOExuRxlYGqW+VD6WJEmFSnhs2mvvo/CCwmeY2a
	 KPQQMPT5mzfKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F928C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897419358.19882.1099471054511930516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10af653562d1aa0167a0abbdbe7a666ad28b6259fccb2f8ab2b172d3def296d
Date: Tue, 03 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748974193
