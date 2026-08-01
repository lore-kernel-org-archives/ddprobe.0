Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C2435FF5B
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785601834; cv=none; b=f+xBWCoqTp5BWM/vVpFAOiQN9WrBiI7kwk2Wt4zMr1cWyMGcnwNC7StyfBL2JCpZUoY7PKWrjM0mcP3UVZ9FwAm2aOQ5JjwY8Hq4nF7lObIhTmCZC6Wyu6za2kP5s3eBX/DTcvMK3XFVR7nDZSpXHgBlKIHRRXG98T/9CVPy2yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785601834; c=relaxed/simple;
	bh=HSkf2CUSHz16e6Melw5brJeIzeOfrEorLQZwWsosaVA=;
	h=To:Subject:From:Message-Id:Date; b=GV9Mip9yePWA5I9uwOOJQkoxoCLlDgLvJnedzjqP2UnyUGlwXI/6Qij4AubHwy1S9MgI8uuAb2khd8X1r+dM8jsENpjuQ9IQbwOkgIizkAITXL2orDdIm2CAVMJwkWI9S2uDy3RbMwq88Czrr/IMjlDL/E1E/H0KZjyM0v+kiww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTqGE304; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTqGE304"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEA8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785601833;
	bh=HSkf2CUSHz16e6Melw5brJeIzeOfrEorLQZwWsosaVA=;
	h=To:Subject:From:Date:From;
	b=gTqGE304DZWYZHaANWBgHdnZYElWCv5k+m6wXqN7k3rLhqKh5Si4rlaHS4jZ/Ihpv
	 cVKN3UF7qmcNUpFxUmEBGyfqNH6w5eplSC6NUywMTmG4UJzGP0KY+o6pB8DW9DIkCV
	 kj6PsRBYypm/aVrTBCjM1Yw+XdYi2mX7FcfdM+0KSyB6rwbB7LewMLDaGJj//GunX/
	 qypdjti5H0YkiG/3t8CaM7rbudD5ZlOpCSTQmTdv14qvtNt3v5H+cI9AtaM4hd+77U
	 8yTRrKNMbWf1Q+eyTopjGO2J/B4u+SygApXE1lF76cNpuVO08iksKMa5INaayleKwl
	 7dgpE6UvVnATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A992EC55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560183368.2258.6301716341782865634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff473d35a332a322244f007fea030527c5d26623f54a2c5ea73fa6de9f6104bd
Date: Sat, 01 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785601833
