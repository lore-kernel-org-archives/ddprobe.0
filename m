Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CA927472
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763913714; cv=none; b=dQlG//vtIH5n/XJeWP05uKgb1WVR4+mC/4Yj8ivJzIxTRC3PEtsXYw/UkW5PjUkLqela0InGi0TR9j4SdVZp7SyU57w55OwEL+pb4+UUkotHr27gu8k03NiXinChtIKA5U+lW7FtAVkx5f7BCD5Mz2DBI2PnfmhZAI/2NZO72rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763913714; c=relaxed/simple;
	bh=k2TQNRR8rO8l4C050DdPNXM4vNIGa/7lMPAWPOgt+10=;
	h=To:Subject:From:Message-Id:Date; b=ODhsCMd5G5WqdAK7AaivquFKZpX6Im1gHVOk98SF+gqI/QOwa/EmWmCdlIMbSDSKDCX1RkA0YXwRrb01ZL1RPgQHwj7PLo++FyKFpshsUORbGmQSWXuzYv/iqYBbskYXqnMXGW83cZtOygCN9GP3+eLZPGha6TvXRZr9KN0ASmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5Aq/xvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5Aq/xvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF15C116D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763913713;
	bh=k2TQNRR8rO8l4C050DdPNXM4vNIGa/7lMPAWPOgt+10=;
	h=To:Subject:From:Date:From;
	b=H5Aq/xvXlEn45BIcr5AhijfcqCfY1FeNJKHEmPDT4oPtohAY9X0Gjgf2iGuE8kbGe
	 7xIpFv8+c5gsv27gY1rDz+YT+4wL0iCTVEHhx6wYYiv66p1hmHM0UXGLQ5oQr6hXqm
	 3WTOCdKyN/7RQaYbtie3T7hfv0iArooO87MGjgSYH4WWL1PGXcFqQ8inOl1TQwwWA3
	 qn8HX+ALWSq/ydlhHOja38DbSvkzqm08BDfayOr8V0yx0vr6ElEGLZyNO4fJu4t1vk
	 A9fozOOenF/MvJVCfzvdxi6U6Zyg1f3fysrEd/S/MWulQVDEEbY/BKXh6WbYSglfsG
	 LOtpfFE4/rVGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9817DCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391371361.24038.11867885540215645343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f57d467356bf3aec54dd7ed853ff312d5c38c7c548d5fee3792f2d998fde6b7
Date: Sun, 23 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763913713
