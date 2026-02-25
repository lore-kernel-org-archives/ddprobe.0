Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEE01ADC83
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772052294; cv=none; b=qCbJppWEgoCB/ftUZkxLrCzU3OYjwn9zttXG5r86bk+cOxpAdr4fuDQ2D5Go1cPX4xSgihqA11HAccTRt1k/W2msCtPreQQ2riK0RhnbDMU2pDrNGn2jZk57VbL/rh2TjX73ea1yzsjUvLZ8TMX2NOPqLGT91X2k7Iq3PCVKQh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772052294; c=relaxed/simple;
	bh=C5oQh6hyHsHnnYG2BwBG8+xmVIV9PwnKzgxJzKTOuRk=;
	h=To:Subject:From:Message-Id:Date; b=qnaxyh+qPWOUmGZjCM6mzteDY6xkt6EkBvrg2SZ/RyMf3pAznYK+I45N9Wq8HMsrReoVubBvu9xtnivuGt9PDGrov7ZNNSqM3xcxXbO0zlfzf6qMYLsMa02iI5sKhV3lo8gUEg1qKue70soquniMrVJzVID/6N9tncCZtMA3vQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2t0GZ7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2t0GZ7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF4EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772052293;
	bh=C5oQh6hyHsHnnYG2BwBG8+xmVIV9PwnKzgxJzKTOuRk=;
	h=To:Subject:From:Date:From;
	b=b2t0GZ7fsZIAj2hWZoYl28pA5i8B+ckvc7j/YWdJYXeIYPRbgZaP58t0opn7DSrVR
	 uVoCKcd7MCQJM9N9IUvQOArGoO0pLHc7pumLGidRKM7N+DH2vwEx9Z8VjPkhGjbKdW
	 GMquIFjHuGONcLUSrO0EgaJNHQixwtXEIK2dwW9vG0xUOsXI1eV0pZg4LhlMbwUssr
	 n3CKkKhfMBS+0SuCmcT7DMYuakuI9PzPOSODQ5TxSGXNnXWFor8NhI6HG5INx+BlxN
	 rcH4NdGOPYw7AF5t9Md9Y47LLSeYb98lfKHjXwWwxBMP+YYewlNMc4JcW1fgoESBqr
	 /3acqVXMi4Rgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F26FD45EC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205229359.10939.9682304824848360488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65839a9d313790354c0a779be953038191526668788d08a9fb638d50b3e5d45b
Date: Wed, 25 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772052293
