Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B791DED52
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747524594; cv=none; b=dzswAr+yvfvkpjOb6j6UtHOt9CIcmONMsDPnfTNReFbb+TzJ2Xexx6F2JNoVIwE0l/mCmKxDMwDM+TJJcKs5YKJ7qVWkt+DIi26LNUeqA3u11FsS+Z/sU6nfPiMVHtWry78pfDxo6M90nTPyZf/xfGywIa2YDIEoY52QAZrsbMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747524594; c=relaxed/simple;
	bh=3Jrrj59V45/cB14nb+LUsIzo4Ov3Md2+FT6hl/Xx6pI=;
	h=To:Subject:From:Message-Id:Date; b=jga3+oJUHhmHDMQUvxMupjTTL69SNI1O0/G7aLUBKySNqp0UD/SI2SQlHyaE6kizebnPhBSI6m+Xdex9zHY7z41Z0stZeCMwhehtsyCsOXuPuCMpM/z9LtV0FJOF+2jcGkOzfh9SIZWXYXjhKBvcsfxJVB/3rFUn/vhyNMn/KTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEH/Daiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEH/Daiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A697AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747524593;
	bh=3Jrrj59V45/cB14nb+LUsIzo4Ov3Md2+FT6hl/Xx6pI=;
	h=To:Subject:From:Date:From;
	b=SEH/DaiqZkWrkj9pau5GX54lPJN9EX1qcVJGAWfzocpJYyqcRiC34AvsFIXb7Nwaf
	 cMyIFSAE68yOQSB7AY6LE/xlrJFZuXRxY6OvbuLR6HYztKhLM9VApeP9+0E7GDONVp
	 nkC8DKn2E9vMdwIdFUPrapwQT9AX9I9OPC8rqKE01bWtYmOYR8O0oxv6debLgGzOHL
	 4ChNWUUj8+nNyhPCdGACtY4vVHUTtQkpxuDEMJeCZ9ch1hDlyFIuClt4ko4otmulIj
	 P0aK9sd4JV2OJuaRwtQHgESljl0GZIuU4j1SqAUfgPm/tOaUFUYlmccVeDYsjlAq/x
	 z7sN5Q1lysM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D19C3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752459357.10172.582610498643345841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508c6e7b550b40f197adf305741907f82ba14fdc4257c3e82f8f559f902ea05e
Date: Sat, 17 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747524593
