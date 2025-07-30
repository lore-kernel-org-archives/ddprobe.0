Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BD122172E
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753910994; cv=none; b=VmIGtArOA8pfWbDDItB2FKfaQc54JvrEMAVmDq35Bkoyu1xJgKqE87DiAVnbzta1ieLInvTA6ej8GZiIL3Lxh9ecrK0IBP6azr83gawqq4OdSABQG99GnbrJXCv86MbumBKHGsx/npWaaoMm0fxE+67YEAp69BZ8sfO7BwlBRVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753910994; c=relaxed/simple;
	bh=JaJlV1Wbtfv+i6ZVMonG7tA8R1fAaJnJYgURcD+N5NQ=;
	h=To:Subject:From:Message-Id:Date; b=cyCbtxJzSrV2e0f/6XCR5TeRCCRFhKEUk4pBEMSoffCVedF6lV3KxN0oBFQ9uqvUYkOw2Hfd38Ph1LnskUMAHT4DiQ44cewg/Y1xaR1b2VsfpJDenY35E5BISHV9V5T0dkCXPHlTmnp8h+kuPsCJe42pDlCTBDfi14Zq3ZNjq0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bm4HXYXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bm4HXYXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD0CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753910993;
	bh=JaJlV1Wbtfv+i6ZVMonG7tA8R1fAaJnJYgURcD+N5NQ=;
	h=To:Subject:From:Date:From;
	b=Bm4HXYXyOxW737udfy+unHI6nlOEVJy6qRzJc5ogN060JULISPqCISCIKPwPkY6jQ
	 VK6BI7osENcegvxUWdL2REqSr+Nn0OBIGPUe09hnxlcgrg9o57eYG3xS+XXbl6l1e1
	 IfhuWPaQTrhtvS8rZbLxZRHRU0Euw4sUIAVfh+nDhoQUoPGxEOQ9YcsWmBmb8wRjMc
	 TfAAqaoJLNm1yzYwP7feRbKOP8f+uIyUdbrYNdduIbVJT6huYJlOM/bnYLyhvYs23c
	 hw07u9CXzTIU66rQV1FglHoH3qzPvDxBjHHsMCXlxCkrcFq2VPabxFzT4gTqyIpJAG
	 6QFGPkdiyipoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E06C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391099360.30081.14758710669450395859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c9138a441d0a383d8b07cb65bb4d914488a81feb55b63aea1272a2d074ed16
Date: Wed, 30 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753910993
