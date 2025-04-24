Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B290481DD
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745492394; cv=none; b=QrbEn4mTizXdwDtMvdlTotmK9b0osDN/m9TQEkb4LpM8Dz2tRHyp5qHuchkMoYNMrg/as5lc2tTacRx9qgZuIF6VroWyXp54ELaQ4NrYokP2J7nNbrg0ome/cbUm4kgJAxR9CQ2zjSmT9btnG5BJ0SoVxcSE53qjIzrAzL4FvQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745492394; c=relaxed/simple;
	bh=cYJONiNcQgQL7BFrOTQoEI/+XixIJYKvZgUQV/M1enE=;
	h=To:Subject:From:Message-Id:Date; b=aLFP1qwXSgVciRoyMPiglkYbzgiqAKDs/298R2UukHMZl1MMPFvM8dxtBNNqMnWmGbs0U0D6NSBrMQ0QYXRUH354ogeGFIa76cN9i6yqCd0tXYZSs57KcjWNw2fY4GJWGVBmsB7smK+S2bNEskoMon3QpO3SE6VdwBEtx9LFO3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki86igCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki86igCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF46C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745492393;
	bh=cYJONiNcQgQL7BFrOTQoEI/+XixIJYKvZgUQV/M1enE=;
	h=To:Subject:From:Date:From;
	b=ki86igCJMtNSg5Dy4RbcIben9/+L0IVPWLOc24XyR8QxDa5JHTxbXxUVYsqf4ee0g
	 CwfJ7cENZOyXhBqxW5DkHckeL46XRCTbjtIzLORXCMADoVPFy9FUZgMQrKT0Fos2Yq
	 tUKJDZQCtJyvYlE2mzLxUrj3JzJnNxp53Wb6FjGVmYE36J4KgOBO3UOqVoagzquPQk
	 mW9Zzqv06ir5sA8aWvKwyTgza6BOgaODy9j/TmGinpJEp7B3ozq0FkbY1+4JmRPwki
	 8/rTz12Yclqh/bcNl7bk9ebRGykG4+/CXKeM7q3EQcJoD6B6TyPCudoMlOWk24d1m3
	 b3IGgQLYYeH7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5CCC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549239357.30331.14442497092178139819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ca4d750541b9be2d63894d09e08aded964fa13f77454b9d8317c5a11f3e822
Date: Thu, 24 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745492393
