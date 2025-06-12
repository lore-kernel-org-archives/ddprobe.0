Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D21C13D539
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749754194; cv=none; b=tpP3eZ2QL2HvSsfkxk+02bsQK5LtmI/kCEwlsmbEJoDLeagf4sS2xHTmamc8RUsB67SSjJQwWK33BV0HtZYH0nMhP04M4Gy6DllsrLDWupSgBq6cdiPTm2dqSVcbdlBJffejbBQU6gRB22GCNhwrayipaRV8zs4GANv7WP0htXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749754194; c=relaxed/simple;
	bh=QpTJeSP31r06eiLmr24gMSl6x8ADjvOEYlIPKKNAVpM=;
	h=To:Subject:From:Message-Id:Date; b=pL6P3GbmzzGYUUrbk+bBIyxqj/+7708Ys/Sz+XdToLjALfSA7QYH7YxMEGfke4e9m4rXJTDbfDmYLsJHHRxWkMd6mZmO2qmuDz0PauoGDY14CmV4nyW04OOFYPdYEOIB4iMNpQlzmL7pHe3wxIXGTdD0tirdVYlmtG+n30z0BgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izbs4H0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izbs4H0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE45C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749754193;
	bh=QpTJeSP31r06eiLmr24gMSl6x8ADjvOEYlIPKKNAVpM=;
	h=To:Subject:From:Date:From;
	b=izbs4H0lYqMS57+MePIMSFFdE56sSiZOUnOy6TmW/XJmy3VHNxFJE7/vmKWhbus1j
	 OdGGEvs8mq6xGv1JiXLWXsFDX7L607XneCI05QnRwf+XXykWVOmWowpUWM82pBCK/5
	 ojfY2mYFreFGjkMbrTJX0HOH5PuQhMNNzSyIIkFtTH1FLNDBWUPXgyp7ZlATUDBT40
	 V97ANWy8cC5SA6b1ZhU98psR+BTuUqt8VDx0LJqjJ54W64MHsfAXMnefXDShzhnq2q
	 EMl2DArCZIssEImwv1ICW6f+GTpUJAkTei1pw5Y3CQLmHc2ljvOCgwNqUDcZ8Glehm
	 CFJfaDBURZW/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F9C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975419358.12424.12517609907216446831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9c14c4739a2f573dd0043ec9a4d875211e61d4e5f02c2e6501cd37fa4c49ef
Date: Thu, 12 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749754193
