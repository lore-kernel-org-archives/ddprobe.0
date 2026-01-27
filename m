Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C331F7916
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769495634; cv=none; b=GO6C+j4tVZdZJNNU/3ctW4ifE2p2UJb9AzFQTS0QhY/rlPGSTjazJEN9CG5Z+4IBaufK1UFPnoldDe6WfAp1qodlxcsGcPMrJeHd9VECZyki5Ng+GZvyPGi68vZzrFX33klO/mBNgmNA+E8daiNkSbPNj7qWL9fgUgloehn6E+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769495634; c=relaxed/simple;
	bh=CS1dMHF4YPv5m+XXczg765X3IRuUEkQOV9AnE7dJp2A=;
	h=To:Subject:From:Message-Id:Date; b=mJyVw7hmHAiJBUTiHrsDaSOYK6Xea1zn8wwM9UhhlZPgaXLL9fcWcPPz3K8SKZXTAHn6UUz9OcOMwqdRJnRDoUjCmnn90dX1jUUuqSbakPqR986ybcwh2pLbV6LrnS/xe3P+viJaYJJEdxYx2QmOev6sTv79Nko0IGzedpR/j8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApWB8Cua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApWB8Cua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D3EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769495633;
	bh=CS1dMHF4YPv5m+XXczg765X3IRuUEkQOV9AnE7dJp2A=;
	h=To:Subject:From:Date:From;
	b=ApWB8Cua5baN0KrNv/ljLyl2OHREXeLVFufIMcjudX2u1Sc8uYWy43rMJH8q81Piw
	 n/OnW+dmafZKtSB4kq9pmCqDB9UdJUD5NrQDQtI4UDu08eUGof9P+L00YtZsBNlTdG
	 E+I7fEQkM2uiT4EDzQrbkwt71aSNPFbCRTEA0DmK3iQDlMKtyedb96YhcA7JshvINx
	 F33BQbbbYIaGLDdLolRVkedY8FxRXk078ud1SbDGDnvJVo2oWyriiT4eklLNC3ggfO
	 1/KmiiGh//qHZISIUJ0OdM9JUqhWTmZbIjrb2whWiTB/TYVMnTt0OFFEqzektbN505
	 g+NKqtULoz5TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92670D2594B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949563357.20217.6896102501676320888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfbc5d71b846d5b4ea3b42b8cb7a7c419c833435ecb74790187d4f5d9e30318
Date: Tue, 27 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769495633
