Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395A03939BD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788976834; cv=none; b=aHBmLDqtwYAxOcbtunajZ0TRTBsc2lakUrqWrhlZQgcgLn5gwPjNoBZvojq2Y/WlHkEMsTI280Gx3rT10j26rwMmVCw6FwSbZan8ZPye5gBl3Z2yBSg/d1+If3c4ol34dAH91y+4Rw0eP6I26xXHHkqga1XoDQugfxZNfZE/uGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788976834; c=relaxed/simple;
	bh=KmMnLZ81V1Uvw4ysFoNre29nW5Va6BD1pBXhpzwd25c=;
	h=To:Subject:From:Message-Id:Date; b=DwNQhdK79FJvSmSau6AAU+df6ocJV/6CsKJOfBTSaVh/9qYPJU8pt7TZivJ9g0MphAL3MG7j1QYnh6L7RJaTzry1D7eYdYHz7vHexY2mY2rMY0ksBqidQ8ZMIoD9+8gbJ9/fwrFsplvbPJ9blaCsJKYjiIneRvY77Slt8TVhDUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEVjnI7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEVjnI7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB082C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788976833;
	bh=KmMnLZ81V1Uvw4ysFoNre29nW5Va6BD1pBXhpzwd25c=;
	h=To:Subject:From:Date:From;
	b=GEVjnI7U+zhm0/39D9EPJkvK0xVblBUMnkNS6pJs+feQ6d3Xr9jb8ofYrKoVhV61X
	 AHGn4k6yasFMoLpd0brmLUZeXPOr1LVQvJ9gwsoEmI6v/g1xeUNk/Eg+GbyvOOsUVk
	 df0HyXjH0NC6wmM7AXAfUKngCO++G5pNQvhRAgE7XFWpvQVErOjJ1568yIdGejs1kU
	 XEpyUMmPgPLc4U3YIjobfHdACtfaEDkfTxZWAvpUkYdHRWq2QzLw3IkF9gkyD9YJ5g
	 m2/D/Ob3/vRbhIjCtqobe4dFOoduQCMEIvGzS62CmAN5Sq8eq/092d/uRWt4YndcVc
	 f7EPn3oxp4ODw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29CBC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897683371.3755.12231708805263518720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658716754805e72459c5d8892fee1febb4b516fa40d07afaac4115bbbdd8abfe
Date: Wed, 09 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788976833
