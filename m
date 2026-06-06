Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4459E175A69
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780755274; cv=none; b=KrC2D9TNNAZ+CoCeOD0rDx3xKCdrJJLftCDi8C3OSDKy8GF5Zqgziv31R29OFuTde3oLndNk/zAV7KMT4+PvwyfMD+Rx//rQyC9zVd9nM34uuq8jTkk7WbqZUA/og0Z3pjRwjpoGlJzHl8Q+wMBdYVpnHYfeWxt4Uar6W3Owm7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780755274; c=relaxed/simple;
	bh=CCuUp4xP1KYaJvxHg95rQUDIQJLgl0ZWEFCN2lZPuKs=;
	h=To:Subject:From:Message-Id:Date; b=QLlTG4LknOo+d0utagn5VE5zU5jChkebR6NwE3SalqJ+lyYbjKIDIJOcLUWUbfU42OXrOg1hFAsFXzqTCm2fJRq0czkNbkAr98rWvOJpZu6ZLYfPl+2yzTywipo2onlCaavnHMU7397luk9ffHcGi4o4Dyrj2xM1xOkpQtvN6iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ng3zfHmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ng3zfHmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B6EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780755273;
	bh=CCuUp4xP1KYaJvxHg95rQUDIQJLgl0ZWEFCN2lZPuKs=;
	h=To:Subject:From:Date:From;
	b=Ng3zfHmYhSB+3KSA/4QjrO3jHt+PyXfkxIAsY92ZXzyc0ULGsmyN1bPApzzRKcq4b
	 ZEsmNF/llX6/IFbA3GI4KrvTV1ZNkOi7p7MrGJMZqa2gBXvAeuist3lrD9NkbdpUJt
	 J9SSqZpS5zkMkzVhWvBtNWiMPAq3rElxz/oDTaoP4oTN8sqmGQueNtlkfwhUty/t4j
	 3pTo7TPNMU6YovVjR8gX+n+8DfZyLsuvRPWv0/1lYEE/VKpNJyoVy7BWjhx3gwIeOO
	 RP4rFftD9/DFb23xmYVVOZPi2IbFA/b44dsBVpU+rEOJ8QcE7NYs0MLyvyFzI9FNn6
	 GDp5fwzSOXImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5D0CD8C8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075527368.13140.3656800804224299976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2284c04064537ea3facdefbacda28f0cd8273010bc6ad24481e26fd808095c0f
Date: Sat, 06 Jun 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780755273
