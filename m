Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E193FC18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718687963; cv=none; b=iGZlfwMTLTOOYsQExlYgsUqN+bYd56/jGVu3fnjtlvcccrpkQY6d7ONp4wgbCwUeY2e2BLBDJpN+yYeB7QYWpmWCnjI6VIxB2LlayfUkEFmMo6bcOzK4PGLv2LVnUSzrvIhPlXZeWeonG2bEjHEDwbChctt1lwJt6zDgsLqlxxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718687963; c=relaxed/simple;
	bh=gwCEsIm0PnjRA1yNZT7IeO5a1nciaFXa/zFZom/2nm0=;
	h=To:Subject:From:Message-Id:Date; b=Jg8TXcyJJpscT5z3qWQpPjxafwtLyKnIgBPbVC4e7xTT0SM4VLkh8PkP5mXd7bfQIYsq//g7YZY4rwMfTZ7XLXCeJzXhxlDafbLYv48o+kcep8ONl06dwV+0BzMGjkTu5+UI7QL+zv3NxFibDgLF71tH/PzEKepQK5kSEniB59k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJnJuCb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJnJuCb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEF2C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718687962;
	bh=gwCEsIm0PnjRA1yNZT7IeO5a1nciaFXa/zFZom/2nm0=;
	h=To:Subject:From:Date:From;
	b=sJnJuCb/jo/zXOuBgxKUgb+HYrccE+KIffiKtQvrPkOmS22d0P/p4yT99ZQBWes1k
	 cn1WiYOSfqIN5K3W7kXJ68xENOE30s2Bb3bgKVZaa604eN7izLtYYi2OYvCLwNn2Hs
	 +kFr+dSOZDLMWTGu7VqvRNT1xLIE4vINtVJnqv/vH1O6c+L/UpPa7Iwpllk8EEcvg3
	 FskR2uCk4t/K2by9s32ktxL9QKnWzgWi71lFht7ZSjkdRG9PZcPzhf21oq9kEx6GJb
	 hfIPpNrEUnSN90Ve+vOtstjIjxBdMI3p2hO4CQqbkDrXTkWgYpBPRd3Do9fwwLNv2K
	 CQJT+r69MS5BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D77C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 05:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868796279.8988.17955783744921603687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ce86d8e8305f612bbeb6fd9d47ed236d3512a318e73bdcc82c7f241420d522
Date: Tue, 18 Jun 2024 05:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718687962
