Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4623184C
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705536496; cv=none; b=bwVQU3b/gMwbhzhpjHrjoyDOWrwxMw05/LK5OK5WKvNGoy+mxliq8acemv/jD/GCpjfwtop8+CVt9rvpOn/Fdww5vydTRa9XALp/IRkkSTIMCCQiIJKG5fgzQB18GofT/ghPebvv5ey8SHmYUgKB5tw9gJ36KL8puU8sHZnT8O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705536496; c=relaxed/simple;
	bh=LgSEdeyoIP8+BBm6ziHKZKe9CMAKDMEXNggnGJatA50=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=O4LZxTHRQIzrc3WLyMEDLSGY0OsoLwF8/knBRI9KGxhbUlKtFoA6mgJfQdlk33qvp7BHZFbxRg1Ud41CVQd83UkSPnAVEElkrMNLs5YrFhR8BrwO5Gnt3sJYBZu6uDuIm/EwdZcmVKyY9sgsJnFCjH04DZl1k2HGmD9GOvZxmpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXjRQ4kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXjRQ4kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB44C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705536496;
	bh=LgSEdeyoIP8+BBm6ziHKZKe9CMAKDMEXNggnGJatA50=;
	h=To:Subject:From:Date:From;
	b=jXjRQ4kR2oOlUta/z/9Te/PTqcm1m32qWca159lMXGtT0sU5jnw54u/KNVrvKdaBT
	 ausZPnCs2lKs7kCCEUgX0w/naqQwFL8t+zESaY6yZ6q0GLDxZxWf5fW24IQJtcVTCD
	 lRxqiNzEPHzlNuRjuaHnzHNjMUqg7v1ac/q0BwqlxtI7FdKko3A7zazvvQ5jOMNZTx
	 vjerYbIxqCa3S8jQX/5YgYqvuSgVLtoa190VsY4YSMKeOii+ZVwYAgX0HmATS2PnOn
	 4Ebnr5aLW26iftafszHi9H4fEBf9mkrMt8GUeFIsEfWUNef0g8jTHdCQQFnsuKsmzH
	 qgUZV9m9Asaqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60129C4725D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553649638.2159.10488250286479236940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975ce0c4a4fc5eac35ea50381cda274ecf1236ca50c1b8363fcebacf148f8d0e
Date: Thu, 18 Jan 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705536496
