Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28164368940
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774588494; cv=none; b=DKLkjM/kzMRd/0a4pKxWviwOAQufHN2H8UjJaIFjtz541zgs4Y5U44uAfIYF9gIkVSDBYt1y8awUNRO+AiepdmzMhMFFRCI+W7f3ZiGP2NmpynVKPtIbT05vPFg59YGTjpWdzCsp9UbJhurrjxcYCEv17moAbPcynPn5HXT0Efg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774588494; c=relaxed/simple;
	bh=l0XodlLAm2TiQkRHJGKZ1cWN8yXXdxn8AlhR0wWOv08=;
	h=To:Subject:From:Message-Id:Date; b=EPw6CUhmcXxt6hgn2MHgn5EcD5oKur6ERRyZbtpAdjQlftEbTZjsb+8BX2Xve2p8iG3dHqeYRKbKsCaWNgpyZlgLeNkMHy3cBkIIQjXNf8aE4E+VniWhHFfniFrGw+9/XcYZNGBJxxXDlANLvJT1BTQsReEK96RWRhvMIxOxE1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhuoOdbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhuoOdbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F4C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774588493;
	bh=l0XodlLAm2TiQkRHJGKZ1cWN8yXXdxn8AlhR0wWOv08=;
	h=To:Subject:From:Date:From;
	b=FhuoOdbIdKGFiCuT1slRzYo7JDdDgwwS9Q0p09k93WEiy81M0VHCLRnqs5k1tm2ra
	 3aFTuXxhJSBo0O1ej+7xEB8SiI0IHxAqPyU2wq4KwlOUIsYthHPiOI9MkUhpLDER9O
	 7RGxdVCSwhearmbrOdE3X4pEMbq0xm4fqRwTsDgphdKFDaFO+OWn+zKKPvfaYWUUAE
	 mnK9ZZuMkGJZOTU4mqA5mrB6E8jecrM73fo+0h0SmSyQWOTngs+Q3ICOndutUg3N++
	 /sI+v1zQgdvt5ipL62h20d1X0w+IkCjql5vYQscZsLGbrlxwgPTvuWiRn+w5bW60HT
	 dzudMrEb8pBBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C2810BA42C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458849358.26730.6567253168238643070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf853e409b6627b30fd6a27b81c0c6eddda5a6878c1030a9f1dc739caefa86b
Date: Fri, 27 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774588493
