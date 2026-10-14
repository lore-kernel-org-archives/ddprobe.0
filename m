Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549113ACA43
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791952834; cv=none; b=JZtzHKjJs8zmA0Zp+Z9rig1Ax0xH50lIQUD981iuk+6py2/yQn+kDNtkvSGNsIzKGQ8JMglQBw68Fo1OriplMX2fgCtezCXw9iz06OXhpZWyjVZ7bL0BMFxuxnXELcy2EbxcC7Y/mDzkc4XfmRnoCnLJHpJXQoM6gVVtTIt+914=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791952834; c=relaxed/simple;
	bh=4ouK3zPmDw8hG0TVknEOus9+NPY/7DLTXza43HL4Gl8=;
	h=To:Subject:From:Message-Id:Date; b=qkq6Z6uxNH6kTsw05AtUi9PnXvAt6Ax93Rtn+z6VXP4k0L0O2NGW7QgnsFR9Skba6Jggf3TqUxgbRIqiUMtyhwMdMBKO4orfTA7+MY8Ri47o4FrzGtc69MEKscMEO4NHrrI+g9IGEVODOzT39oUtde0I4hxX4r43+gFEh+8bdeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8A0oigj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8A0oigj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D598DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791952833;
	bh=4ouK3zPmDw8hG0TVknEOus9+NPY/7DLTXza43HL4Gl8=;
	h=To:Subject:From:Date:From;
	b=Q8A0oigjA9qOe/uACLpCzmkEYlCZeIkenXzyB8hg65mOSfN+MH2/eRygwvCDXxAGx
	 PBzgZhpn7l/vcl1SiIOQEuOLHzajF5o7mvV5XF1vnl1SoXBlLPJyhUaUV02gmTound
	 E1Ym+IyC04KfdqnUgoLTDWtm9ymdrwgPA4Hr+MGrQMPb8wtTJ4RXsKOCtg4LLPAIW1
	 DYEjYWA6aRh97ciwG55GMr4cv+kETJqMG1/ZCKqG3bvmU6+10DvuiZPUl+Q/D3xXDj
	 KymnH0mdKSBg/4S7h7M7ee8YgiyvuH+HcdGNr9lV9tA0K3Ctid1w/ndEkFY9k+EWtG
	 qFff0Obuo9N4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B149CCC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195283371.31607.17062864810655029474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cf4b571939a5f63666f38d1f470331155b44dde5d3ff6c8096eddad7453366
Date: Wed, 14 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791952833
