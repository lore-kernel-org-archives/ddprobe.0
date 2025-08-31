Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283EA74040
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756624196; cv=none; b=U+cLxXG55klj7RqskKj8Nf5eTYkfJTJjtKjrv8usl+tbJUpSTxbGQHVfEMI19jFOX9vSsT+nNCgaH6jfJoNCBxGVhaiSOorMWlOs24j5xfvUy0sSIq1ImokTj4HyQRY+IlAE0ThwBYZk5/8QD35WVE+QtX8lD6pZBB9LHC6TeCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756624196; c=relaxed/simple;
	bh=YR3+RzVh+Oof4zzgTThvCdwvx6Urvki1rB4EKRlrpis=;
	h=To:Subject:From:Message-Id:Date; b=d19glTffNaPbE00OJqoriHeKq6xZ/st0zOtQhWYJy0m/xNixQVQmESJ5sWwtlm+0QWiRWIdZX/HSeQvaAmnt5xzPfxamuOnAeayAVJLeLmX31TzquNRoadFRO/bXMuFY39ffgMs/k+1YeBGp7K5Tp9vf20wjFOqzIcBWDhluL7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtuNvlc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtuNvlc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BB9C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756624193;
	bh=YR3+RzVh+Oof4zzgTThvCdwvx6Urvki1rB4EKRlrpis=;
	h=To:Subject:From:Date:From;
	b=WtuNvlc9U143Oc50auIXhGjLen1knYiACw2jb8hMdILkKWcMbU6o/ulxQaPhzcgCM
	 nTw2tZ3ttn/SJS/8//wl6e5ErWcZ40vb0Nt6brqyYAGKBrla5ikokrp88o45vvxVwV
	 iSwjEvbShNht89CyWTkO4PbsT7FZkHbw10GsSbwS16NSrgqxvP5SI50VaFbwIp9GCD
	 3ydg61g4sC421ZsKEohbQ/EElToxqEA73cagO2nzs7AG1pVC7DDQjkCDkEq59p1r+i
	 iXE1VH5Y1T+MKgfTBL5uL30o8tcC/fZcTOGUF33nb9tMhL+aE4wJBZ3xxF92B8Uz3n
	 U7g4kRuqq+7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33ECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662419358.21863.11941805587249065702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8013f9fd0687178bbac2f38f6bb2cb6d34801a430027928da6fe754ccf2d812a
Date: Sun, 31 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756624193
