Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3D58F4A
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742143794; cv=none; b=O8HIVi1KtzE4ZZH3jp5IiErO+N7mFpXff6hKqBkjPaAwe3Jzzsu5Npnm6KzKNRbudPK6m3vRZQK7h6hdf6DKYkmX/GZIkkgVp8EhRTp49Q1ON9zipq+nbU1sWc10U6NWV7PtYnAturrOkcu28LakmgG41IiwGoGAz/EczbA8tFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742143794; c=relaxed/simple;
	bh=p0RK6YWc5V0teHwlh42U1RuXp5Dwe0gJRBvMIS2XCnw=;
	h=To:Subject:From:Message-Id:Date; b=p9jaXCPzV/RDZS0Buae2CGE0gcJ8ASm2i08mTSd/OoV0RQ0DFjnVIMWfsDBY89ek2GvslueyZFCTGjE0Q6QzxRdzdHcgE/6u/S3S/QFIAkmKd01CG+zH0QN8PoicMxaYOtyus+M8s/9BroDEJJUJy2XiSHsHzrihKrE/psnL/H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IiUS8IGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IiUS8IGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFC0C4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742143793;
	bh=p0RK6YWc5V0teHwlh42U1RuXp5Dwe0gJRBvMIS2XCnw=;
	h=To:Subject:From:Date:From;
	b=IiUS8IGaLqbjymBaLbnbJiGPgW/WhmAwneA4Ku57/w+fGM1cyDsXKTurqkP5UJetb
	 AqyJMwl81WX458fj5qSxstPFaqNcKIK4aFvNvZWTBdwg83Ww87w0yU6tIrCoq35oso
	 HNyCN1XdRTCQ0Y+Cgogyp0jUgxPqPdsdFup1tGFYq2PM9qhOkK/J6H1++xRckvddv0
	 ds/t+nF2Fi0NtmBgnLIx/YXvVm5SuqtBRV26VgN4fVGZIq4evfQxbOA3aRM3q5Fdqn
	 N6aiSPzFWUvZL9P6ViTKP4uMMTejTbnRADU1mDnq4DipoLFXw2YIFyKG9MME+lvlbh
	 VyUOCNCrONDOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABBCC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174214379358.1913.3405130343765430800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91cb4e85c64f02c468da1763c5a6151c54e07f17f41a4ef2e4b4ca67af3a34c
Date: Sun, 16 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742143793
