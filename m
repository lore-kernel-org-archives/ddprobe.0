Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D2130C147
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779684754; cv=none; b=JAl83EDZNpYbWs2E3Bo8HIaRnrPt/BacGPHCAzrruS7VeD/8gNb/lvDRCuUmGjr7nGh7fhQDvYjeaPZuO/JiCzQb/7yRT+SrOzKt1aQc+at2DBt2H+SP35tyS+XpL1RkLwGF6kaBolfJrLLQnBjDEVkj/BQ7Svg3ZuoxfRQuv+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779684754; c=relaxed/simple;
	bh=OmixirDMOXQr5LsfGEXUabDXnSiz5wnnRzaETM7+1a0=;
	h=To:Subject:From:Message-Id:Date; b=CmYIiA5vzO8RypINjNsSYWGzOlmux8FkgKw5ygAX5wRGTCqvDOtEir+2PEypU951oghQcGQKwP0eB4IeodXZMk1aiKL/zvu/jd1nVXOlagvmYFSwG0HSxwj3dKd86dRD1GpihZa77gd+u911v7eUcYefkPTG3zWCyXZ1ULAwbnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiN64DFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiN64DFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C265DC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779684753;
	bh=OmixirDMOXQr5LsfGEXUabDXnSiz5wnnRzaETM7+1a0=;
	h=To:Subject:From:Date:From;
	b=oiN64DFS/Wz4Q4FHkA52K0e9hMZx681OIFkCzXi/alsTQT1Gue+07YuA48C8OiKHl
	 28+pduQnHyoDH7JVwi8Mf+TpT0nJWtL6ODFB8zYY+wDsCCTJKQ31vKsQX1iAP+nRD3
	 g0JZ4HC7lGMEFmssXRdUmxES4krJKRJEQy1cBgfq5/osjndtRyqPMO6Nn4gxn9kz2P
	 7ZeZYkF3xlfvVa+0YiVBQ0BM+95sXabBQqLgVQp7ySnKwG6M/NxUIAO9XdVFfTVWzq
	 lITWWPTWjJMYJssaXm+3/RIHq7V+1WYaDlY4TzgEs20WlP/fYTDEyjZ1npotyfcE0I
	 HAqkLBf++9v9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E39CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968475368.15239.12644624764970351569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef54a2dd3bd585dcc88439cfb939d5cb773698ec922e1933728daa9b2cedc453
Date: Mon, 25 May 2026 04:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779684753
