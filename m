Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447431C01
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783832914; cv=none; b=gOPaZdxC9goz4Dr/cCSR5Ve2Mq0Aqn6Jtf/7bv7TbCYEnY8sx0JPOZs86JssOearCRpIM3q8cKOebZgBk+racXRmOFN0hTiX7+ksRmnYr2/6DKh12nS8157FVV0YBH+yXbJsb7pBHRH5yNahzkChRtSZF6L9MME9kr96XswsZrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783832914; c=relaxed/simple;
	bh=6EV2SDRfpPYITTqcUkQHk1WMCxDu4ixRXhwcW9w+8Bo=;
	h=To:Subject:From:Message-Id:Date; b=mSXl1qJbLFonYQVe/da/TvpXX58hyzFeAVi66Ns+bfpkhpao3SCCumS717TGe09+9b4WFDcBj9kV3Ea7KVRgocO3swo18pw1sPVZqkCLYgxz4a6gaBzuVGeRWjMAAZWKYJDIxA28bedx+S/Kn4DCXmpnjonA7PPpTtHJ4H5K1Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUORfTLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUORfTLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF377C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783832913;
	bh=6EV2SDRfpPYITTqcUkQHk1WMCxDu4ixRXhwcW9w+8Bo=;
	h=To:Subject:From:Date:From;
	b=GUORfTLqR0uTA+6ErmkmFKL49tuHRhHN6qWy7WacLJJJ2FKpdti7k5vFVesbEj81i
	 kj2gkm9QM6JcnxXyAbjWDeGCo+5tlsxz+nNbfJaQmWp2FTsK0xq5meOmh1bh0KZjbd
	 Vo/ObdzDUlim27pP0r7DtBaPGq6og3tTlEutB7H6w5BD9AFhxB44IhmywVR9OTYsQU
	 pPFCJqrFiRBnVCU2qQ0QB3AkQ25/yNAWd4u5dHo5jR3MangVhwOQstmCodzlnK0fxv
	 1znRwTKXTINQBOCTDf8mYkbv9sPkIdRf5Dl9Oqxrb/ylOAtJ7St2ZuOyOwIFUSRn0U
	 UREFVNJKW9d+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89E2C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383291368.13326.1352851841848508542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c7a951cfcfc23bf8f94a09d76b680ac08347176c5ba30d1e885c2b08a33dba
Date: Sun, 12 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783832913
