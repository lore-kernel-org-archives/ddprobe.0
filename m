Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304B0523A
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718411303; cv=none; b=rOoyIhBrhLvoejehf1zfUdFSXjUgPpiSIKRqvu7xJnNLc9LqDBI92Qa3Kft2+AY56WsVP4YCAtpa4vx87L0F+PJgfu88k7RU4BXHARj0RusjJe20yep1P9KjAmnQEaDW3NDTfIP3qzosu5OWywNAyY44RYSZyJk25KuA/dH+EQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718411303; c=relaxed/simple;
	bh=715gowSdVX5Rg+R5jEKLSOvLCROaIGNqJfk+PbiANvY=;
	h=To:Subject:From:Message-Id:Date; b=Zs3FupCN9HJCyl8CeCHEWfLD5g3/q1PSqEBCTEAEOspKumrPAJgPevcUv6XDLVfTCduwYe3SZKiPj3umWYefxbMoYnqDcwn/M7zAzgiYQqxK0mDTx0wqcr7N7b66RCyDyAc0yHD0Ilq/OXRkbUjXiot3FQvf3GzSOb4Ak7GyJWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6uYgtK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6uYgtK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED27C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718411302;
	bh=715gowSdVX5Rg+R5jEKLSOvLCROaIGNqJfk+PbiANvY=;
	h=To:Subject:From:Date:From;
	b=b6uYgtK5ba1bsElN00Jl/ObNGLYJeNaHz5b8Ln1Ut+GvWmPJbuZFR+IFLeTfyBzUg
	 9pSq/e7L3tJxb6si6ZYhajqIlmiifuX9hLukIacqYXWHm7ZJrGnrX//7hPebnHc35i
	 PwgUyIr/nC//cBovOm0EWzB6d3JdZkZU1khSTygUxb426/Su/gsJFO1Q300sghDnmI
	 gJLRbXJ0hlIimsiv4tgYFoaXsSaL3v3yAh6Y9NuiYfvOm8zDtuJsRYy2Xe2wXP2D6S
	 NmUvWRwTb/rRDsSkwzkmRkRE/SRv/MxH24+UPUsMlxDvH7zgtPiOoahuB7Bjzwyp3W
	 k0aRvt7qbYoTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD16CC27C6E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 00:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171841130276.9364.3149367522140991057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33ecd89a93c28c713a6504ae31076baffe3f8c9965038b6e8ed54c3fa06a6f2
Date: Sat, 15 Jun 2024 00:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718411302
