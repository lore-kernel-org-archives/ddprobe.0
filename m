Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A3A332909
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780006954; cv=none; b=KLJAMGFRmfIUVxYbT/RZsOKbuLwSWyxYFnC5UcOgamwiOW34ecO4MByE4D8IEaA4/Jd39HxGX6IyObQkGkhdwPlVybqx7iJWCnEA7IqaTmVR+roO0beq0aFJmcKkoJO3Uc5bCShrA7Lz4iZul+aCswNpN1fHatqdVUlXsbrLCFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780006954; c=relaxed/simple;
	bh=c3awH/PTrUeaBnxP58jWtcTu6gbMVZW4EWhmuKpjJB8=;
	h=To:Subject:From:Message-Id:Date; b=bNoR08/VSLeoJCTiBYhurYwxtOfFRrOMneWe1ytyYCsJpE171MPu7A4fgyAcfs9B09rRCHf+s3guPJhpclPyXVzAA4qj4OQrGe6UYXy5vV/SQUqMHO4yjsw23xZu+EL4TklTArMgwPNAPQE+BF6SO7CTwGs0Dom+JdrUPkjfzFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7fipGMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7fipGMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D9BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780006953;
	bh=c3awH/PTrUeaBnxP58jWtcTu6gbMVZW4EWhmuKpjJB8=;
	h=To:Subject:From:Date:From;
	b=r7fipGMYqKJoPVwMxvxaEN1D7VKtIDtNKqLNUVGPWSfXeECThw2mUx77Gc+1GzM4Z
	 l9W3SlAeYTXcj6cquT2C+KPRyhhpaBd0pTVGCcQFLgU5lAOjJLSNKEbvxdLC6P1Q7J
	 b1S1gJFs/MdPq1Hhk59FLAn+sSdFS8NgBTK0QgfjLApHuzwjdQ+Np7iz6RtE6f1K/j
	 1FA/NcX28z1i7X9+SDu5ZY2OXfbdARx3+8N081xsYgrMKKIVjUCS/c0OxRkpQv0A7b
	 fvvnFYDjFrGnSbObTeowOsq4Oh+Ayxi/L43oiuClUJeYI8er2Oqf+uFVuAPooXXsVy
	 mrKwMWSnqtXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD78ACD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 22:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178000695370.16654.16018139866071213215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b322aeee096f80d3ef12d0953b8af260f924b296fbb885c605016ba35d0dcd
Date: Thu, 28 May 2026 22:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780006953
