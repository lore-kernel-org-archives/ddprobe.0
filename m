Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D2C28FFE8
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746791394; cv=none; b=Q37+GW7jPO/WC87MvmqmXt9qwZgeDUW72uHZ54IeJkDSBrPrYyiW2Vjpb7hQNTOwqoqdiiM9SB1bOp/VCfjsqcARl6NsP9/33OaHmTVtb/txhmqJtkuabKLwrh3xPNYSpfy8R4sPeFe1xNWjFhI3iXS2NyPQPljEr37ZYOh1kSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746791394; c=relaxed/simple;
	bh=lrcC8j/v8olqG2RZ8pPJ/7rngdw9JcAnQb9ZLqGV7lU=;
	h=To:Subject:From:Message-Id:Date; b=naKxSIl5E+hhdH1X4QkscspGlr4tbsKffOEehaIvAvATmQTWiRTBO2FD6h5nckm8Hq2iInd67kGnmtIaieCM/5MpsIe4xrj/oOhHyo097x95KXc4Oa5G8nHRAWuWAeWZFjJhqcS3RvPJnOj+uXYctzkUkkgnYRK7+yr5BXH/Q7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlJBSxMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlJBSxMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF61C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746791393;
	bh=lrcC8j/v8olqG2RZ8pPJ/7rngdw9JcAnQb9ZLqGV7lU=;
	h=To:Subject:From:Date:From;
	b=WlJBSxMNLLJNLkzDIHyCUu0AduSzb3o6zQzunlB5uXgQK44SPPnx36Y/q7TgsN8mH
	 edZj3RklIvV6lA7bMcNrBTW0mEfzk1hT3TUXZfiantSv3RIpI8mKimGrNGhpSZ8pPU
	 0NQ7a/GDk+dlbeOb4/C9He7II3bUwPn/yO5NT8BgPY3icjveXQ9f2d7S3siiGdbhIw
	 DJzUTD7pq38NLlJRZrv3VKy1wBNTjFpX6fpHcx7ZFU9AbyRPc8BXF0D8cil1LKh72J
	 akUIsHwSkYsIeoHVAxO4Y6lQGSPG6x0j4qvZkklnQVn1UO/WE6fCh9xtVbBiVJpzLN
	 iwXtrlTtvQFuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2FC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679139357.2911.9732329360853937106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3025ab620f75d9afa4ccf38d357e03bcb76c684880e5a692c0e6a8402b033a62
Date: Fri, 09 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746791393
