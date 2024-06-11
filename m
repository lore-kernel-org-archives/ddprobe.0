Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452CD50288
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718138303; cv=none; b=tWBdVZr+OMaNrU4q3eUDEYP4p3AexCAGC3d/9X3shneTMjBkDcmJ6Wzo/V4CsXFBOvCZR6i7yzBNyicUoqfPJHYZ8HTAyfRk0+8i6xSmCCJ76vSUP192VHUeOAT3wcRZ3ppdY3P8E0Yuvd6V5qrv3SA6p/3CBLy/NeHdcE3ygYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718138303; c=relaxed/simple;
	bh=sBZUXFiXHDwWIHvHmUPrbVtH0x0dpRYr5ntiAmH3jkA=;
	h=To:Subject:From:Message-Id:Date; b=tnTh2/r1aTRac/3uIxWDSbTY6rRk83hVyHewHXJP6+BVnJbRgjiGalO6dHYLqnaKlpwaxCKHNgj0i4vXSAOq9JEkaNcjSnYJ3YHmdxO8r4q2Rwd1LhvN89HyaN8XnND5qK3VenWEQYVtOHU8zjLYpfHV1RDlRJ3wO/yeWhtYmyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+HIYuqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+HIYuqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CBBC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718138302;
	bh=sBZUXFiXHDwWIHvHmUPrbVtH0x0dpRYr5ntiAmH3jkA=;
	h=To:Subject:From:Date:From;
	b=l+HIYuquAObrq4netu6TwdR871dNPQEtJiMb8dJC18l+vbenAm5lnpAKP3Sa+zQgl
	 ClprEuHtflVsIqYMoA8ZWPhSE0J186e+zqjupWwVX87+fzyXRfTasYVc/KSaOr4cxs
	 0DB13K7ndPdV4rkJ8gkmeAvER+PcilXanQnZlB34DRlyzoFYgSySdSjwlbuZUSbcKy
	 iJIE2P2ANpXlsZGy5Z6swI+rSDb9u6JlbOTaLiRK372KHnnIwTtNqrzzlbfZqo0UCs
	 zv/bkbtpRZWGSXJRIV3NmR+B5nOL65+coIRVCdg7px07DbhmFB+c8KvK09id6zXEnu
	 J+6cUNblATsrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF43C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 20:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171813830276.31687.15303174008981464357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1d83f68959ec0e658509c93ada3299e73c73fc3840ffc69fb52c912b268e2d
Date: Tue, 11 Jun 2024 20:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718138302
