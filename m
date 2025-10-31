Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268D92BEC2B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761884994; cv=none; b=Hw+v4XVy0sFKHTvAQEr9CANg5kwy7HVB34tOArlgKYZv7M1KD0mlH9c3wxTuyGK9y8nbbr/MVIBJEAPZahTGzT2blZN4tdyHHNZNsdWnQ5MgsA6k8iT8No9cxa6hRECIorqXNJDRikYAGqLANyGJTSRZ9XwdONqJ5kAOqwgctpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761884994; c=relaxed/simple;
	bh=YmJCMnVC5vwRbXjzBwmfGQrPfKBkEhbcct9hma8Bc8E=;
	h=To:Subject:From:Message-Id:Date; b=BuBqQM/AFrkbQrmpbdGsYJvB0gxo2L/bPtzH5qpN5ZzZL2S6gTTU1eWzr/LgTICILUQ+0KPLirmajxkr80C3H0plUNcU8crHxBTJssw6jaSkqJC4Rn+mt0/s73Xab9TrPrBvXPQoY/fRAPKZYQo+ixHeeSwwDM+CVKenxeQ1WRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GP1h6Wh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GP1h6Wh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8614C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761884993;
	bh=YmJCMnVC5vwRbXjzBwmfGQrPfKBkEhbcct9hma8Bc8E=;
	h=To:Subject:From:Date:From;
	b=GP1h6Wh1s7Ol9vaQt9N1BwKqqnTfnpG8cxf9nJM0kanbC/ybrvP5ECgRrtLcHBQce
	 94cN25tsGcieetckrRF8jCRMyCEuASrEITPl1RNjm2wD5/+pla1krzeuKPzbd63Vqr
	 9I1oI1ISVZivw5JLo2mal68e6yLcP0qA3J26x41neIzgGHnOi/oQGQB4s5hFBHzTR2
	 YUDs6cX39Zbz45SU17KM+EOwW8vWI4lzhdxhxuCcVv/PisfcouEj6v0n+9akikwBV5
	 LaM8go76lEknqyUC9MFW1QbAF+75PYf3u1AXNjS2pFFZsWzyWz3Hj5QHb2zS/k7R5M
	 D7cyvy/06bh0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C71CCF9FF
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188499361.17883.2077613822297757965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250448a82788fedc8a9e8d56ed2cde9ce3fa34826fe2f53844620ceee7a4856d
Date: Fri, 31 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761884993
