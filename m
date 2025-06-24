Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F358170826
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750741194; cv=none; b=F6HWM93ttbON9u4p09QPAO2YJaNJa1pJy4hsWraecjzFZcrUnbDKzH/yTeDORdr8YT//XRo6NSqS6QnCxDLn/fYFI7UYbYEi5As7NCsvMsPqmw4uSATypwlRcfxMucza1zgjCMudxqzvEv4/jqPRM4zaJPPGQg6OOceDETAXYN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750741194; c=relaxed/simple;
	bh=+yQrri75GbjFkqdJzbjOLCY+//a0X0zfNNXt2qrMW08=;
	h=To:Subject:From:Message-Id:Date; b=huIedlNxD7s97VcF0OhVLvpQw3c/jj9W1xUCHsKXIsjwyihjfT+DNQaiaM0egNeWUITMyi2NscxAEjZhn5PEjJgRXutsLnfP8wxKIrbxO385iuOam0GbJxCOUuFImBbEf/VtgkeBcM5nNk1S3xgubHL0BOlI2Zhy20JKudBiiE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjTlQczf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjTlQczf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD20C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750741193;
	bh=+yQrri75GbjFkqdJzbjOLCY+//a0X0zfNNXt2qrMW08=;
	h=To:Subject:From:Date:From;
	b=fjTlQczfqww1+FyGyvRcXic7poWMiYIHUddTo7Fx5YhGF0n2+05GfzDYgeVMBaimj
	 moGvm5dEYV+/dLhpPJaXGCi4esYWDbj1PFEssKu0AMY4yYLoka7R6KWot6BjSbzaQ+
	 3+2nI6uPPVttbp3DjE1OwyQtw3SeCT9w9yjX9Ei4qQeu/+yXE01SYoD8mkroCuHXiq
	 gtnLy8mTdu+syGqvpGAEnCPhxUa0M9Y7b9jeEMo8Dw0o5BYMuGE2NKgZzqupxEw6oP
	 2B9G8xa6AlnwWO9jgEvmBnA1BUsnVZbiPHh6UZIoRxsRiSGN9g2zjXWrP05uh4689N
	 IgtG6bZdxFLsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE4C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074119357.16558.12249121389245328184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b02cbc223e5d305b0a7dd90f6a7e273f836b6f85ab6872fc92e5d3654ff28e5
Date: Tue, 24 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750741193
