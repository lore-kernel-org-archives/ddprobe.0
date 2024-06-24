Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638A713D88B
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719258203; cv=none; b=lFgw6KF8oQoULASNZTyAzdXKKi9i6Sut0pemeVRxN0reu+usBYWD48lA0Spz4iutPL5knseJ0MsrsErzwVlEKipX1FgMRvoSps30V8nxVFzzdcz8yQrh9fsmwL7jcHVbICwYktIPGq9H9qKYrctEdLdJrknmudxCQXEIuRbJ2z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719258203; c=relaxed/simple;
	bh=tnVHzhbei/uBv7D18jxDirDpwiih+0M+Y2A9KzWCWJs=;
	h=To:Subject:From:Message-Id:Date; b=J9QQ9xRoEfOD3mWAuUWMaTpIRt0B00GCuNhJzF8/bznbtB9FPYNw0yRir3H4PiBDiPUG9mEk56aUWNAASEZbmreNalNeTHEC58WmZFWpJPEH9p48Aec6d41Tdzx74w8Yhi/AqzjBK2wJvksjypK1Ff5kZyUTIcBSSgjtcHV1qd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWqRKGrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWqRKGrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA0C6C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719258202;
	bh=tnVHzhbei/uBv7D18jxDirDpwiih+0M+Y2A9KzWCWJs=;
	h=To:Subject:From:Date:From;
	b=lWqRKGrWSTlt3O2JQ2KJsjNR2LpI6R9fU3u5zHl5Ohw9g9/YOMm2BFujfy1jH9Sjp
	 DyrnvMXmVPtOFssA4hK2SuBNR4CDkvIs0VHsRhtNf+D9Ssp8Hq0s9zg9kKwfXA30oB
	 V9u+BFhQvoaY652CqT2iAKIMk4pxoGLviOwB9xG3W3IwUlfKeoXeZOjtVKGwYxPUc/
	 7a3qCtafbgCgMX96c1wbQP9TzG4efovgLQp9DQyKy6U3/zOe/tmvcXAGZQq/X55a6m
	 ilQ9dGE6aLxRg/lzd7NJj7TXUWKXEvsgc0KUy/9Y7LLmAnbF4FvQlFyMypoQziYb9z
	 ikm2hOK6aFFFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0CB0C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925820284.25975.15329509789843875716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bee9dfdae7809868196fa21ddf3b75960d4575bbeb84bf2ac9e118fd0be8d56
Date: Mon, 24 Jun 2024 19:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719258202
