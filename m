Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F521DDC23
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751656795; cv=none; b=suOjYpKBW628sjGD3AYtlF4brRfrKWg3EdpW6CcRj8NtJsSwvn9Va1uQL5pUZEPxBVO7TAnEi5htgl64LcDTBd5q+42xmKPUL5JHRTT+NkQzKPa7tUfq9kveLEPguBxML7c/ixcmtGQd8wnsBemfTmRH2OFElTFpqz7fczMqkzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751656795; c=relaxed/simple;
	bh=eYkYEykmEwc9ZfRsghJvRHyMGaFtP96w25SedawZ0vs=;
	h=To:Subject:From:Message-Id:Date; b=E497lV6yb6n1AaoaRhjRYmCKySPDn4fJIKAqd7zVMKFQil4THTtWyIOA1wtvH1f2bndvpi+KO1H8LG5KNffFI3E7603qrGnYr0L6RNe9HBlEFNK2EY/nVsmmG65K/EL7y1+KfC/OhsNkia1MJ7Cm+FmPuekOQUgS/YURj+qXc8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfaXR+vZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfaXR+vZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE28C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751656793;
	bh=eYkYEykmEwc9ZfRsghJvRHyMGaFtP96w25SedawZ0vs=;
	h=To:Subject:From:Date:From;
	b=NfaXR+vZUzjz/fy1SSHCfrhQiAK3ELgg7Tj+e4WsqKmUgSFWpJoRs9JlvW0WewlAK
	 FoVM4iZw/S9Cr/4eqbMUXHm+ocVMFrogYUdf6Rfcpl+Lh0TrO04qHu0z0/A2uYigNK
	 o5vKmj1iEB8c4TnibfQ52cYKw+6XRmHqRZBwf3foOcUKpl7tHT6w1l1rVJmXDWY0E7
	 XwRfyhduGSd+p+jUzVOEjUj1K/GiHIrwoiq9Wa9ghVrAv4+agXhs9iSkF0fZ1kkh7b
	 tpSKbkyJ3e2T2z8ilctmeBBJ/i/ZjQXiPrl/psH3pFshpwfdtwfxIBntEz8c3C5vNg
	 47VKFcHHBITxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E908C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165679357.17321.4168385873670300782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac8bfddf0e5e7882965356806238ae1487f0665beffd9ffc4f41976482a98e6
Date: Fri, 04 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751656793
