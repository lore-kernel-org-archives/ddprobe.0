Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376953A872B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784327314; cv=none; b=tYDfplAqhLZ9ApuLJHizoQnhzaF52X30Be2rn33H5B1VkeV9JhIY2N8XXsdZVNzMfwe70MshdF+Rfb4VsFPkONDj4+HgumxSUvL1/5vZRHmRCas2T/aTLoWUt3WEPfDEzsbwHgVj5GPFXdeN2V2z+6tpiBrwh4OUFJCpiHg1T6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784327314; c=relaxed/simple;
	bh=tOmGOgjfamaT+N+5H8boRbfl6w08RwF202ZmRkUvDm0=;
	h=To:Subject:From:Message-Id:Date; b=UzZMGwRi1i+Rc9U4omPm4eBpCpr/sVNninsz0YCxv/wSqGX6oeoUTUqCo96yGs27Ux9fCTpMO+GY2D+n7mE6bVF0ZiId/UaN29qZjwWsBmBv6Yznpn/e13ddCy54nT22amxGD+fRqZeoCdf9AexGPCfRKJ3+F5ZI/6Aott0nZrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cznIxpSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cznIxpSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC000C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784327313;
	bh=tOmGOgjfamaT+N+5H8boRbfl6w08RwF202ZmRkUvDm0=;
	h=To:Subject:From:Date:From;
	b=cznIxpSv700Hdm3FjGenjjjYtUTWH6UYTeiidD75fkQLeiDzSvxEIDugKr1ouS69R
	 3079jCFNgqf0upBlOW8E1OqKChsdkajJ7EEF968SBmUmV/BPkgWrelbA1nzoIIYahL
	 QKMZr7Uo7kFTM9U2+7PfG+bTksb/ecDLkkIUvnd6AW4WXMQMczusW4CAKAy/a7Jewy
	 0v3xm+lKQHzOxysuBCqEDEh2jX5lj3wPc27bPvVXkeR+Xf+BW7zV75Bg9QO5RAi6X9
	 i7FYnFul23Hj8jkW4rG6f/Gg8zSDF4Y6HQTCDejFt6x/NCsZqroSAKC7GMhawEhNbJ
	 nndPDVo/PJR5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E0C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432731368.5889.17291441027881151692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9485dff3beb8431c26803dd40c20ad3e260cb8b65f9713f3a9496fe812761b4b
Date: Fri, 17 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784327313
