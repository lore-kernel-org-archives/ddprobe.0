Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1078764A8C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778979034; cv=none; b=E9TpE5xxry2Eta5UqioBg8jb0ASTWovWgy1rV8xEwMcmZwvbcd2OUYfW+Y2Fmq0EUbZRc2rGDVG+z8Hsfb1kjgbLFjf6PX7/uOmjp0Z3RrcB/y4DRxLO2RZS1xD686QbD8ppR4RlReCmo+b1qG9ca0cRKX7o1Ehy4zFYCGtUydY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778979034; c=relaxed/simple;
	bh=65pjyLRa9x2dG2VclK4BsHo9H9fYLpMxIXlS29dFTuw=;
	h=To:Subject:From:Message-Id:Date; b=naVruGSbBU1DcEuJQZy3Xil7RMFxVRt7uSjPPEqGCn2rQu65AuaQG73tJvA44UEo5obuXkT/ZKmMi5NdjgyGIEyajf+itxR7aQXYiqLkH9l/fk6/wqBsvk+Q/RrRKU4WGfsHkoMoxwBg+95yj0qdt90c8knkyQj8P4rxPfjKX6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnXJLgZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnXJLgZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14E0C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778979033;
	bh=65pjyLRa9x2dG2VclK4BsHo9H9fYLpMxIXlS29dFTuw=;
	h=To:Subject:From:Date:From;
	b=RnXJLgZ1kJQRcgR+7DnClZ+B7KHgK9lNOeQmjqgKSZkSzuO20HTcDZ4Cky2YDvqjc
	 VBxAdyRnbIw2H8X8e0tqB8O1y4Pfaklms2Fr0HQee7fuDWIT2+AnfHSL/gaouOhR8O
	 3nvV3/525dqA+wk3PkUzv1AvEbMKXJJfpgv6/x3Dvlc0s+cG9M160k1sYHaYwZ+Des
	 BO6l8EhqCYCoZ+j2oMhZlHYxHhgrTQVIoQSZB+sxpAjjXgkDqkfmHW6pwjgZMTqPfi
	 ZXKakJDXPR6sK1LRbFuAxFNsm0ThT5uQyyENegyB3vEWBRUlj6jWNb6UwLa2XmQhoW
	 jr0ylL6Ww3r4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAB0CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897903368.32139.9188641927632000945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e003e3dab2a89b8d2c30082bc1e02cc9a09f65372f72228a745e91b321daa2
Date: Sun, 17 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778979033
