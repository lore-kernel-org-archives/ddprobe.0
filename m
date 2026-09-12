Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD4334E75D
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789233634; cv=none; b=C58pSaSwbhPCD+Cco73lYvvmp79lk1B8b1LMvdRPLP3vpIbkFmK4bm7Mvpd7f0xRYmGeJxefoyVuD6maTA4H0s3wsdRXv8GVRRhtEKTpoQKHntvS3awSFNFpMgv+Kr5k4FLSukxozt1oy02VhvU0FGW50JSsItOM5CnxiBQQPdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789233634; c=relaxed/simple;
	bh=T7zQC6/bz59cMAoZICqwRbQBxekzxezwWHpSQlmNJhE=;
	h=To:Subject:From:Message-Id:Date; b=seNqZUdZFUMIp2vqeH4OO0p2Crs3VEB8xmH/7UVd5lyd5aNYz551ujd/i47FnSg7pxaR1lcSZieGnfkd8uNFRKAsAliaJZ4Y86NEzo0UpSnGTb3FXPswFRFkcLaVThaFmlBmollfhhg8FSIcWZecBhACaxbwbiElYqp8lA2+s/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckMCREv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckMCREv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36B0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789233633;
	bh=T7zQC6/bz59cMAoZICqwRbQBxekzxezwWHpSQlmNJhE=;
	h=To:Subject:From:Date:From;
	b=ckMCREv2nEwwg1ZPqazpiL/B/f9XPsufqN3RvJcF37oB32ognuBIXSU53/wP5FceJ
	 uCCXNP+di4sfkBbrp3DalscKmCkcWaJCtVNI3Uboif4Nid74A6YrgmJdzA6fUGNsXu
	 UCzcEndTC2l3BdO1Mr0KantN0awjrDPg2N2h1R+oNtxIuV1X2VS147UnwbHOZQVLtF
	 QLaloRNz3l8fL08T+QM6QE3UY4iXgPt3D3jwMxuef7Fqk3xQO3k38Ge+ANyz9zO+a2
	 PwF9TVyzh/f5BagdGpIQFbn+yv+vg1UM8sync+50neiAoWBlbpyUZTZPsktzv61zih
	 xLy/oPZzNEsZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9681C88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923363368.13430.16351471345311589755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48dde351cce73b2892d51638b855a0ec2a5b550d744e65bb4c152d98a910a3e
Date: Sat, 12 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789233633
