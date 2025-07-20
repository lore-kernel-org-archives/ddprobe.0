Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2147E1ABED9
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753039794; cv=none; b=Po56Em5MNpG5qMrCrdupxyTj6tIInzqkjVAB5/c5nK6U8LuqnvdwzWoZSdv97uW4p2KernB0qAOD9inwuOdtUUcyW7vSXxmOHsnZFJwZe1is2JZLMkQzvIsc7fUr1o+oKLgeV1fQkRU4ItE90MKRSkq1jR56m6iEnhFmFtiXeEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753039794; c=relaxed/simple;
	bh=RqB+y/AZB5ESLYMWsaecIXLJs3kC8y2oS8bN9BsW8RA=;
	h=To:Subject:From:Message-Id:Date; b=rXqqBBaie9XR2cWAEhmcaKSB+nkC4gImOJGAb80EuXZgVmUdQTIlRf32M+vI5IZ/op1J5G5rKgNrxQBuaAWBv6KiBZ4iQy/Dg1G3N0y8CwKGRKGXVPwG9isyPYwA/JHeyOTW98Q7/5Z9/+L0Hdi3B9zOEQa8OOcweANOPBSJgec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFZ47P/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFZ47P/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753039793;
	bh=RqB+y/AZB5ESLYMWsaecIXLJs3kC8y2oS8bN9BsW8RA=;
	h=To:Subject:From:Date:From;
	b=hFZ47P/HLZssbaAkBgsMougJSPgWTVBUwVetIt+D/dMzq3hhW4Th8egGhJ+jnhJJ8
	 g/pB7bEVgTwafiL5aeDko5pnExF78BPPOpoZJs58qTRBBbw/Ny5nDm4sng9MYfIVw7
	 UMVvk7do4IzZxIEOAm4PVLiHg1BX22mt9qrwIdDMBl+JLMdTzRA8lW60G1bbW3ykMo
	 LFQT7CNUH1cs2j2l8eKQTI4fXeWOJkpcxuI5LnrXJP70BbYUrUBOnHtsMUtna9UUBl
	 JFuEDlpCuKuzfXB7H8fum7i7OqbKYj3pi3BI7DdSWjqB/GvN9UpOE1NLh2Pxo6gbCP
	 61NDlkqOLFMhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AE8C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303979358.2887.17256257264837377222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73aad3079ef9a244ecc1390c8ff59300f62a2a47e4d34ced72666cb6a845c5ae
Date: Sun, 20 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753039793
