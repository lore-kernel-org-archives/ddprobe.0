Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4746E1A275
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771726494; cv=none; b=fs6hfn8rs5HSi5YaECzpA/tXP1DFC1z3bROifYAiqrSTecZVp08dhh9yK/SeOAp4Jjk/D+DVtVWDrP+XI9+iQWJCGz9BPl3nAtA6Poj6lvXWzKWkcsD0PkxJw+vk+rI5sbofzTdT2Ln/iDG8aAy9//75iWrTV9yvja5RbFmpSe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771726494; c=relaxed/simple;
	bh=MsM5MR03XFstKnK+8ig3tlEEfXFdpEMdcMe6vEd5aDM=;
	h=To:Subject:From:Message-Id:Date; b=tmmA7zVGEC9rRO6GxhZtcKFLTnYjJ6mXkBottcjuoOWUJwGSUqXrvdYc/AlyU6TlVtVzzY0Om+evkn1/zkUhKgCyDFy9gMIzcTy67uQuQYg0F3gVqmBy2diWiONWf5/p2JW5eoqoootRf0ZzYYXZKHqVhDo1jamsG6WtfQAXgIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDDaqN66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDDaqN66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E06C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771726493;
	bh=MsM5MR03XFstKnK+8ig3tlEEfXFdpEMdcMe6vEd5aDM=;
	h=To:Subject:From:Date:From;
	b=BDDaqN66wP/TVUlLRIzaWNAGNwhxPQL98yx15DHb9Z+EelVfxTygo4lH6rb33GC7N
	 hRnZKjt/vDhSVqY6KqxcNTAolPwvouOdaFebRwbDrCTsY6Q4IZWuuOOPw6oXGY6vvX
	 /24Y55/xC1XvUB+0s9Q06NCSv4OlYC1NjNbFrG21oRs9klbC38JZHtdthvgroetMJK
	 GDQnuYhowN6JwLh+1lqRqcf2nuOoLbpFD0G5D0vKAnov+Kbtu9Bls989Piapg0ohz0
	 +HGGrm8IuOIMUzkunzLXCDiW/yRxxvbwk0wNft0JsDkS34yTJfcwBz9tSb4zSJi0Vl
	 VBnNw5t1puQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FA6C624A4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172649362.27004.101049594686355111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db81f0be247d0a74acef1ceccf79ce3f9f872b5f2d22bcb4c968884938b2594e
Date: Sun, 22 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771726493
