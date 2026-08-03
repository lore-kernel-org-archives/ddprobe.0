Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7F836494C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785728434; cv=none; b=cWTBNzgKUn6OHQ3fsOb2iqvzvw8mKgFj0MP7xP8O95R6MIV1mUQijLRxrxuq6H2qEUzIl0DCLK0sKzA6tYa0tF+PcnSYjS4h2RZ1NxoW42l5OuRQ2Ac2Af54fl9wPV/bT3T+YQdSBJTrEOkY2e/ldub2oyyzlLngnSHS9nSasCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785728434; c=relaxed/simple;
	bh=2DJpUNaNQdOuXkReO3ZlCCA0RE8OvxnfPmxjFol+VtI=;
	h=To:Subject:From:Message-Id:Date; b=pftBRGOql64G5LXc1iFj+8MObHZZYHvQYV0VH8+KpSxrIYABibrC4G9wBd82Y97+98++STjdGs8+T8+o2yq7uk+FnUT5U1t1hrn1a38UF0vV3pIG42RcqKppRYG7evkBcR/but21x0qY6zY8McgEW6pTItzv9ufPgTzHxPyvTIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDS7idNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDS7idNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9627C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785728433;
	bh=2DJpUNaNQdOuXkReO3ZlCCA0RE8OvxnfPmxjFol+VtI=;
	h=To:Subject:From:Date:From;
	b=HDS7idNGRNypEn4WgY/FcrPykLMmKSj4uenZbKl/pa5CGUaTOjTIq6ym+BNmeg+Dv
	 7a/1GZ1w7nJdUCvb3pqhozUmCYVRveERMiNkXE8XQYHSA9iHxLRSMq8LTds5XdBltK
	 3soh+svTisworz84ziAYln+QqI31YmksDOtsktEPx4ngp9yVd5WKjxy2DaU7xQhhNz
	 doCFLsZwoj0TvTrgMlCTQeqAef2EAHT2sqvan2vvdPNX1XKkrOn/903FRp3a0x17S5
	 MI700iyfF7FwxsPKKEJ8Vj7fedxBN4mBIZzJbIlhfIe9ya1dEYrYbOCJaNKGmAT8Xc
	 /wuUYckjGnJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B372AC5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572843371.24169.14496062296943015003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813c2d212a11f453cdf0eb6a0ddb571e0df369aabdac6ca4911994d15eed9b98
Date: Mon, 03 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785728433
