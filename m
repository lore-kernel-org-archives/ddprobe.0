Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01C8309F00
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762775993; cv=none; b=mUD7//AJu7pxwKpZHeHAs5jCvqfyrYGDPBt3MT8E6q+bKvCL5vf+Vot00v0MbtPJNYCDR5H93G1b8f/kwpz+1qvQyx59XyoVARNc65Q9dZxnR+OBwstpBVpYfYwk2cVEwta0WCFNBO5wo3tGY2MYa0PVppU5O5MlgJH0InfYLcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762775993; c=relaxed/simple;
	bh=GGblfFDfPGKMg9B8IRErrraOLWsQT1qYpuDcWoJOp78=;
	h=To:Subject:From:Message-Id:Date; b=ReqhKDZnantDpPUl73rd8jqD4ebm4tbdmhBVdpPPGRg+VPMSu2fbwahetuLF0zsYMJ5NVVi+RWYYwogozPpJKDtZqz1hyMU+CI9JQt3wuEJWx9jhCcVgu7nqXH5iGWLxLZGy7z8RfGl/vRwxBzQsAyglj0o6nvzEF1aizd9RWSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujvqmAaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujvqmAaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDD3C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762775993;
	bh=GGblfFDfPGKMg9B8IRErrraOLWsQT1qYpuDcWoJOp78=;
	h=To:Subject:From:Date:From;
	b=ujvqmAawasDVpmVPWtTN1FLwYKIHXwZRPj1mA5/sFCJVxpvyt7xdyVHzJdHmggtYM
	 JV+wXontyg4BMLhpqROkJhaUV+ZI0bV1kxZy69g1gYHVkyuEveiRed0yunmidwDQcO
	 ENRGcWShaJndnaq2m16UJ14FiR2YFiOCnDlXdI+lKCXi5oOVy2HfeYoEnqirmmE1g6
	 lJDWV/KdfuDjlYhCHiR1c2lBOPNupSmtpOvmuRoVwv8iuXUvTbZqG5KivYF9CkYxTD
	 R3OnggHVcg3n2+d+WkK3t61eZbgyKBiAgyXg4YMQ1Jfo9HQqZSTAVPMgLqy2lExAY9
	 gJfMyy5WGZTXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90360CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277599358.30255.1208653880197100096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720440d9f1a8a85ac7007fb61da5625eed332162d750c03ec01c21bc79df74e7
Date: Mon, 10 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762775993
