Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1EF52CCEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790169034; cv=none; b=KLh58CR8RgFoDM/yHycTslXDvrJviIrXKVnkwFuT80iN6ptZ4J1Iji9RbuYj/Gsebe6SPizpNKTl4drwRxtFDI3tZ0YU6E/IZuC8p26a3HzLVCHlsjOMapIIp12fCObANHPD6Yob7Duu/bjmWz2jxTyFnZrpcGWac6Xu5PgglpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790169034; c=relaxed/simple;
	bh=tVM2AgZaT5YEc5Wy9fEGf6sVeoCjIEtBMhozLBOAIAg=;
	h=To:Subject:From:Message-Id:Date; b=R2mexHod6qZUr2oN+e/HpQfh24+Mo6LR0JrD+6DSc3UTnGhQJcWZx+QnOTeTbw7fJdfv647XV+gyQV5yyObm2qcCOyNPOpQUZyaLybeTm6rdcZbTGkxqPzBXP3fdFe5Jcei5yluXsQwlatNKBOnjkam+KZVwZzkFLhKFODMmyVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjUwU1KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjUwU1KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E68C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790169033;
	bh=tVM2AgZaT5YEc5Wy9fEGf6sVeoCjIEtBMhozLBOAIAg=;
	h=To:Subject:From:Date:From;
	b=OjUwU1KPKfZErMzDbxcn606oDlx41hxhJNfjubqFTVbF0cQS7s4DJV9va7aGmZ2B9
	 7BvghC3YM9a3IpjmhT0CsF3Sqy5+UTwUaCEdQXQgj5tvHjY2mKTtcmv5ZD4gawCmG5
	 t4HE64f4J9NE7hqcqIyLsiOg5o1FCzQrog4TLSelt+P3f8JW5AlkItAnro2pgnbSU6
	 L92pbtwSwye01q1vFEe8J93LsT3XuzurSm82oyzs4qz3K1anYBjFBYP57iGJ4DZGiw
	 p4vzR+5Dmn0fKP3UNipLaXC1MkEuoUiId3BrlCLdAkCYQfkETK0t1UEBTc89oiTRWa
	 y19paxpzmLOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0AAC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016903375.3918.9878195510973998606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c12fd3e3aff5c6ff46410cfbbee47b53527aa2ed1cbc474bde43336a58478bc
Date: Wed, 23 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790169033
