Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2041B3054E6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764168774; cv=none; b=Zs8iB9JZcIIAkV4edyUndD6faOvQ2ibI2oGVo4G/JTVeGZ/TNHmGgm3wSpuCLF0kUBqPSKL/hb6AVC7KHK7p5d5Q3L6ewN6twuuoDolLiJa9wMqTTd9Lc9fafSrk5cwGOBMS+pZZnnsMlvQuQai5BkAgN/XThB0rG0wInhaJ5qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764168774; c=relaxed/simple;
	bh=WO2tQcKXJv6vHZVqW0Xl9I5s3rZuKsUXa0Kmn9rAFTY=;
	h=To:Subject:From:Message-Id:Date; b=dPDV0BEBozp9TFPI7rvOyBMT6Z9ioRNiVSUEueGG+nK9L60VvLoxaM0kX5P0De/yR/lTW5IQU7s7WxkM2HkjnkdOQ+qi1duBkL1dHYBNdNBi/VcuuEA64bsDBtN2hUDedkRS83DI0aBQ0TQ/wNfbYsEv0AKfqzhLAw7WgkC25qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIrRt7X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIrRt7X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC752C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764168773;
	bh=WO2tQcKXJv6vHZVqW0Xl9I5s3rZuKsUXa0Kmn9rAFTY=;
	h=To:Subject:From:Date:From;
	b=bIrRt7X9D5Dluhs1omlkH7p4E+76FiqwVJgx8vWACWNpIT8hcnbht4f8YLkcylRl7
	 G1SY7MZhw1pGOqjWg3q4F4XH/x2rxZdbR0giprUDsheWq3qEwp0eQipZevv1s+Q9lx
	 qyiZcbafqkXJDCwusfuFFXV5ZK9jLj/prkKYjeBxkWfZ/vNCD5vb9SXiCysKkaxSa+
	 1Zs9cCq/fHJ/DHsxYUgNfOv7/7sQMCuGwBKOmr1zzsaUo5n8m+cwg5ZTDXGw2bwzA7
	 rNv2L8Cddb8lGk6TrQWR7QsewMhbIRyWSKZm3aN3odzWbmwDp94CG7fM3hJaXhevNe
	 kYJIKUI8l4dEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A69D10F58
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416877361.26244.2095638715303834503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 817592860af4cb6bcb509e80d35b989d44f358358bded58e56e02b474a79910d
Date: Wed, 26 Nov 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764168773
