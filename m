Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46712304BA3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776824254; cv=none; b=QsyXF/u27TFOgWVBvLE1J/659BvAyxz302z0ZuC1E3e5wyriwBzJp81Aoyo3Pf6EEytKx3q5DYfq/lsQBv2fxbmmjcvK9gLQ6gIsvn8CWtAYyJDmNlu3qKKlVYjbW2TaT0J4pyU0TPr4mWjBcQu/2Jqus18pfcBVSkBoKkV/2xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776824254; c=relaxed/simple;
	bh=V3q0hGSuZigl2mHpwcSQoCy0pMgWrff0a6BcbMOS2kA=;
	h=To:Subject:From:Message-Id:Date; b=PuTU90HyaIIph3NCM7zDslbD9om1DTbkQoUU6o89/eFluOh2XHxGQtbgKAN8J2iP7mcFKamZqV6PCBgsrn2EYEnqGVoYCCtGt000gS7iWWxHTUw4/rpLdASCiuY8RdrLs0aTNcP1ZytVW9ZbokibRW/OVpsd89UX0b/n9tPcmes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0ck1K1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0ck1K1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C975BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776824253;
	bh=V3q0hGSuZigl2mHpwcSQoCy0pMgWrff0a6BcbMOS2kA=;
	h=To:Subject:From:Date:From;
	b=r0ck1K1kAAV5biNi96akoPhK0qrqrJ/Su3SOVYFVwyOuuD94ppvWE29Ds0A+6V1sV
	 R0PkULOYy9zWs0ySn/y4isvUOq69PV0P//tYJ3ZpTC6nIUtN7Q6OBB5874RqwqLl9M
	 ri+sVKTK18Kee+cpznK6paW924hrANOpyc6al4VwajAN7mSnHOqiBKvxI7IThkT2Dy
	 jXIZv2vnREH2GIJadfBXSDHw5aVk1D98C0vzCpyueJaFUHmSqsUUYQ9SSN/H6r7bvL
	 K4iKis+pboBUwzZzA0k0o7v1TE134zuVZEv16Qma5pMEJmIVdFSck9Fp+/wXzcau+z
	 nDFmUOIuTQUJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE26F94CBC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682425368.4657.11285360220284544569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134a91958c955e3123463ca3c531505443dcb15ba72326b6cc0871f109f61e35
Date: Wed, 22 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776824253
