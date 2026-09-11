Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBDC3DEAEB
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789152634; cv=none; b=MVOCnAvixOG9HcGm/GMOQIE5nyisTq5HPFlLW9t/oRXqjt65kMUInz4SdgYItG5oSgp14H5idNipAZEzg2iM6J9kKsASYgIl5WObBVMZaq71t8tGgbX0PftGYWnAjTpT/d84yqs5Dp365gf3xhiI3lSw+IO7LxW3fKbtNN1dVrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789152634; c=relaxed/simple;
	bh=D7+8b9CZ00grV9o3N/X/Vr5XsY5b+zRpnHtuyorNFt0=;
	h=To:Subject:From:Message-Id:Date; b=MFKaiXQSlUh4N8QE1Nv4I3EFewGugiuaGa5sxiepyOd5BdsFakav+JXZahXeOLsROqJoXhMFAlHVFdyeUUhBDHeGNHNQyzHxIHCatlhJO5Aw+zj3zaWHCvci6p0xnRVgdMzDVCncv9klCVHtSWRyVZLKdDApeZMMnaLmFXPW+DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEvmfhfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEvmfhfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C84C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789152633;
	bh=D7+8b9CZ00grV9o3N/X/Vr5XsY5b+zRpnHtuyorNFt0=;
	h=To:Subject:From:Date:From;
	b=UEvmfhfYrKlplml6AT7VFAq4fy1J25mTCg4aQ2GrtiHGmRSRqN03ZoZepvMAD/7+o
	 zl8Mgon8VE3ZIxhDQzDqpYgSo+frot4a5/1s+uC2jk/64/zCPFwh1j223b9xxeVu1b
	 9/pr3fz+AaUWxqT2Z01fOrr2uvZi8vKnzxnpe5ow26MRvgLxQZrLlZu9jjnaBKe1SD
	 Wak54B/uRcnLZphbC8J7xz0g+OES80pTq6Jzu87evYRFmxY0p8WM5j5+FY9a1hF2Gt
	 OIhYM3JWyn7ppcpo1aXvZntqk2iFQ9QCTqdYa4lN+4cb2Vz91MKeVdEFGyuVeKR3U/
	 DuyDKvfZ+Mzig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20A1C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915263371.12201.2004338747007200933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f14e0174a1aa0c87e94bccd956e3c181ce01dd6a0a8050e903bd727342c5e3
Date: Fri, 11 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789152633
