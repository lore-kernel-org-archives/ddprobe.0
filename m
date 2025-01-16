Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB2C17583
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736990154; cv=none; b=jIrKSuprW9aDf6BowH873MgqF9dGiK05I6JTpmbhskZvNuZGgd3WB86E3v8N6tByzooyxb6O8AQYvARlRIQ15/vXxfmchPQXt4TCzGfUmWbQrFCRwqzBFWGaTPNjOpUwdTbUBllC6PGGAHHQOppRUjIKzxZMvqR+qYiUQT7Bvlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736990154; c=relaxed/simple;
	bh=hapMcdzbsJzO7OCAAEWtbMUp1crySj2wHpbtFfaRbUc=;
	h=To:Subject:From:Message-Id:Date; b=mI6d8iltjyIqAa8+cF+3AmRX0hqCqiAnQndNRMlOAH8pad4LLbPuNSEDeOZ+76L1uZQPg+r4QkwrWN6mLy82yI6Ef9y+eKxLbQEDJw3bx7uP0k74WRaCXzt8Y9mScDOqJnXuWIesqMTacppwUFhIjrNBsUAiNtPBLsmY5QA2SjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USeOWICY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USeOWICY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ED5C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736990153;
	bh=hapMcdzbsJzO7OCAAEWtbMUp1crySj2wHpbtFfaRbUc=;
	h=To:Subject:From:Date:From;
	b=USeOWICYbkEvN8yBIRt1MUG5gniIv9Wu4yfo9O8W8DjOOl4qK/JxEr/fE+Y10/X8x
	 P50g8L2440Hel09jX/y/nBClx3mqWYInimlZ7PSHH5lLq8+fbLlEKr6ARz05fA7aPb
	 J6ama1H65w45eo6CXSFJuuUJy6tmIz7prae2vSSdJRH8iFieMi6Bz/77DLO8Pkeq6O
	 3/XlXxzaZrxdhAqih0+mDYcq5zkRJVBGPK+/FVDA19v+IG4NChGCLC5DATP+c0ReLk
	 Q/allck8NlQ66wlNK9wxFG2sNIegzwcOKnf+O1aj1Uy7oR2EUgBxitVKVPiaw6u9TU
	 V5X4rWZctUuLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F82C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699015361.1210.933134140163848577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d41102013b2f09c43548fa79e8bc999a7c9bd615311b3f2712896820724573
Date: Thu, 16 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736990153
