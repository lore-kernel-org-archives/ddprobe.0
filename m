Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7ABF9EC
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752372594; cv=none; b=TsCBgsc31DoM1GPMdRx1ArYLz54mVbWp9tFHEWrW7oJb/VVjwXs4uFzmquBxAUPk3r+DTRLQPwzknN4AZCKYckUZ1avMQzR3ptimVTOx0ttWC4TXgDGi9jLoBgCqFi0N1auQDJ6+2fIYmmrWYJk+Mf3JXXo13SWGOH1RHbUt/lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752372594; c=relaxed/simple;
	bh=sFtouRVHiUOQdrVjt0DnU1cZyQ6ckz82Z0nOQQ1US2U=;
	h=To:Subject:From:Message-Id:Date; b=jopD+o9P2N1BgsxPo6uw8HVUoBnj/nF7TuzBeQzPrK+9td2qKaSB0PYuNCxOWBH4sQSP+dpmiWbxehKLfyG0NZEEma5C0YQmtkccWSt4z3Z0UrlhWs1DhFBgxcz1NbfqNQeqyhIkDDAbIioYLFtR/BSHtNmQd1RRL4LxPvYL7CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmG43s50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmG43s50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A333EC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752372593;
	bh=sFtouRVHiUOQdrVjt0DnU1cZyQ6ckz82Z0nOQQ1US2U=;
	h=To:Subject:From:Date:From;
	b=LmG43s506KVU6L183WrkpB15X8+1dxv6pixdpEYYvE2KCbJYgPNgui1THp4sF2/0H
	 mEymvcbzUB7HJjPNtFQqoZWfzoI3Nbj67ipVWrgVuQXDjBfmYqoKy5GB81+NbAddCr
	 1VGm5BXnQ2wRVWeU1dV5X06dQEsaaG+9NjyfvCl9AVv9S/Dk/8byNrjvRkFcgPaDUM
	 YPvtkb2nzR0LmDbMWFfg7zYlLUgd76HVgNX2ZitqVknJIQhAgO1HZlwW6VZMCgG24M
	 xmhjtWgKABvpdKoHpMdXXvDQtgfDYlJ879QI8D4qQUrRWFJV7FZz5SWVezYhHCt9L8
	 vVuTrl5Y/3kpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7FC83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237259357.22974.10162101018124697261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46a3424abd5d9a803c617a3f2fc8ff42458563d54ee6b041a736e15b3e2e2b6
Date: Sun, 13 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752372593
