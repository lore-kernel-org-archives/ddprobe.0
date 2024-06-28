Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB1D12E55
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719536663; cv=none; b=Q0SDdgcST1qiIKCUyBYXXELUBwIf1wmoG0zPn9GOxKNo6qBsmaMqn6ko7nZ/FdJJYS1mb6tpX92/ZK6y0YFlQXXE0TnUs0ivVNUefvTyK0K4cpcDyvvtFNm5LePL7YnXQfkVSFhsYGtIPUdmVdITPWAfbQyKz00XV88xBMsYU30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719536663; c=relaxed/simple;
	bh=IWzEF9jwcodaeh877xYk5sDEZZVPVSFPvU1MvUqsCMY=;
	h=To:Subject:From:Message-Id:Date; b=bZgibNo5+YTR5MW4Dy79yvaf7C1RXiMCgBFoWe/DXSxUenWNNcaAQtBCfFnYqTtcJz9DBR1ynnnGrRofxqFYYKZZ9zgysRG+GTCBWkXAfjVusIGCxopfvNFYClFzxgwv+uVmpjRi7wvCCzVlH1cq4iAqhzzKlBPDGQMAX6wJDjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPoxoWNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPoxoWNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9048C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719536662;
	bh=IWzEF9jwcodaeh877xYk5sDEZZVPVSFPvU1MvUqsCMY=;
	h=To:Subject:From:Date:From;
	b=mPoxoWNV/UGCxBoILeMX1qWTjDifgW2uxKFDGCR+KIo3BLUgAGv3rnlvqK07q83YE
	 x3ojHw+PpUhyzSYKL/sV19W/tql3F6MosHc2FAyN8fCwz9YHJrN4cCFeWqyvgN27Es
	 Ti/HdjJUF3d/kPQV0FZSXNLRtuoBN2ZDEUlDd1cyPSY6VOSDtEKqvQK7QLoB6RyX0m
	 M6LdomNG0MSuy1MBvPIAVe20X/zM8XDOUbyYnzU6efMLKEe7sRvBzhGCaxfxDS+9hZ
	 aZeUHHki/fRnftK0StG6TFKH1xDxMQgQfjs5zZTmPlC4TwQ7IHawtseiSTDSNLVEQ6
	 8Iz+bjiw3m0TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3960C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953666279.14932.17659313317352898605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa72e46ad4e3fb7e6fd49cc684bfeceaf29130aeee20eedd58aadd16e6a194ff
Date: Fri, 28 Jun 2024 01:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719536662
