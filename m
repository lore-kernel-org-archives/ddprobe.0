Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F59B2629C
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761402594; cv=none; b=UhYpPE+kOo2Rz1XFeKSSgiwJHDuqqdOaklAOGVUariA3OEvK703SimYSLFtdJ7wKEJ9wHNBvCnf44apdusVSeLSX4owW7ZlDCsuWQ3OyZhHlVaDBfrKArjW/6E7sc2/P0n0CH+lx5fNDa/jI65bukI5ziIXH40V9GpCcPa2q7ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761402594; c=relaxed/simple;
	bh=il7Wu7BdIwH5MuuZFyTSvMcYZGyXvEiUCC7NHWjpn/Q=;
	h=To:Subject:From:Message-Id:Date; b=VXOAcRfraoIPOCLpMYT4NR7ibifFuvetdY8U7YD/PLLyKsbc3gnagD7kSAKKTihGMVvE7I33zL65v9wNOjkm0c4PH0ov1eJKRCsibjxAdNp19aKmtRR2C63SvaD5RD/rOvl4eXuumc/JbjxtY+iaZu9TLBzPXSWlqzRg4+NzE9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btxSLyCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btxSLyCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C3AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761402593;
	bh=il7Wu7BdIwH5MuuZFyTSvMcYZGyXvEiUCC7NHWjpn/Q=;
	h=To:Subject:From:Date:From;
	b=btxSLyCGk0DPLh2whh/ouB+kNCq9HodiVRo44Hu18QVR+XthrywShvCSfP1pzqGc5
	 X7IsFn+AO3DaI2IuzWrbnJCfyB8wv8aen3SC8OPnfV9s9M4E1VCwP1R77t2nvlXD19
	 5/FfKSn0/EyY08sbM4bvNairl6Am4Hpuy39XCEagLACU4iWZPjq4WdRCBW5G3MGCO/
	 kj3z2W8EnAZc17o1K3+TsYrS9xkehuHlraDKj53UjTaumX3IlKUyMg5TjR0aSwl2Mh
	 do6IZfYu4eFeYzCwCb4Hwi3KNe9H1FeocGzbWfqzwqUvDkPXeUlglSoM3OdaOu6cE3
	 iH37ydmBNETAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91137CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140259358.11558.16585865242293197029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28da05d9bf10449c28bc9949bc0b82a14b4e0cef929f7b07bbfc7f6ef5ae0b44
Date: Sat, 25 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761402593
