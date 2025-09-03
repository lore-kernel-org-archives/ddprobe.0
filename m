Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0382D73B9
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756883395; cv=none; b=r/em/nnJ+QXxZjuRsLqsTAPq4x6tPcaadHBME42fjXrIeUOowQeFh8exRCxROgXxfN5QxdCiQVd07nkvrxR6bLDaLCgxnDaKPlEOEM4CTbRiyVCI2ebuhAxBnOez25LwzY8QHd3WMsQY2LvtzsrYRF9Q1hfggOyyr6IgOzAoL8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756883395; c=relaxed/simple;
	bh=fwHLWsWhkrvug33FgYe7vmO57VqXRMmgz3b4jkVstRs=;
	h=To:Subject:From:Message-Id:Date; b=Q+EhiCfzXNgl5I1uf+5/l0AhR0k+qyUf6SRldJY/oC/w/UoDS89WUVazNkk9NEqPPtXOeOOPrpPBI/sxjTLr0ygfvOKc/5KSwg2e5S0lNS4AqH61kl1Wnc9FQoRICA65wKmXv7C5D+R92uTKJSU+8zuBhhSv/ajL+9mTUbBN5Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKOTIWNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKOTIWNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1812C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756883393;
	bh=fwHLWsWhkrvug33FgYe7vmO57VqXRMmgz3b4jkVstRs=;
	h=To:Subject:From:Date:From;
	b=pKOTIWNzTBDAzP1ARtNMO/gt5HTgqfr6m8Nfu4rwS2jBeY+CEcBM9Q+BuChCCHpQ8
	 j16DcuC0Bs1G2x++wAfyNVTtiC5ic5+Z/DoKbXgMtpx+Wl8qEm/QRConI3YjezuKeb
	 rOAJMSf2xWzVXuAU8Dr+GTkI8hE7aTknvLdclgyCbksGeVBYxwPsEvpbYUSOFzE9Ug
	 QXWKcbzHtukWqcKsTd3FvOvCL9s9cyfRaRtJCGdbKjZ1NGmZe3CwtwlIp6gu16QocF
	 htkmBu2U5DclRBdT9hMdw3I9JtJ5LnqPuPd9jUxMpanu3Id1fXHsf5XjhG74tWJym6
	 G2XJUBvbVKW9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91837CA100B
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688339358.3768.4257312880786361274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cfdec525417c181153db6ea7ff41f5f6adc122a2029371063d5a12cdddb63e8
Date: Wed, 03 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756883393
