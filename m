Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D8F2BEFE4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766205834; cv=none; b=ZBGWeXyDovlI49vcBPG99nQvtq2MslVTb7GQ5Ogmliv/v5pru1gFVaPyGLHayU77UQIUVPiOmO5d8txszis+b6cIWfDo7GsSij9pUYbq2Iu5gRttsgvf/K4IY9FnGiZDq85oUspaEjty5tXAc7/Mdvbxp0OMKCfqLJTLDiPGNlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766205834; c=relaxed/simple;
	bh=1EmF5O5xJI7mBQtuLGLuLAUrzo6lDJbR7+T9XcvH4ms=;
	h=To:Subject:From:Message-Id:Date; b=Dg/XUkSfVW8XQcqin1mmToScp9lUKikjHlw1T3dxtfCX82w+Pu0YVBN5eiVGSiAZ5P1EqckxoOQknix8DSg/IRCgWeDp4Dv+J/vlteJ7bKVWLPwo37qUhECWKqbggK5shZL0EUVf7u9OrEpVFF7ByV11Ai59QY+BHpZ1ZjMFYB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By9yOukZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By9yOukZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766205833;
	bh=1EmF5O5xJI7mBQtuLGLuLAUrzo6lDJbR7+T9XcvH4ms=;
	h=To:Subject:From:Date:From;
	b=By9yOukZg7tfllFAkb/Y7v3zjywjPluic62kj90Lo/sTpX0ro3lWqnylGPokZw2Ps
	 4lfgUcwlpGQcTIsImwYaPLxWq4rAE4WO1v5sdPGqxYZ5yuI1L8NZuCMyy0ek+MNBK/
	 LQg/Qyq8/DMZS/zZNjvIdQ1PbIXAcwtQYgGhFHEJ888nVaMO4Z00PuVGo+oeLvA+N0
	 44KKJHv7REAwoBf9SV1P093el3uN+ccZZwfLA8zkdq1/Ei0D1Ns6qyZqLFzVO3SHC8
	 a27W5xdg9xnPKhHO1Mb8kUUgVVLPoTKNdDPnY90g3spOBNT6+qmRcjYwotvNtPKMNg
	 JPeug1aDWcG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B51D637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620583358.6203.9786022236368437551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a5b9fd639f7e2636e504528cf6215bf33c5aa2dca82e8c4024513839c09338
Date: Sat, 20 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766205833
