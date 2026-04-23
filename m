Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AFE335BA
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776904654; cv=none; b=YxmDRgvx1iOINDazOrals+fkxOwxVvzdpJCZbTN4NW0/cyj2gMFKptROugKcU7Asr9r8cgKtz35IuRutzCPSn8D8uLoLrPw4x74RGzYKldjxK4ATzkHHiG1UPplr0bQSYn4Q7iEpCyO53FXC5UxpUfYn9HTJPCoXo9MyObQQF3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776904654; c=relaxed/simple;
	bh=ZWOrz9TqCQ0y5D5zHHZQiSOiUp6HwLd3LRpQayp/KFI=;
	h=To:Subject:From:Message-Id:Date; b=Lh7mtMGuuoi55E1JrD5XGZK1z2B6VTovGNsr3BRWb7C02/FgBy92VAdTxEJw5Huw4Y7+PWrz1zogjaylsTx1dKoHGbTusXHJKmWP8QGDCkY2dzwn5uL90dnbCPArU5vyNCZl9nbBsLuGZZDWoCn4PaWSnBDbW57hXYJw4M8TGGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLQ1/mHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLQ1/mHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF0DC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776904653;
	bh=ZWOrz9TqCQ0y5D5zHHZQiSOiUp6HwLd3LRpQayp/KFI=;
	h=To:Subject:From:Date:From;
	b=eLQ1/mHZgoh+Lpk9dkcoJRWeK760+XJJqMh1ROeMbC4zn7RceBJ/LJmjVsaV39ksF
	 5NCaqX4qZZa2r6YNpzrZwwB0nRREyGCFmwWHVSbsa7bRgvYB7MxQXCyi7Txm6VlvpA
	 ady/89VftVyjfJWt3GTIT1CZYAanxH6Vp4g1OpktsIk7TFuvzgaOe/maYsvl36iEzU
	 3n+K1sYVlgfIvYRj+kvk9DnMV2/g4DXc5Fj/awQ5CQQ9fse3UkLhDLZXMDRKOH8291
	 4MzZAi8Wm0/czEn785WOCqZ2QSQnYdhlaL3LW1fjSm0TeY0AydCaad6tCKfDyJsHH+
	 5LTiECRn8TI3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF022FAD3E1
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690465368.22106.814626124408908189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10deba270e691a8aa589fbc4d00799bc9d9221fdf044ab527a52827316bd6298
Date: Thu, 23 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776904653
