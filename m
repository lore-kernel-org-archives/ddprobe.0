Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A312A8DD
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745792394; cv=none; b=tkRBAYsG4gpiKfpOpinbaXvIfD3tDmSRb6u4Yt4AcZIjH3X3Tr4p7X4gjPxqNxRH+o4MfD4r5dAp/6crDqUlF7zFQ6ZoCGEnNKSk6b+G+5pEqF+L9biNT3IR+xtoT1vcuu2ce6+EX3gb8B00liM7T2Ni0pF5mlqmA6F1YzwV3Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745792394; c=relaxed/simple;
	bh=6qIeYVRqDD+BnGUCdZ7AX/tkgEntP0dfPNTR7rGbxyA=;
	h=To:Subject:From:Message-Id:Date; b=R6i9IFjnLa7qjWwaNiQLogh9wVBteF6Q29wYyOIDgNEgpXMy2L181UlnPF+sH9KArRAzhvXLW1MT0TjgMlgq5ir31bUsdxe5uHuORxZgBuguEVQ0WP7gGwDORBwXGzP3QIh4x26kau6yIEeudtsJgtJACLcA8aDmbm9VMJ7W7lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYA4I2ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYA4I2ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B6BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745792393;
	bh=6qIeYVRqDD+BnGUCdZ7AX/tkgEntP0dfPNTR7rGbxyA=;
	h=To:Subject:From:Date:From;
	b=PYA4I2ugiOTZDO2MGYx8Uduu+/Aneo9aDu+q4BlJjAt9OBHDJVGwIYA9P8RRrV0A6
	 d6fqG6643G5DOQdVOnchTsYLPZw0r9rB1kbgJ1pGKVP5XXXrudwTzuKjPQBSOilV/8
	 4tIIyQrTcnJLigt1xlczTmcrYJbwXA8/lyz2HJxBPdcw3ARhJoBQKkTFXMmB3APeem
	 TDrqoiSCSMtJz2POxyTMVZyW0xrZARLhQFpDIOWqsKtU/MOwq1jGaMlQ9L0pSKeWR+
	 BE/XaXqKtG7g3X7RVDrOgaG3scbvnkDC3RNjRIEaz0cHT9o19Jar8+qJYBPkeYXjL4
	 iWRlE8UU68icw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9519FC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579239357.12285.13371908092534587063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca794e1e8c3915c97b7a3ddabc19b5e1a408c7bbbdea49eb457d81dfaf93971
Date: Sun, 27 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745792393
