Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B1C3C9EF3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785400234; cv=none; b=Xwhh2Qz0+YyE+pzQQlkMmkV/5t3iaa+Q/i9qYCXRxRROOeNKywh5Y1ShYRdoJ4FpCr3rXsC2VxuatiWgf8k723HCeyCxn7GLKZyRARgh4yKzF9dhC6byvntC84gmNTdRCk/UZNLYYB4g6XCcUKtwHBDYs+zsPO4VDVl5ZzfqHA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785400234; c=relaxed/simple;
	bh=nD5xL9Sm0vIAqijYSPclF31npStBUGLCDaivvXt2TNw=;
	h=To:Subject:From:Message-Id:Date; b=AKyxOGBPOHGxzAsliMoEL9dOF+Nm3EIPYh9+l6uxrTSkv0IWg1SbGzBDsL6kMo9wW3ffSc5VgC3eVGMP6D42vJXJBo+7zqE9ZKqvPk/Rc9LWd47zhy5zHzHsppUg44KuMt38EvqLTxkPCwBO7PzdYNagzJsXiazaUnP4oLfxg+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwvQvYc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwvQvYc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3A9C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785400233;
	bh=nD5xL9Sm0vIAqijYSPclF31npStBUGLCDaivvXt2TNw=;
	h=To:Subject:From:Date:From;
	b=GwvQvYc1RdUEVkPxJkQyoVBDv/VgJRWAL3aVRgRudLaX6Z2cL54TQTz3P85kBX4ze
	 Wg5XmB7xWmp7hYXDctJn+33cNPr+BrhOwt6BYg+a2ZwBnLahscV6NiMMhW580XK0Ht
	 1IFGZFMoYxgm/BG+JDnSh6cH++KhfJ761lDQLl9VmLlN2/VGiozzmpOhpVd7y++/kH
	 nT5P93o5W//lJFc4T9dGCrqrGjoQlNpxfB8u9QrXp38bP1L65eVOUXk1UOXcH84KA2
	 Q8EnC1kNYVDvT+e++LMoUq0naNLhQzNQGTNWElShRep/yuvSDMS7/6PAcDmzBq7Bgl
	 WCBa6HteFkXlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9890C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540023368.18883.12261489930817700380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf1b9b4cc40d89e998df84793a6a0ab8c9d7ff814b1b640b0084cbfa736dd22
Date: Thu, 30 Jul 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785400233
