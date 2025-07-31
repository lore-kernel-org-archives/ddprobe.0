Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE1286353
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753924794; cv=none; b=vAkvPyptjjzPomsqE3k1wx2PJdgCiZzzWUwKZ45PCWy2JHzKIi5pN5xcGYhMxTeKOHUN4/b3b2NX6768Yh2JmPa5sqTCR3xoXlj74HuUx9oJixhGdqDy1BbUB7vx8j3oEc/aE4MUs7T1FPXFyobH2dIIzkFuVObA916MTfosEp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753924794; c=relaxed/simple;
	bh=jSYW9SCL7MKm4li7Os92R7lR2aLQFKJ+i96QyPO3d+o=;
	h=To:Subject:From:Message-Id:Date; b=IN/a8ENvqecGiD4GaiOXKLVIFMHRp1jGAqq6KVX0hBcpbZp+4plR4oq2MvimQ9EqZxk3sol3uH5zRSm2Qrf71pjXp9sMgm25e1KVBQVgR/0IpuSMfevJjlt8IdVtRtZno77ZG5So2n4jnFAmCtD4mh+1KDl4iagenHLrft6nBCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhJnLHXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhJnLHXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEE1C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753924793;
	bh=jSYW9SCL7MKm4li7Os92R7lR2aLQFKJ+i96QyPO3d+o=;
	h=To:Subject:From:Date:From;
	b=UhJnLHXJGEDxzsk+WH+zUjabcJE9aevtdPJHIsV2I//kvwvV63WYeZFSKO3A8LzeA
	 O1HE6nVVgbKx9/jnsAhTgmSjsJpnJZkhgchSTgrvfE8xTA5zJyS1VNelU9Xjxx5oKp
	 rYrtPkDOp+MK5K4AAJsSjyQgRHBo7YkSuafDWyhA9bvEFPj0e4pklwIgb54s/kGeAh
	 4myRic7lxOVPSX7I8nL3HxvGQDBdw15jxTfp00lkYO7OgwgJ0ID1G+Hc/+4hCRfDqL
	 MqygRwktt1gsyiV+myiMsLmmRCALL4zjeT4TaNuS4E2FrlwEPcEHenNBlMeJevieeE
	 qAdlXYf246hzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4CBC87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392479357.16865.9412746643958090559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bc6703891abbfc6b1c81820c9fd0900a1fecebe71177ec82e2f784c69d9a85
Date: Thu, 31 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753924793
