Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E03DEEB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722499554; cv=none; b=mhKYzKPOppEygcElIpJN4aCDvoW/ngB5W4QIEYackWNCOZkGTmn64VFhzy8VbERj427DIxmi3h50RYLCOGiruixcTF9eRUTHpy79iUKLeuuy1/n4HoPxcLkbzY5HCQGbGjwNoj4Braww9BuXz5KBiy1vKfOm8duyTLLdFRbPZBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722499554; c=relaxed/simple;
	bh=sKCjzMmdckgsGciCQVubQ/J6wmH8PpA4TQ5LNZXYGWc=;
	h=To:Subject:From:Message-Id:Date; b=ZhHwbsMvOW6JOkwbGgyU8bMSw+hpFBCox12UNzy3OY3h32VHGyuntlXYZB2+9B9uLyjRzJtcbczyo6urNYR+3bJzVmUJ4NnYv/wH6f3/mGJGunCbMofkbEwJV/lXNF1W6bwqPU5HNDODyNfmaolJJ8o93zLeMLI7C8aG7L6R2Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYUGPV7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYUGPV7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A67C4AF09
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722499553;
	bh=sKCjzMmdckgsGciCQVubQ/J6wmH8PpA4TQ5LNZXYGWc=;
	h=To:Subject:From:Date:From;
	b=QYUGPV7DbTHuGLL+gRsA0sARfBDsZXPUekVVvdpoQvAC6JPxibjUnFOSQg1cBC3Gq
	 LLQV06tsqGIj1xfAg1ZnEEuNWznpBogKtc2yEtKqsk08obB4qjNElbJ0AxncFf+unp
	 Zjmj7W1SLmDD55Ps2mcE60UEAqgSMOOZ+PGGGR9pl+R82PAP4g5hs74nrD2vZ4pCqA
	 HhJ0yavqxf+zyQfl2naps9AFB7LENOoM5F28g9U4U/rjvoSPDVR2CDIZfFIcxuN8et
	 CcALdokmug+UtIDiBhrdrLvzlRmaFmfX3WuPMppJDliowCpJyQduOXZs55uTlqVZYH
	 hfHBy0otCv7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C444C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172249955362.19432.13835929403386761736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ff1cf399f6cd26c9deaef7bc93f422a7819771cfc9292f365967b47a7e9be3
Date: Thu, 01 Aug 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722499553
