Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2C9347538
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781758594; cv=none; b=m+VDNjYs8EJIei///DO9Fu0dMLuj7N2uwC1H6vSERWVVe9s2oxUpCzuP4pb2140nknXtSMyTtsmEG2Kctt3s1p5ooMPF4VbBW659NeqL5OtV0uVMcdoxQysfpsGLmsO7UXpEdEP6CqsAQz4D+CF7Vmb8GYL7IFst7K6xi5EbVP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781758594; c=relaxed/simple;
	bh=2mTXxriN7dwrPVMNHY+s0UC2n+KbSORsQboJJYXKoxI=;
	h=To:Subject:From:Message-Id:Date; b=ejWk5BotDZdmvb8fOW6ajAmMF0PJEs4MfkX9M4laDs42wOMWQyzWQuRzTU/Ypj4PV0dNYlFmEnVzDoh+j7Vrp8Asts8Sxz5JFoQqLDKZ3lYXPnmORIlXoxdXbGeKbv12vg31CiiZ8E/wf/KI2Kx1DAJuM5bmkBc5dyQOKiaz/nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlCQ0CQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlCQ0CQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BFEC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781758593;
	bh=2mTXxriN7dwrPVMNHY+s0UC2n+KbSORsQboJJYXKoxI=;
	h=To:Subject:From:Date:From;
	b=DlCQ0CQ9OeOSitjJHjCYekNj7xrGQXm7Iw2Zu3XFwFT2s/5Mp+AE3/LLJNbz67K4H
	 xElsgn7cDkKAP1+qhFghNsAB3luj7FgH+Kv0qTGo4s6xVPEplQyUn2+bGmh0gJv2df
	 NSjFWhAd5pzlKKfsuzGbg+6TPYvgyU1fX2ogQ1JCDvpEaR5g7eOhZOo5rEHZC6hO0N
	 FyemtE7S/STDeX4o43q9kBCmvJzZ8ZOYvK+XsNhFhy+zKnSVbm5BX+EJ0v4vmPz3+o
	 s1+BobzFY2aafV1pxe4eeuDxbCfmnhcis5vX4VBth44kDwCMNsfTX2YPWUIBr9qKnH
	 P5HBj7wPcvIRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA60ECD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175859368.5813.1731577104110523444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bff7dd56a696d6c6e05339a64a5a1ef13e2d079a536a9844effa9733b666f0
Date: Thu, 18 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781758593
