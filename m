Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E63633B97D
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761245994; cv=none; b=VD/w1YggOjKgv/FYApuxqMPtzKJQNraOQoui9rWvNUwlM2v4eSgfOc1JTHNgh+7J31yfnDEdkFc8pLohM1lT1d11tgecfhKysdnxkjzDTKOK3XMolKKxWUrl5vW5SSS74jib4VmSmsbL6lNSezT9tODnLDIVrJXgcVEeZvHep4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761245994; c=relaxed/simple;
	bh=y6/XvK3WsMY29WLzvSF5CE+NCA4jHRlZ4pkcesA3cBc=;
	h=To:Subject:From:Message-Id:Date; b=UeHOc91ZyAQ30D25c4Ua7s0XlninZBwKQbNYKH3OOFzs7adhijOtNIeAv7nujzb+P3dx/LcdFzUVX/212bhxDAlzDIpdAoYlNpJ2PLqN3mLHie5qFtrq6lkRqVzF/Sas3t3wpoR/XsVXciBxwGxOi7pIMD04k2txrHP5rU7bdvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgqbfJRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgqbfJRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A527DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761245993;
	bh=y6/XvK3WsMY29WLzvSF5CE+NCA4jHRlZ4pkcesA3cBc=;
	h=To:Subject:From:Date:From;
	b=fgqbfJRvPQUhcPpKPjI7BccIrMbeg0LaAsSfNCZPN8cGhxfrUJms+ZUxn2A5kV7OL
	 HqezKwF2QI/uC0LQMAWHdpKxBB6H6Cz+Bc554OQMp7fmwkPZXCaUoCGooLGAkTOsUO
	 2G6ojz8NRZqfLW1suApbwOw18zlbIKMtVVs2BFJk5cUf5jZSR2TlLfSXanMIqXmEFt
	 gAkf+0Q52A7fH+DCx+rvZZ4kHqU1r4nKmE7Ipa0nA6M6n9Mh4/AEuyqgt7Xm//oY/x
	 t8aor9GNTTiLqdLfkGLWc0XvA4NxD+FbTwjUuyMNQrd/5dbM7/WCM7A4Vo1ipjRUcs
	 0NWXwU9epnuPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E4CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124599359.4403.1463403772119108138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1f9e489c0dfcfa2e51afe5b969b0aa2f66b992bdcb4c54e57878e75ae216dc
Date: Thu, 23 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761245993
