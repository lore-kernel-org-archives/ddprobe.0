Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BD228F4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741046934; cv=none; b=EaOtx96efIh4ZmNJoXWqzCDI0YAKWnVZe1wFKf5rLkW7Or57Zuz8Vjfo06e6lmObkXPL0j695EazqvTS+wGMCQ9cF9OEf18K19+3dEE4pRywBgXM49lSTaYijvXhqUMsvYGBo556NM4Rkgf8/WJuTjal05tMl1KtX+Qb/DhBGF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741046934; c=relaxed/simple;
	bh=8Q/SWFSsoEcmC1FWNNwmAkwMVaqeU5D0chwt2JeNM68=;
	h=To:Subject:From:Message-Id:Date; b=BGKN5f6Pko1+VEF/v6HVuTtMDZ34ZhuuS0TfrGWpsoTVxvRPhEB7Vmya8cxSWyWnMeQUiu9vzDWqhtls8KdeW3EwTHqf8xhCJxBA9CaQrwbVJe4RomtvFk7mfvDanziF/EGunNh+H3HAcCg1PCgu3+HEzzE0KYdF9OiNekodEZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPsICN+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPsICN+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1F8C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741046933;
	bh=8Q/SWFSsoEcmC1FWNNwmAkwMVaqeU5D0chwt2JeNM68=;
	h=To:Subject:From:Date:From;
	b=KPsICN+zsi9bN7YY3ofn28PHQuPPcD67kRvsCDiOuFID2iaTqRdMtpiBahstsRx5A
	 smbYpzZSh0jfNehxPXu76uE5i73cU/ldpB1DQ+cYV/Ivr9G8PBXS/B9RFthh/BfukX
	 yY8dVuidnw0uK4SJhUaf19ZkD5/q7kmlQKEdYeNTpBGrxUAYCXdyrvUjey92PkCTiO
	 CYZiZjUxy+b3p/auXRQ4GGFMHUrjAGTyJLrrlG5g0nt/nuecZoaAWwwwbV6vshU6tD
	 WmGqjrldNEMQrMH0imNdR9cvmDd3HekjpE21QVubkeVm9C2mH2OTKowzTK5cfmXZBd
	 vF9PBK/CfRV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98317C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174104693361.5115.3607380562449581101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e654bf7972b33d815294f9d168dfa37047036231140e937756587f6a9829aa
Date: Tue, 04 Mar 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741046933
