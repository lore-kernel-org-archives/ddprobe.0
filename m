Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4975E77F15
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721851554; cv=none; b=sygcoBdJ+xvr8Cj0TZRP+mluA05bBRRScRhPvde+AQMwWon7mXLAVJmINUy+49btN6jzMNY8ZuDPdKhrJFon1d60+IXhSDnkji07xKwS+8ACD14W45T+hl0OIfQC9PcyYsFhA5TE4k7zD4aktRKvuPyLx/rPVjPj2GXJNqz2hXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721851554; c=relaxed/simple;
	bh=eFoYgdErM9xuBjmghi+RRW3gh6ZK+FsdlNqR6hSd5IY=;
	h=To:Subject:From:Message-Id:Date; b=gWyHBxrb0vZYQAGY4wkKufsIc8AppdjtJ6TuhUZiMOsxFEBdTam59Snt0C/Aw4dI9D8liFY4vk7aQfsvdjrGYqL7ZGeXIA3y+n2HwHedXH6JiMRvqbNBrHoUIPpqjERIgPJ2S+ry2Bz5ZtlesgQI3pY8I3awp0euhWl3n+E8MPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsPfS+1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsPfS+1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB43AC32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721851553;
	bh=eFoYgdErM9xuBjmghi+RRW3gh6ZK+FsdlNqR6hSd5IY=;
	h=To:Subject:From:Date:From;
	b=JsPfS+1ErURwtYwcfCX7FmDzE+fHXxjB/lPsJUF55ByWLhxsyifgPJrDDK3g3Lb/U
	 lNhmwH+Kk11Wz3NyoMyyew48wVZfB8FZJDNEj/oGKiBJhGub6pu8mgekrHCL8n1HGF
	 nIKGsaeAV9stgg3tGmajLC8mQEJ7w38iEEHkfIZyEFkcsKApO6a8VFr2AYzsXHcuMd
	 rDAJ7rPQvk64DgC8gGHIWgjRhlznNgH1XWO9eIik1+Z5IKcqHPJYISTydSmYUOR8US
	 auNnuStrgpLOrEesFVQBoWVICGkxEB08oL7700IOo/N+iJbeMtarRKQvgtZiBfXVlJ
	 DLxHt1c3f+BPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD06C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185155364.29795.14446758924209474197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f03d46dce8510fbb1194dea8e21e35fd4c0b04eaeeff2c75ccdd3f58a8bc3e
Date: Wed, 24 Jul 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721851553
