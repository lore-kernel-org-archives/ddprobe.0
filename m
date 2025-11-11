Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1643918A6B0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762903194; cv=none; b=EaA2vLi6y20L/s5VBWBKZGgpJYfeVgERTT7zTdlGGkwjwfCAcvIDs70Fgl7ijAWhk0uYfGgcmV0kGt+7Dbz2n6/PCshw3wTgFxDp3bP0B+SuliFFw8VrverhIhm2sqFzujvU6w96/D7CI+ORG2hFirqrDFem9BZF+kgxygfJ35g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762903194; c=relaxed/simple;
	bh=XaTyFpQgajW1tr7poVLw9J/X3DBmbcbDoxzIsqqzzLE=;
	h=To:Subject:From:Message-Id:Date; b=HMriu92cQsg+YqRhwUjQDI8EYrs4cERbrujVQ0CwZtXty5iLMdkthJrXonYs50XWtr98OVFOQu9rIDRWQhJ5sSjs11ekZllc6+N9y51DsaWygDyw9yVvfyYT+J7Dy4f3vi2msJfm0Ra9TAL567gXN8ReZ9MobEezBoka4zt0IVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knK7oQrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knK7oQrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E44C19424
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762903193;
	bh=XaTyFpQgajW1tr7poVLw9J/X3DBmbcbDoxzIsqqzzLE=;
	h=To:Subject:From:Date:From;
	b=knK7oQrCQOu778oYvAc/iU8BQmZiFqEEtWxunpYiwiyOcOP1oslB42Vg0GovsFVZK
	 5wI4lhs/EAdNx5PHMeD3g46NzPbV4vdU/zobaRr5Frlo3IrLvcJq2MXX2R31VHliOw
	 QB8mt7XJ6sqPvWvqgmcGUnqUtDEr1xfDBiq3+IGwDhC7SuZWoWIduhFYvQ1tUllXDA
	 3p7EioZ1Rk2MCDL86yThEjpDJTpQJUyF/b9E9roU9daR48dWVVrDuMq3bqax9btz/1
	 25InbwoFpeKAOxguLUeeElhQMupXtr1KvieT938ZkcBUNKLPAGhFXU8PnICH73rh8l
	 8BXkPIBrjcXgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB7CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290319357.1544.11237530158360688554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ded232230def15468f1fe06cb3d6cea7e6d867375d5ce92cb42c553d594622
Date: Tue, 11 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762903193
