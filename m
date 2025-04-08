Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4195779CF
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744079994; cv=none; b=afheTgK4otk1gMLpQ6gDo05strKPk3CH+RCTZONjBCiBTjopDPLTkp8cWHl9QJB7/Z075dLFkwhnSHDSYLWjOZMG0ZF35ozzTRGpLPeLimd4XiA7awqWe1EFs2+Mb2r4x+sInLUdRFC2M1K0GWwcRnf5mgXpW7QsOEZsb1Gut/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744079994; c=relaxed/simple;
	bh=vxLzWuRjxHwKW8WgnqQ1FfeGCFGooDJMQlsBLLp7bEs=;
	h=To:Subject:From:Message-Id:Date; b=ECQqI3ZghkKufO4v1K7qim0+Glh8K+T6ZjGsj5XSzhVr2S//YcczCS3syGn2sn3IIRRquII5lXZHGKS52qdN99odFvUlzCqfklkVtAH8i4wD4DjNb4A16u2mOAn/kpo45gCWDUJnIuY1xqQFP6d/BmhPB0DuDvifiYMSfvHRV3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/3VKwiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/3VKwiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84FAC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744079993;
	bh=vxLzWuRjxHwKW8WgnqQ1FfeGCFGooDJMQlsBLLp7bEs=;
	h=To:Subject:From:Date:From;
	b=o/3VKwiBNA07w7SEr3E4/TVCR2II8YFLV22yq9xjHRY0hfglQ6sxlrpfqRT12ByQX
	 5vy0TsNoFajsAkCobQQledx8cfx0fSjF4TbDtWDMQ3x1gLQbWukRW1VxSHrAewxIwn
	 XNpFRrmOiQaGZe/ihbrJswiOuM+7SqiY8CQYWdfE87txspAhlvKuJxIbdiqTrzQchL
	 VB48WxiHsRCY2RiQ+1lKjusjDHViGPGjFJypeA9EYi6peF9yRnb0DxCp+bGS5bLTiP
	 ZjAawgxriZkiwd40HT8EKSDBD+v7mi/DDj3kdbAEUUHYZxYPCu6nFSroumJg0qMGxw
	 NsIXoBOLJJzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F3AC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407999365.13171.7666808327663521149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2f93f2123de319cd7bd5031abb3b5266ae9fdc642e9abbeb0d033672768e14
Date: Tue, 08 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744079993
