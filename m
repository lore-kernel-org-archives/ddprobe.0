Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A08343D80
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769879634; cv=none; b=fiNByOsRUkb5T4Okgj2q6WhIE7exeiQQKhpwBH6WdCo1Td+bxSSDDJk6Ozpqb4sxzlCtvSQWj8V1p8gpo1EA8lPivKUTL79NUkPUCUDsGDx/1kRr9tbADNXkXHme2l8NGBx3xPvFar63txoQt2H4tjb/YtSLlVSaMp3dIyKFSFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769879634; c=relaxed/simple;
	bh=XfJsbDfmxxY102m5u/5Pk1xnWlH4taNq7l+Lv921+pk=;
	h=To:Subject:From:Message-Id:Date; b=Qa7bbdmpmIzxM4vEXLwif4Un+rX9hNAdgUlkJnK6/hPXah5slC/BCrZ0C6sTq1Tn8YNzHzU1p2OUAa/NTetq1oD9J8FCaYSLy23CYwbmHoSJDIHtU3exC24iP2vE0gnuo1MBRnlP1ogV9J6CTFfKODSNQFUZmUirYW7TyreHgFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTKGF6iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTKGF6iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F26C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769879633;
	bh=XfJsbDfmxxY102m5u/5Pk1xnWlH4taNq7l+Lv921+pk=;
	h=To:Subject:From:Date:From;
	b=nTKGF6iNIEiE0WWvOl3eeNT2ex7pfntQ5V5Ev13WLPVHV84Z6wiKaZIRsv2a+zpTl
	 xsbYYCTYTcifHvF/uQ0uo2Y0JEJsZxl7SsaVfWKDZvvRM444E2KukhZAWFY9E02lMx
	 JmpWOL2LgDHzdQ5Y2ACzS8w+QuoqSZn6NiavMVRzeKPj1Dsx8NXe9i8Ebc0eT/cy44
	 M82ssKt0ggcOOnsDTrhfyK3Plfe4RzZ7tBiZY1JCGkV0qaD1zvXDGFByhOClHgqESg
	 5dMs0ZVksie9JOKureoSmj9ndEHXAX4OZmZypZ+ZfntmPEPOJJCo32Osp0dzDuXfI3
	 vcAXdRtbNVsqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E3D7977D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987963357.14287.1247525526407350436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6338256bb1c512e45a25fbb9b859e4b4a18ce49f8859744adbd15134e7252b0e
Date: Sat, 31 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769879633
