Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF31246333
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763002794; cv=none; b=VpuAxjxOZg7K90VEmJUYDPPtO0FBt7w7ZkdAGtWaYfDDlxf1tmJ4rozX+B74BHhFUgczOk17uN1bBKiai6KY37yhYv2ZeHXwnXOju9l+yJxITGxODu6jv0p7AlSjRe6pUqnUdlT2i55oh5pxpt4VmjU4PEdeTYLoW933GCDsoiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763002794; c=relaxed/simple;
	bh=jY3/8bqOy4Y3z4EeraIrqbJovM8nINlY2lNBN5aqDrM=;
	h=To:Subject:From:Message-Id:Date; b=t0FSLfcDBoIt/jpz+Aa72GN+GmxSwa+ovYO472wNccuXMTDKw5YM16GIsafH58xEpC+ieYXQHqPnzb+UMKwvFI/zsA3EtTOFA6u6xpJo8EKAzJJf/qnMkB2saxTw/BZl8e1m0PHEiVWS7IdcNL2Y8v/akMM6L3ihlMRhBn3EfNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmVJqNfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmVJqNfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B73C19423
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763002793;
	bh=jY3/8bqOy4Y3z4EeraIrqbJovM8nINlY2lNBN5aqDrM=;
	h=To:Subject:From:Date:From;
	b=cmVJqNfscQKUx0D5zVPbBA3wmaFMXMOiIu76+ERKmTcaZQnAJnU/q38mg9DxV7fn6
	 CbL+vtVQOkcFhsgOOKGaiLTiLbq3M+K0+xKryHLJ/Ld2jPn7zlxauVXzjcxaBmo5Nc
	 f6wdj3x5lD6NIUlsBvbhgluhIPkGYaK2w+rD+RALqaqrw4JW3EUKF5AQb9WXcr12qK
	 fImw47O0r4zdYxjXtg97mVmo/C7tMtKJL7NVPrcNsaD3u/HUvqbz8LF1SREtuYTG1c
	 Orq3OIWQim/v/6h0qQcFntCIHTU/LvbGqemAHxyNnBZ0jQ/BnJV1SUVuf4I0a7lOTq
	 aLehU4oo4h4+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97927CD4F48
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300279361.19775.6048867395718552765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9395055706daafd3439d9b39a1e22a513804f146c871f71f0a43f776d76a1a6
Date: Thu, 13 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763002793
