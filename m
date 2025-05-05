Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DABC2C9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746412194; cv=none; b=eKa/HkYYGz5P00Kb1m4SwKEhxvihnWGCrsWcJUoVoiODTjf6JRuFM8qJUjPRx4g6lqDxhJa4gX8PEmcm79d2A1CNxrsDoROiik3EhCED7CZ/LC2WS0pwHzlcFZC0mozLtmh1EXo3QaXLrMfGobdjRMSowOSmVF/Hy17XlyZY3FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746412194; c=relaxed/simple;
	bh=Nhs60q9nOBW4L6V9MmSn6FztfbNwayjbJlOPZVsRRBE=;
	h=To:Subject:From:Message-Id:Date; b=rue5Oh9LPSxEdEpJxaxOkCrqIGAuJPGsFk68N3K3UzhsKGquwejTHWXiSiOrf8Ov5ta5BV0ut8C8wj5POkt7TNO+TySmLqfZPDR3tNWiO3KcsHn/aXIuoDhiPCumsD9TSkZucG7A4s6SFSNkPYSRk5wxegnL3VmKwgK2xR2i7Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhVmJsal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhVmJsal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB95C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746412193;
	bh=Nhs60q9nOBW4L6V9MmSn6FztfbNwayjbJlOPZVsRRBE=;
	h=To:Subject:From:Date:From;
	b=VhVmJsalfnCZ6iI58XwnTu7KlwUyT8yk3j3XR69z7kqFDxSlm5tUxo579dejs55sS
	 vYJabbzSDXdyi6ZaKggt4nlh6vwm1oY1G/QBZD9vBNXq7arqQfeyvqrd//+wbxePDm
	 gyQlAoqf3ag0tigfBDPZkra2LHGoCUicJJ5EzoVo8Qb6v8ANZA7JkFljKwXT8TKPYl
	 EUY0eVoiGESyu7plKyoSF9k9NDG54YKtWKta3QTyEMhiOoK7/nYXfRb5KS+dd7O7Oe
	 OqfsFWkNxD0EbXWW9rto38f7jbzEmLwY2DG/KtpVR7IN4UzZOBNau1d3qcNh+50yZo
	 OyU47FBVhs51g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4FC369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641219357.12965.2057748450050763200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1102c887d4454287cef447a0d2977c5081e3013d9de10e472aa5ddae27a6ab6b
Date: Mon, 05 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746412193
