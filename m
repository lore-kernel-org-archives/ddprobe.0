Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B42642AA9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782650314; cv=none; b=MlDFK7OW+XpIMmGPkEL8Z6wWTp3mEPsZuwiDdxOegXJ0lzKaZoGqCdJ7pkL+lPtEzgNz4KK2bRv/7wyMCLnW1DWBNJ5pAgvLPLLPDQb9JWqnnp0BUT14msUTlfo2kD2BCIMxcxPuHeEPpHRMLcH9gqk9DZ1vskP85qW7qK6aBlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782650314; c=relaxed/simple;
	bh=t+32j8QDG2X1FLAXAog8f+nrdjmvI78bMrqCoPLpkrA=;
	h=To:Subject:From:Message-Id:Date; b=lvPehDPF3auhhwk/MHREJbqwCA1MXmsCnm4gDTi/BUkkI3AV30y/ZjEnaBZ90K3Uq1QGhBKLoW3DkPAlPTUqxe2U2Tt9MX1vfKq1rWEOIraap/CpHnLzGYhqiGL0Fw8U1YheE+EkSQqNvN2CeWYWHJdSb/iMvR3JlHVbErntnBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+HPTn4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+HPTn4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC547C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782650313;
	bh=t+32j8QDG2X1FLAXAog8f+nrdjmvI78bMrqCoPLpkrA=;
	h=To:Subject:From:Date:From;
	b=C+HPTn4xm2RE2mH192gpXgKDb5fMgtQgJRutFGTCDqvJ/hCYqJ12TwauKo5J2A1sq
	 fGErvZycer+qbdJhX2pbjbHRmQ99kJFzJ6FnVy/GQFHi0Qg1LnLllM7ilrg3JdM34B
	 Yyve8olFBN2elZGP0Pa0OAcoGG/GlulB4Ha+PJRhWt256N35tFRkjOi9NWhDnGC13e
	 ERgeUg0AKAUYtkDbjDUuHmCzLwVRj1QC+sbNUuo9/llrRZHKMdRds8FTxkAS/p85y/
	 n3SH88p5CVhSgccLkn7uVirmp5fQO+Cwwj/idJtfd1f0FaBoMJInkZ7hK5PNTgKGAm
	 kUb5EO74tRA5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C47C43327
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178265031372.15709.17533241904592920264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247cf1aea3a982deffa6e9df411833a6e00e6d2fffa7514fc2c164164d805d7f
Date: Sun, 28 Jun 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782650313
