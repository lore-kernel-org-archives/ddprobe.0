Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F83725E461
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744198794; cv=none; b=f4rZDpaO1h5C7Rb8+tRNZJJYbiVVuBs9bP57EpIWilxQ/jx1xIxDUvL8QGI25h63cqi7abLZ7eM2Ti3IcGoZD8qhcinwZacMK/QDHND8mVn6K7vIxCFGXFyUc6/SRrXegGeMHxTYp/j+3M026Nf6KVfjUE04Lk2XVCE9ZXoPEiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744198794; c=relaxed/simple;
	bh=IOPxadyZXGnGw8ROGpGsFHS81JyARMiqdmtA/t9lwgE=;
	h=To:Subject:From:Message-Id:Date; b=Mii1/nexWqg47gOLa3RozoMefvP0yAizmW70nLghSF1kgFSkLUn7XiTGi/xYYdH4p2oAeJHvFs76NERSP8MbHIvSVfLrjTnlHPFTY9x7mDDbvfGRUxZP78fP3D53D1YW5r088nrHPMJvdZo/ouAMJylsfYP8K0C0emjBpZBIZm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rx2/hzYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rx2/hzYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00FFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744198793;
	bh=IOPxadyZXGnGw8ROGpGsFHS81JyARMiqdmtA/t9lwgE=;
	h=To:Subject:From:Date:From;
	b=rx2/hzYL0HiA6fsGsxkudpv7AT5A07wSKSjkt+C2TvquIx7iX43Gi7qHJzUr1wxuz
	 NeZD/GUq63PjgJfLy31ByY89ReTGNyRhGcbYvbpZK2aDP2uGi7BoX+5jME5YJhEeqq
	 xmS3oxVXMZ14i2qNJbNmxOr+2BiCbUKFTsEBGrLFOegfx63MCBksmVBL6fQrk/zg0V
	 fMc99pu9L4fHNi2kiNXQmjw4gjpk+rGrBJysk8TOdEm332eYhtgLnrUd7YzejSxVeP
	 aeGjyncqGF3BPJqQiVOZRHPCs1aelXwdKqEzHAEGr8x8gekVhm//B98EAFBGTTsX3M
	 rIGbDfMZoY+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D1C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419879358.4378.3764360654362488333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8be658f83e649b08bd5369914cf65ed706f99ebe1547a7156655a6065dc11eb
Date: Wed, 09 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744198793
