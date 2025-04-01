Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD4F1BFE00
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743478194; cv=none; b=PB24Kvwlqz2ufetMAJFLSut3F6kRhfBBRmrD/PtvpyD+KT4ql5GmyH9tMParj7TYNbgO9IHocdNX4ERn3p/ySyJ8kLYnMDqJMMbzx5wpahmiNywouA+QhlYuba1gjHHvnrZ3TWiskiZiLIIE46kGuW+wzCaFzOQn/GJMb/iOTHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743478194; c=relaxed/simple;
	bh=WUsYQdacKAIoPNhVItWMfIqUI2YcUEPYW6mnSZPxdaM=;
	h=To:Subject:From:Message-Id:Date; b=V58JKSyvxJMLWbYyQ9S/MD9snruZsJ9KoWDfp7XoHRecHBzRXBX+uwnRia8tZIl8o+t6WRZyKxPTWsNMpb6GhtuAqYwYJFsQjB4qyrTP5k+k5M0bIw8ULSZdNq1aUn0co2EuZPzBeMZ10S6uYnXNIvmCtXRNktXimwn+MKL5AHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueG887bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueG887bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC43C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743478193;
	bh=WUsYQdacKAIoPNhVItWMfIqUI2YcUEPYW6mnSZPxdaM=;
	h=To:Subject:From:Date:From;
	b=ueG887bf3U/AnRnzhiSuuoz4XpZwb2IcsLBW0mnqucZyHdzPURSebj7oNJl5IJbwt
	 lDENeHRkKHzgZFLnhq+T5mBG4rCLx08h0j2wvz9GyP9TPAHOJ/R6RjlxuYz56dUOS+
	 3Y3KJVBCafxcalBBcd1olG5f6J/5qmFLqLLMUqXIlJD+WomvM2nktn2YNfEpu+vlDG
	 2NiM7QNmTyPzWYiLcF5p3SRkNCvkeX9MUEmQufpR3Hd09MBPV9kh/qSuZVyXkWRtWb
	 pQeBkGXxZFY70lyclGRVaIPbxIxbq7i0L4iEyQKlyunu5mZpXs5MahDI7eEizStP3g
	 S38EYmGYTkBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA67C36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347819362.7179.902642778139808209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1be6f234ca00185c26f79d57621fca60f2c6f1bb75dcb6f6387059fd94e383b
Date: Tue, 01 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743478193
