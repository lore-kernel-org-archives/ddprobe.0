Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF5D15B0F1
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718073503; cv=none; b=WKkVtui/0qqLdLqq7bQlJXuHEohfApOFy6vYpqBhCPpCWvQF+h9EJDL2rOGMJ411IH6lpHb7M+Y5SR5he/E6ql4iZp/fFJbnWxbz+5LPgGRO4zSKid8NmJ+aNhVk1ps8LZlyMDdVpoTFITyYFMuLB86yZ6nRMfMeEYFO3IP92vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718073503; c=relaxed/simple;
	bh=pwmpEbWQuiKGCFawD9CVCX9OisA6MHAdVsGOicGPRuY=;
	h=To:Subject:From:Message-Id:Date; b=L+cRYHGjxzjPc0g0KabalyUc7CwRceI2FRoR3gT40wyrobidIxTl2m4WOSATnnnyDM75uBs258YwD/r5W1gUKJB4DAgHk34NyfYGzgJIf6zZpPJhOD4R+rA0onxVmfj1hccD4KXcDe5rMVscsHochCHBacMEiKn+MgzboSF+1Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kx2enja/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kx2enja/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79ADC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718073502;
	bh=pwmpEbWQuiKGCFawD9CVCX9OisA6MHAdVsGOicGPRuY=;
	h=To:Subject:From:Date:From;
	b=kx2enja/VyLUV4EHSzt05tJQQOFwpSqYFx7xr8vFMcdt1TgogDav04fFBLZY27b4q
	 U+6qZb9GkWg2jkVOqApoqBCsM6aB2NZyT7dZ2guHvSw8OmuDCZ/0/bxlSut1gDpzkv
	 3H77LypFsK+bNteBmoJVOvea59hdDHUsd52/BDky2JKV37NgCDdlqTvUkaFTEz0V/f
	 ITJJCd/DHWoLk5+C9Xn6oqYWNjdJeHcbpxA/L1c9nDkkdm3oTZ61m4VIFXFqjazCsV
	 C1oeYAVHRH+aWujgaEGjmWW5fD/PkMIthrKytFLgDlTkt0W/AaLXF/IghmSxZ5ectZ
	 5R7VxSKQdzsLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7214C27C55
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807350280.30812.17543096771297248349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a1279da80dbc737df1e784d2daa6e5af12e959e6a23477a353c3a351360d3b
Date: Tue, 11 Jun 2024 02:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718073502
