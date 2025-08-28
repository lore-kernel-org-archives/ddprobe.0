Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168C42D29C4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756364995; cv=none; b=KwGIQwXXKhiNu1Fxus78LyUZAUmYTWuP+NYyM/pYWNE78rVkLydAzC5uD3Rk7L+uS7QO4iTmUYUzvDXHbvolPz9RhQmh8StGCjRoY6+nSoPkuZIbE+WEKH3Akc4xT10BSqBaU2QUJrYB2uDdX3pKuddNvAK9xwdGEmXHoP8PjZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756364995; c=relaxed/simple;
	bh=ujbP4/vNAczLKB00dyX/6+/eh6ieAfbFS7MJotJteAM=;
	h=To:Subject:From:Message-Id:Date; b=f96J92/Vhbypy6RH/35HFbKkn+Os7ASq+/HtlVZzBRq2S7O6kE52Qtfge6SNKQwJFB+froUi/pQPBBApPoEy7QkL/jfHDZa7clJjEcZ1N20ZQbfc3Q3jsmRPVXnbZ4m0kR10RZrvZa+UnPBp4kc3oazfraIs0WuRB/tElPrMNTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEknLvdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEknLvdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E008C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756364993;
	bh=ujbP4/vNAczLKB00dyX/6+/eh6ieAfbFS7MJotJteAM=;
	h=To:Subject:From:Date:From;
	b=NEknLvdhhVKE1yv9bJrgKDyawZ0Fs/ZYMIWC7YNOUktqwoA+uU19S9wRlZkkaS51X
	 Kk6ZHaJcZKGOUsQ3f/89viH33RJMrHYqoSh5bAG6tF4r7uYo/70dUmt7Q7c4PYIsdC
	 jWI/i8fRjiNQRkApiXNpCs7Z2hjnflaXiN5hCAhET+SYFsm3SncWp9o8BVcgLLP9we
	 +sp+k5Px5kPpuwHVcRYid6Wz+ef+z61yVRb3C1m8VTj2WKcbqhqRbSxLVnkyYHBfGJ
	 1E+m/8rmQ2gdhAIqhopFiM6DUpcvmZ7wes9bbD1FK007II1b1FCKSlpJeOmQtMcjoK
	 uYlILukMJ92Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F090CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636499357.23392.6233443956806802441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894a5283bcd8bb6d622eb51ff6efbdae35d07f5d54c001d81779cc5976239b38
Date: Thu, 28 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756364993
