Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1911E4BE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770469434; cv=none; b=kXR/FA8GaKicoBu0eB2Y8neOEQob7Zg9tphr330PtrDrXPNhuRQa9qCoSaCDZSGunQQZQvXpmvhmMOAqCGyWdzF9bgD1Tnutef1E46cAIt8Cciij7/NPu1uvCGACmG8IlkBeNMRhQHV3FAs0ZaYmq51GPKsdsE3SeWrAqCVRC0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770469434; c=relaxed/simple;
	bh=yAldSxlKJPn23hsBmYmgaCIA0klXzauf8QYVDWM7aF0=;
	h=To:Subject:From:Message-Id:Date; b=IGiIj1VSpUheHvBL4vsJjhgu8yYeIVkgDQXLIfAR3kKtsHs5sBdNAdXDJ8poBPBNiB+ZzqRHGpjeq2ZEgoCyNDwaH7QEo1XRpdddQCXhuIRjPzf16Yos7NEHCCS4cF8CShbTh/Lc0oqnoXDPsC/8cdyzPJEqE2N/PqLkX6FOGo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etmjmlLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etmjmlLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7F8C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770469433;
	bh=yAldSxlKJPn23hsBmYmgaCIA0klXzauf8QYVDWM7aF0=;
	h=To:Subject:From:Date:From;
	b=etmjmlLWqOU1JzkPvI16wzx03H1ZEbPam+cI+6RixXWfO4nKxCNq4lDWi/lU4g3gA
	 lKrQKUxc0JEaPK3zvq1pF4Iv+Y6f+TB0RGnbqRXC/MRxFd/JvFdVqHIo26pqApDl5C
	 T1yBXIb2e6texqwNGSMPqxjANAr+cmuzAd/ju5b53TM72+SAhVEm5+IJ0Ak5TNzt57
	 0j89TVd3qMyHp2kU8aO+5d/jjPXLi2syMZ02adKlsC+CWILA1Py7prHH3nRrtAUD+w
	 tsVsqp4X874yWGJMyEfqISYgMxrnsRsI92UbzQE8gLaGXnMjhO3dfRBbmHbb8bgv+1
	 xlBQVMTdG9YXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F5EE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046943359.14334.5411591942668278666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d928ce58d7a3a658b42bfcf705c755ce3b7e2d269401079e281d5fb7bf032c44
Date: Sat, 07 Feb 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770469433
