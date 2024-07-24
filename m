Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BFA13DDC2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721813754; cv=none; b=TIMIwfPVbm1IGuqxB7eyzb2TFWHW/mONow9U+geajMltomkGunM6OmOyQeCqwr6sMnOs4ZNTjJE6VEMZnfGsuO5Lnq0Y/NSCnxQg1KSqlxAiSCmFvPLD5nwQOR0Zl3Il9DieSEz/39b2GTrv67GvGUnd8UEk1KYKOzwop3qvosY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721813754; c=relaxed/simple;
	bh=EFQi3UPahhdjWYa/gLmWJxqYbkiCha8zF5AU7ZHI2O8=;
	h=To:Subject:From:Message-Id:Date; b=goXWi1d9XNHceKAmV1bBbkJda/Z5GsqGcMmGNEHf1pnSLRiOqG7E4YVOickqGVjevNPNdtJWo6g2ADkYTOSdICbDUIWwpNV+n11hsLKWDfIyafDXFXs1EZpccM/P4QPrOAubhat4KSfFxNrvDN+ZQY19qTV9NBJu2I2T1Uv0OAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9PiubB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9PiubB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81F7C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721813753;
	bh=EFQi3UPahhdjWYa/gLmWJxqYbkiCha8zF5AU7ZHI2O8=;
	h=To:Subject:From:Date:From;
	b=W9PiubB9yxd89cyCBzG6o78VbYOUj0/m4rF5QgSwAvBpXk5jUccRGS6VDQxHO74AM
	 Vb5qEB4R9GIgMwUYTRAFEMFGI0z1/erbME61lnftytQQ2RRQjIpFVH1tR3uOLoM8db
	 Gh0r7gAvI/ZZRp7C3MeeuKbhvIcXzssOfyXbaBh3BQLx3/NuNUM+ACj8zHZQudqwv5
	 4vlo6OFPokx7rXhcvH8HUpbL1K1w3MXig6bfmXN5n0COl7Q95qE7DzzcQUt08kmuuW
	 Fo0fxFDnoDX5WxImLhf08/zP7nepDAQAUgMzOnMPyCBzWHRVPHT2NGEMLQEzTDuZvp
	 heab/6HO8FL0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91043C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181375358.30024.509573010957111540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ba746b292fb920200afce81b7631aa5be61f5c43fe815dad01119aeec9e567
Date: Wed, 24 Jul 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721813753
