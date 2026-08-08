Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425AA3612EE
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786208434; cv=none; b=Fu7gaINKjq40ov84pMO3ovAVZIpDFAX+zWdUcUBGmnynBozykpgyVD/HdCGBY5WfaV+FUfjjIK2isGaBV4Q6ptXBB1/QQQ4rIFNVZVaLNZiPHrusmeG41ATXbM+AT6H55RTDBIzzB3VQBxTOb46XUCQNmJbK6hobdDvaUnVVS4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786208434; c=relaxed/simple;
	bh=XjZd06GnFj2bRGbzkdcwGLAJXHrmUi/Fuo53hlPrTSA=;
	h=To:Subject:From:Message-Id:Date; b=LvdEhTWwrgLDjAnENrQ1T9tr1uAqmFxpB66UlHZwGzefhw5tYKy/Whh7VcGkz9TqrzdqHqiutxvfPaOSNJidV3UvVsN7cFdJg8CKvhsX5srU/2CtnSnagDQlAVVPBCm4fNeaMyBRuadqI+NNna0EQWQy9Z3Af+VpOUWi24XnyLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jhz57XfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jhz57XfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7801C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786208433;
	bh=XjZd06GnFj2bRGbzkdcwGLAJXHrmUi/Fuo53hlPrTSA=;
	h=To:Subject:From:Date:From;
	b=Jhz57XfOYF2Qc4/850YVntlIQIg3DydAKEOZhxAZYI+W3lVpqmgXb43HudVDX2DOp
	 5+iEbBn2si0hkfQe142vBN6yu2ptGQkZrJdGdb36yncVjQVoAkzIDqc9bX2arI7i2B
	 L/x6A5gFor19977ojzODd8mRe4rxQqCBX4VZmhO8lHOmlaLxnx0zG3S+cDbs68efiO
	 a1n8lwpgRXfkPK7jb+omOhWbuWCia+29SJrHMRTGHy/+pV7REACam8FsWBGGbKwn8Z
	 lAO/Zb940PvFvexKVt97NwWnLGROLAQFAsf9dAA6cjUQBF/lCTIhJDjP82vUl0i0d3
	 btwXwsk6PlYBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D00C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620843370.13654.9408316403236136629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b1b398dbd568845823a8196d21c4e4e5484138853c2bfa4f9d1cfd6e1fcb1b
Date: Sat, 08 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786208433
