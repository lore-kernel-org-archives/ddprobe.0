Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254D61BD9CE
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772607894; cv=none; b=K4hB1FbLfdYGlqsTT0PqlqyoAZmUdNrPgZUA+BlIrbu5VBCW3B19queMlfCR1LVlHdGumilMOaBiDi06qtEueqTM9vaA146uZ91fty8KVAmZABUFMNfULpR47+ShtM+cbCbJbA0AdlK4VV0LkPKagxBwG5FAM2qQKudM8q8Sxn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772607894; c=relaxed/simple;
	bh=csXJkwMWJ/R9F1k5k0SjdE9zEJ2mxd9L4DiXfKI5NmA=;
	h=To:Subject:From:Message-Id:Date; b=q2q9+Z3EZyjqFVFSGLnmcaM/CJoivThnL2gILsupPy8awERoW/njhEW1+S9BK3uPf6FLDE4hlqh+C5KBIh36Rc4uGqWsw/HCEOoKLIymSqQ+/Zqifm2nm779WQ71nzAYYi5MI95KIUX56VJ+dUHusXYne56/durqUccMLrmEGGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/mnXfFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/mnXfFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2C4C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772607893;
	bh=csXJkwMWJ/R9F1k5k0SjdE9zEJ2mxd9L4DiXfKI5NmA=;
	h=To:Subject:From:Date:From;
	b=k/mnXfFThmyo/KVeXd+f04Y7lzF1Qlu7TbXDq/Jt1S4eZP8faUIWSUlWN62fY2KXc
	 nhpJb1ysOV+VG4YtA1zEponZgHsp7ruo2kc3S//BphFLsCUJUW+GXFvytZ2kkRueRv
	 eO8VCtOxoACTfScMJVo2B8OGqLsAXx4v/+J7wWcKvWIS3V2n9QIL5rQ5sYKen/qmhm
	 91FjibICA0u5WXRuHjOXOBqw6dENWB8gEy2xbEhMn1nlORyvmjDJlShdRUwY8fLeO6
	 ArcPBmgfwulY8az6o3OIduB1Aqle7qnh4Ar3PHuGzQualNwRnU6q27M8ZagR95afNS
	 vojBJgtuXA4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5ECDEDEC17
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260789366.22900.14018966923122294762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8fae10b2697d83c0ceb4d84576fe36874c8cbf98a0e8081a5bcd8910bd2879
Date: Wed, 04 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772607893
