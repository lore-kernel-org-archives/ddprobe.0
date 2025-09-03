Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BCE2BE631
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756934994; cv=none; b=sRyfWcev63CV9dTS3vZLI1LDeK7vLlv3AIcPZmzulkiJ+SU+BnGjm9CYjyYBpB0JpJAOBrOzyuQjLHQv4rt2KDoQfHxTk4XPxvGMv/ycFblA2Tma6ms9iOoZqazW7DLbX4jhU+v+Ogax+/c6PR1ElO0+/mvalMi6VyXrmJ8YyPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756934994; c=relaxed/simple;
	bh=8zlMbyt1rdGGLwy+ko4R9GSWLUmjKbxP1kWbv65gR9I=;
	h=To:Subject:From:Message-Id:Date; b=I/S+S5ib2GM4ErgC+vOD2tFFtBudgqCoRjmPXV1+j0Ak2NaVZvegF/si5Jm6GNP5oDyjqid67cU2i6E3ovms4ZNYR9NeUykvhaoMZMdmsK/bwyt3DTmNPP0zL/dgawl+bEIudKG7OiC7og1IcY/s2HuPYnPgR693j59cPdFQEoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKJkqiAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKJkqiAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3335C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756934993;
	bh=8zlMbyt1rdGGLwy+ko4R9GSWLUmjKbxP1kWbv65gR9I=;
	h=To:Subject:From:Date:From;
	b=iKJkqiAYvLN6FWXlLmu4n6LSRRLXIUC3fSQgfQnpk2i35pff3eiBzeRWH5sGlA7md
	 b65UEEVZJv78HE8aTIc40sV9wD46OMnPnWE3FP216AGkzabK4aOiFyu2ftQ2jaRZnK
	 anEd28Zs5/5aSGKGISCuSH19Uc7U0cKsz065Jcmum3gavfA68fK3WCpKKNNXweSMI8
	 RaAubgO8YmXoC/RBB0ynl8t29MZB2ch8V4VoeIGyqy24b8/ZLjxBOA6HLyqsXC12C7
	 M7PPBG/HN3GH+AsdZJ1qHJaD4tz2lwf+b24fhTtQQgGUSMiOOhpmpHUwQAtg/BLzfm
	 56H5DWcYPVBIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90176CA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693499358.1683.15122193944371899125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fb7626db9bf37ef3ade80cdabc27033a4ff8c772f36c0492484a16e0290b82
Date: Wed, 03 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756934993
