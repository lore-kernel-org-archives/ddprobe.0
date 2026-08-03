Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14224435A86
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785783634; cv=none; b=mjdPwiYTJDPW5ZMNiChYkvbDVmegOvXLO+nK5988DG8OMamQ2ntyggURWfk+C/ng0vk6w6BmsJs7enmjS3QMJdjbEttv4a95rz9JLH1xfBdpSk+Z/NEQUaAkJJQwsJMl9rXWGfW83nBJ9jRds7bHBh8qQpw3qH2AQ/VjCrfgE4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785783634; c=relaxed/simple;
	bh=u1J1zVinTXB8Iq75+2O1oFBZXHobEqMgJKCpxVdkcK4=;
	h=To:Subject:From:Message-Id:Date; b=MHA7cSjeJV2sBVKRQoX5Aym7SCNhvoUc26eSkNjrEZr+P+L2QeqWjIzqrQG6H0WCV6mlC1aJF5+cVgQPiVDHFFW7MYzqUjaigxL73an4Z8cY8Vu73MxbApTROz5siIAFt1RJOK13MKVm1LKpR9O3Qd97sZc/kpVe1R2V75lfOqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWDD9n7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWDD9n7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F37C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785783633;
	bh=u1J1zVinTXB8Iq75+2O1oFBZXHobEqMgJKCpxVdkcK4=;
	h=To:Subject:From:Date:From;
	b=YWDD9n7IWyoDAwfjeOEkGXf2HoxOzZl1vz5520M2d2izw6VFhPnsTbPQpoXJ7dOhe
	 pgln0cvWNh1STF3OnXyFr5qQhGVRtPJc7FFKaxXe/c5+TR7C+elxPPYj4oIoMbqrfx
	 Vw8G4bayzzZmglwsvPWmJ+8kiePm1Ubf7S3NzEah9Iuu6lYIGoS9YIdrchSnEeWChZ
	 NHL7LdxGwCcAGeXn2YEFFVQp05JU40RM5iij3Vfq3/mzhYIh/a/kv+I2L65HOcLc1f
	 19ul2lKABnRYaIkhP3x1R1KcnAP+ijE1esphmXFvqc+rZiQmSdwjSTsiY74Mz5EmuD
	 xOnmCJwUIwJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A0AC55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578363368.21033.3989159099945560083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80ccde1159c53265240c7e4e78f5597742d4d6a660844df28a58d13204aacc7
Date: Mon, 03 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785783633
