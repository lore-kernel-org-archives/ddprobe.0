Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4131B6D08
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743116395; cv=none; b=Yvkbe+U2WbLYDlSz+iIf95+OrVcGBXviHXzCCR9e54zdoUqBCdjNUErqFlEPz+gqikwyp71NjoXr/UVHDmuOm1j2uZ1HJrWnGE/i7kwuoV7bmpyZUdMO3DdUUSafLDh3jwBfZN44p3QtNDtZbPRyU8UXwDQF0vBYYRQJYtV9e0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743116395; c=relaxed/simple;
	bh=YpRDVVZDW3d7mMJCG747vvrAqmYaoAdakjp/2cuKwlg=;
	h=To:Subject:From:Message-Id:Date; b=LgowiTh6g2x9NKGL9RdozYaw9EtVB+w7R8Ffd+AGNTpNEfryxRsHF12z+3l9rwEw4/ZNxWaVpJ1YXPL5oCPLHj03+BbkHTKKHqmr2vG1CJGT4tBLVsIwavWEbSN0sBRCKM/znT6KqTQG6oaNL55wCQgYjTG0H8TCfPaaPDJ1pq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNMO9GOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNMO9GOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8910C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743116393;
	bh=YpRDVVZDW3d7mMJCG747vvrAqmYaoAdakjp/2cuKwlg=;
	h=To:Subject:From:Date:From;
	b=XNMO9GOI8QQI3bSigBbgk4jXdPk+flw7FsFU3fVYOospBJoHpqiSxprjUaAJ09W4b
	 Xw6WNI+CXb+nSF0GmgDFkvzwvPce4BC6S3mj1wz7+xIx54IEP/glvrxzX7tc5yvhRR
	 aGKc6Nj31jbudrnDVkaTDAb+aj+acVwvZBDEzwVdMxjfO3qvLIUjmMXM/O9X4Nvlw6
	 koXHGIi4aa7W6cnocMP0YR2cfPN4xpe6DNmrvjiaDpQvD68TKvFFctUNNX9Y5Xt2TU
	 Y9st5bXKHWZeaA0lvJcxNMma+Q0gMH+pQl36GCM7L9a2pPpklV5V1QHSEac9V2fgXL
	 oWsaraeQ3gM1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44C3C36011
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311639364.23774.16444400153389311942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9821f1e35a81d2d91e4e9aac7e64c075b9b27e6ff3cf4cb71f89f9d8de5e161d
Date: Thu, 27 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743116393
