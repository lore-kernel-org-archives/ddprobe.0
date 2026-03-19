Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB57531A542
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773951294; cv=none; b=D6E40IxiNvhEmFCbrQRNeji2hknxQC2gT483hwB/wNVHURa/92ditVyKs0kub9TXBnc2RyXTojQM3AbYhYlRLdrup0wT5BZPEybGMHwUWStZjCehX6Fy1vAcpu9WAIlRUiXXHP5K2u5KrA0dGYxrayXo4px0Eo93IKLtuzl1mKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773951294; c=relaxed/simple;
	bh=TAZWl2Y4j4sqzuDZWhUYS8uHQJ14v2N6QgYfCi7ubnc=;
	h=To:Subject:From:Message-Id:Date; b=WhcyY/tMnn6qwj5GLTqKgfUdoUZoeZAnOt/TylUlLGjVnQlsfJHtz5BcveYrZwlYqLS3+ChiBysqmjxU/kWBlxaYpYSDijK0XPayhiRxkv3jrOZdkSMBS4CnauLLNOqOKF2POvq2a8OJS8+cZp+c1ZSVmrEcaHcAGjMRld+cDgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHN+KvTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHN+KvTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCBDC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773951293;
	bh=TAZWl2Y4j4sqzuDZWhUYS8uHQJ14v2N6QgYfCi7ubnc=;
	h=To:Subject:From:Date:From;
	b=cHN+KvTxFJgdhvJlcWCLphLFgwLNeptpECf+O8riZ2NSljpAC5o0M/KaHlCV1AoQL
	 WXEaZZ5yRwXC0f65JcYzoe+AvZ+Sr/x94upArJzzKQDRF2XKng0pOBNl9AGEdQmMSL
	 yIJTZ8ON45XmvDmbSvMx5X4xtn2/W38+Ax6dPbi8NEY1A6ceRP63Ojfh0ls8ZrZUY2
	 p9LRzdc5LRhsKfknJ4vyigPWbZlQ3Qe92X5VZtUUmVrvh6Ax9033TBS4sbIlkrvPrl
	 dd8mjYgPVXmkulH36/QnZO+McDBbULr8Rt8LCJyXQwrqIXJVu5nhtckth8zG19sVOU
	 3Ut4WclbNtm5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD961091916
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395129358.31167.11861407439260091449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019bda688571a7a893ca54241d216440ff6021ddf42dbd226104a2189c09c19c
Date: Thu, 19 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773951293
