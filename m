Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D4C1EBA07
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741944534; cv=none; b=Qn7uxHTa2DZceFtIiEyQXVycQopwkWHu3kGUEAg3ZJmxiHCRKqTQw2kDWmA1LXrrJaiTpGhwiC0ZGtziMJw1omD4JD3UjtQjC3TLmPoUj+9LOl2VCBsRSzpVi7xqyjrH3W3zaxRHVd6ayAOG+rmlyvfLP5BqCzp/42warxTlO/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741944534; c=relaxed/simple;
	bh=TlBSH9smhCKGs2NC+riQQrtPH1LenTjI5WYZ5mbxPPY=;
	h=To:Subject:From:Message-Id:Date; b=ej/QtWcWdQufBpksgtNHzPInUJvJqFPsz9aC0Xx1vpwOzv9Sn2pDLuP3DYqp3vqvULDCRf9kLVy7lbnkMpLlmj+QkQmTU1sfjHIr0uQSCZReX5msTQ0fSX+/BnUZ/VdVMIu9ZFWRuNFA+XDZBf+/kj8nqYIRtpjpM61B9AN5TAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGXYFiy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGXYFiy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F54C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741944533;
	bh=TlBSH9smhCKGs2NC+riQQrtPH1LenTjI5WYZ5mbxPPY=;
	h=To:Subject:From:Date:From;
	b=mGXYFiy83/nGeIm25rqvs9JlYIeQ+9vDDaf34KLAHjD4gr9h7wJcAF2E+0l3nPsfg
	 9yRO8eVf8gws26Lf7UVNDNMv9hrcZ7arjM7nJ5L4DFi26HcpyXvEfOwSzByo6wRGB1
	 y/aP3OeuR2cNbvfhzUMB7gpDKXMPJZ6mnFKGEHdDTwrBTjD3LS5POtojPWXgkTCnCd
	 aseu6i3WJEs4GtrrFX/VVQ+5hexlexZEM/QfYV3afCDLNFZlrUxOMBxub4gL9r6HsM
	 45iIusuCszmzhfZJK7x1JlloqdLH+uT1F5KVHEVz14UpDJLGZtF05lWJeZfl7RIV//
	 Rkx/2qtuhImZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1362C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174194453371.7107.13495456849232242603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae0ebdbc3efe314433b5d63f8a8c8def4a0156603abfb6c1703347544ea395d
Date: Fri, 14 Mar 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741944533
