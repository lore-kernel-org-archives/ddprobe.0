Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE051B86F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720545383; cv=none; b=YquhZFelqiLBzWXhkgd9rw6G++JMnTgzYoFW5zS6sMYQBJfGEX4ROy+dcll5d50HtRdu5SCZgMaY/gKYfXlsUS7u8eAm3MHW0bd+dDbGDRSjrUY8Lz1EFIOjRxlNGym2zXvIJaG0fjO7iq9TMfAzzT3mSQzzlxs2gE+2/NNlSU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720545383; c=relaxed/simple;
	bh=irIXAcl9jjKzFcohZYJM03ueWftAKO67wDJV3hOQXg8=;
	h=To:Subject:From:Message-Id:Date; b=VZTzcen5MTyoaHXaP8KV28mFSEwi+k8XcAMsmYaohq6HgcGKN+KIARlNKqN/NfwJxgqJb/fo0rf3DSXKIvTs5l3PMomRrYg1fPUq7hMHaLBssIFsD2Ee145QHUsxzzcJ6oA3+cDEDV7QhL1DrlZlXxWYp979kRl0xvr1PF96i1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ52NoYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ52NoYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F3EC32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720545382;
	bh=irIXAcl9jjKzFcohZYJM03ueWftAKO67wDJV3hOQXg8=;
	h=To:Subject:From:Date:From;
	b=PJ52NoYrUq5tCuNKo5vP61jdm6tQ7AZXPC7cVkqeDCZInVifGgMZnOvB3sAeryp+X
	 KoJsIZgLvCoDPAgCokrlc2XceIi36T+YOdLNjPPKLGDyUJMIgBKlmZyGpbbjJ9rzLD
	 BgB5gS5QRGrGMsBQrypKlA1rIg+lLGluFG6diqBE/YFRh/KlcJt2HbVXWPVfP4BM8T
	 NfSvCvNzdD7UuCH4z35e4tYq+jedH2Rt79+wpn+G8NXx2hIbMFmGAGn4Tr3fRVnQ5t
	 9Tc7pl9Kp0DRWtCf6h0q9TbDSe11plfhRf2l8eQKXjrX0e4SMrymHTYS3sNJAJ44D3
	 GhAjYtEgacAFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01BDC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 17:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054538282.2153.385195126508054920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9489405970865457146674af64a4dfa0086c0bb98d2b2130b9045bd61ce4cac
Date: Tue, 09 Jul 2024 17:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720545382
