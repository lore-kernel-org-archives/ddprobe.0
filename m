Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4262F60D8
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763751714; cv=none; b=dHUubyD77notgzoXkjRIwd7rhgbqYI2SoG1QVh5IbMVSwXW0ztxe6L78BP/LIaQKy+UW97TlsZNmhEhuRKk6h27drb77GZ5zaHKn23HiL4esQNS6/hbnf8PdZ58jxocm06qixWWTKUoQRQ0E975tQ3gUDT1t8/QlSQxZYmeykE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763751714; c=relaxed/simple;
	bh=2aEJbbdx9EYUgah/lo3ZPRen/qymZBHeX7Z3y5k8i5k=;
	h=To:Subject:From:Message-Id:Date; b=ICbc73SRA8f51uiFAu7OmN0T4XMfJRsHlEsi7dSoZkmcUvyqfv4chaC8dvIkwPTZft2M43r+s5IgflNQfc+05VjBcVVC0KZBKechF2QGmCWcLjFqOgNz6dB/Itpo3DNFVDNzAOyWdI6z8dCcTHgLkyKUEVCWKGY+VVzQrO+XCT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lz4zXfVv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lz4zXfVv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C1C19421
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763751713;
	bh=2aEJbbdx9EYUgah/lo3ZPRen/qymZBHeX7Z3y5k8i5k=;
	h=To:Subject:From:Date:From;
	b=lz4zXfVvm1WCbq550NfjVRa1wZ8bGUSdpSeQ+XnCENL+d4cqEWmgCKwilvlodhdHx
	 UdE11NscCVbqJ+G3EFNCckgV1V0Erd4q4H1R0mvs85QycqAZuvXhN8AGAvxAylnD3v
	 3zSyext4zLZDaFGe91n07PUxzTUEOSzdvfbn1pT+MM5P++el9gOcxaNmL/+aQM+HQ6
	 9X479kq6QfoeA+KU0TsllNs0+IKrsQrvis6Y4XygaIQN7BIEEMVa7ujI8WhOer099G
	 l8R+JZC3+3sWxF9HlQeV6cfy2WDWWp8c1SJe5emtSKNC+yIwEw3fUM9cjxUuYH0F/4
	 sh/M/BIuixWKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95208CFC29F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375171360.13581.1965891516235758766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519da6abece14c5cb00c68e2c8d1afe8f9c83f3d5b2ef98fb12175d530df7344
Date: Fri, 21 Nov 2025 19:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763751713
