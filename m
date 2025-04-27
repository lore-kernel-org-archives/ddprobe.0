Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61121CAA85
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745741993; cv=none; b=r4rCfyQ16b4m31IWRdUmZkDljbWXLfdAjGgnfx3SzM7p50Qu+G/mOWIZUgkFA23id1wULBJs1Do4bND16TRV4qWHa2F0ufni81elRnJFWSiruJavFdVCFBV/OU8BEoflciGNrtiOwqts6mwQccYk+VSVG7YrZCGeFDQxPZIMHMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745741993; c=relaxed/simple;
	bh=d2lsbw1prXUGXin8BSBRUi09d7Z+JjKdWFziRIEl0mw=;
	h=To:Subject:From:Message-Id:Date; b=ajELkjimQuOJ3QtIcVO96XCF1PTFHE/6Rhf2a21zr+N4iSqeyJO6B4Qh8KOguOVez4UQ/g/EjBRPkPVXYSFtcLw/5vQ1ZolPvLQlCFPgBH4bx+mWCsCYX3CO0BugXOSrbdgsUIdsAbbQKWarc+NOMdlxbvaOpyiJx6++n4nsNTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNbhHcI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNbhHcI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB170C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745741993;
	bh=d2lsbw1prXUGXin8BSBRUi09d7Z+JjKdWFziRIEl0mw=;
	h=To:Subject:From:Date:From;
	b=QNbhHcI3Fvy11BCQ17PzdA87gHfLmSC7onmXUcTRZ1Pk6QJFv29npZoQz0fzgao95
	 K16ICdQV93jd0jz12D82dhwoHVxOJVX79oWHELkWEsIebwjMJPKh0coSeDsWPX12Ok
	 ozqK50Lc/7a7XEnoVHbd69S93uKj+IdiPFXyBPsveKdJeXYDZlrr/psbtSrc6umxCR
	 fOE204H7gdcR9wLkwvgswClzPBWNg+amgR3Gvo8UX6RG2AHRESPsRGFTvIy5Nux56C
	 MfP4h0t7T30xtWxwnXEzaTBRymOsRSW9FjilHJIniOs6ULEZB0834ZyYP1ZK+dtjgR
	 ShDoj+aQCEbzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5B7C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574199360.12183.16928896424459406644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7481f6acbafc1fc727790c1cb13de4b7380178a355b5df5ba0333294f0a625
Date: Sun, 27 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745741993
