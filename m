Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508B8208A1
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716540203; cv=none; b=NUnZOuYpRBRlPMEDKrzBgcVGNxuVM/BZSbGad8aWvrmHpxeokt2Q5q5Jc4zU/Hd/xJt9joGVt5x3c7/vAzTPv86Yp4JyUdSuoYx5mi0ntouQ+Jy+Xaezy30L6Y5RZqc02jeOWNAGPevSHYAGjIWYUTn3frTFBSslAAHt3y3IS78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716540203; c=relaxed/simple;
	bh=r86WMRXOqsKfR5G7l/5OaFy874M6E2BcKORKK/k7TxI=;
	h=To:Subject:From:Message-Id:Date; b=H6L7pYjUSPyKe6r5ySe0ppMQhnETVPwPsneJgMYNlYTmO/XJR4r3+0aX3DOErmtBCSRSG/YiLO3+zL59JjMRMWKRy40tjeBOWlAW5hoHsDH51VSdleppCzjfLbQ9B3hUf3o6YQfnr3GHd5nu6CVf0KswcHt0tw/WsaofQmFMz0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYwHzpbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYwHzpbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B57C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716540202;
	bh=r86WMRXOqsKfR5G7l/5OaFy874M6E2BcKORKK/k7TxI=;
	h=To:Subject:From:Date:From;
	b=tYwHzpbtntefatWwm138jibiVbmM0wnS08OhxrLlKOfKMyhL85/xHBxMtsEj2QUWe
	 tnZSccHTN25o83/eVpo+ziQtIEQDYWT1En7Ys5Q5rKyQY6yz1UWz8jWZL/M1xoA0k3
	 wZZG0jLl0yz2eR1Bdho0lhGiJfGA+ftvFheGC4lzW+y2rQFa794+VCYZqx/KbYMD8c
	 8mOjZJaEo86vK3Kf6qESwtLsoLk+fgmiljZ0BAtT4D/wnetTGfmbQ5OsLGIM3IRMYQ
	 61fB2IG4oILODocz34Xm2mGIMKOPFPFfhg72iM/EB7HXL1SNCDz6zNqSguE7lLg6Je
	 nO4HfDX6k5XBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0978C25B79
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654020278.32215.7977411216920135376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a434e4a68fd8cd88071816f492016f588a44fc2aa9672672587a5b95c9d02d
Date: Fri, 24 May 2024 08:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716540202
