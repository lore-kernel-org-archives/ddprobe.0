Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEF43B19C4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781680596; cv=none; b=RUatEzxi5znQD2uhkEuM2QCV4C6SGcuqDjKvNGsf/ThDG9765BFZPkaveZbGEJ1pGNr6mH3phhWl+TcvggcTe0TyEajBXxPQWP3Px9YnbKgqzAxmKeXa55n8XKuBWsUreilFsVZmFa9UiFzSQ5KVT0kYQhE7V+5KVQ4XaGAZHDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781680596; c=relaxed/simple;
	bh=UZvxHXX3GeZsQmK2jRpAi5RW19g0EahzdA1VRtPnqos=;
	h=To:Subject:From:Message-Id:Date; b=bgj1Dw3xn68Cn09A/6rxXcyjtEBHv2y7/3nLXTEHo97mlD6Ezk3FQR4DRKYKtIYZMVjHQJ85xKt0F8D2T+WL7z3AwDInD0u6T5ALQ5gSsCfMoLGYwS9Pa3NW8NIDbmNIdFO7GcY/8qkSSuDQibMMILTaSV32B6HwfIF3ZFnWueA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIdI5csF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIdI5csF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DBCC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781680593;
	bh=UZvxHXX3GeZsQmK2jRpAi5RW19g0EahzdA1VRtPnqos=;
	h=To:Subject:From:Date:From;
	b=QIdI5csF9iT3EPmxKeIUZrlI/fipGyH2sPFELfZmO5fw2D5UGRdKiuZVH37l/BWFJ
	 R4+y0a5w7nnCJhUq/9mR94Y1TUIdwlPsGylQQDmfLKw0nbsdA07AIyp+LcnWyDJt0b
	 Ht0qcPqK/SqCxh31Wjx1v7AZp89tZTwj8Y/I8u+3SYJiaGlnf+iLsCGQR2hB+YNDpa
	 Yz7iQe9x/ctCd39UzdOCwQ1hUY208wLRy67zKUaOigPFj/HYOnagP7yQASGTofhU40
	 O+aN+KDYGg+X1f7pXbwFXiusxHOt9xxvNG+kGbRQrMm0e2RQnUXW0JejQUfWMmIlO1
	 tRooeJoKgDJGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DB0CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168059374.12385.14665788768128705125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6375e7b715c891b5776b8ef3f79dbe3fd6206762bc8090672c8c9d0c6ba3b62b
Date: Wed, 17 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781680593
