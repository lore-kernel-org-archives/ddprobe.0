Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2723B70808
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782522514; cv=none; b=OLTxU9uygUwpU7xE1X/nh4MS2gscG5kS45jVN6YU1arclgXis1eO94OeLsFMOfnQdl1Hy2nsrE837tEOP4OCQayBhfp9kD6h2jRY8EPljkKQuYO/RBLibFOwJ/VcBsimE3KNYAsRDHdhC6a/Zu97tZIRUnJ3Bw/3NijRl+XRzfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782522514; c=relaxed/simple;
	bh=gr+gDoivf6vmBVoVvGPVi7a2w6zoMOAH6BQ+lS/rUEQ=;
	h=To:Subject:From:Message-Id:Date; b=qgxp4/Y8/yU2qOyndICn4KTix0XbHwPVbwb0dGXw1pPVfoIOpqVvmBzv0tXYtc5NX0T7efbAdt4ofImJXjkISHQ9Y/KS8qISoRNrEBNJUCBVB8XYXrS1AJ0WukXxzdn+JjzfvYqBz8KFvMOZwpURG7170IgjlfjGAqFSAL5NTaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mblTk38d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mblTk38d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C720CC19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782522513;
	bh=gr+gDoivf6vmBVoVvGPVi7a2w6zoMOAH6BQ+lS/rUEQ=;
	h=To:Subject:From:Date:From;
	b=mblTk38dToYAqNWEYtTiLUOAnzfV38kq/hVJVkDKfxDzzfgzS0gG38wnEX8ajDS2V
	 tnWlsXxuNi2pQTD6E1zbWQLAuLctBxWWe2uugJvtCA+1MGIEgOTLtbGl+c8HgEE1Ca
	 zgn2AM2kgxv97HVfaSv4kAxOBMM6EAMcpmi1GTVEYPbna7Ug0/k9LPOQHeDNa0JaSP
	 zUsHHNYNnM3MeV0EYOhtxHcMJV8iXc3C2+9vrsl7Hhjvi4qZtS5DOTmltP8Xri4hfY
	 0jK4QbU0mnemZ7jbcAYicsthbCQTIzIXCeM+f/zYZcaP8s+3qIFqJ4ThTcxv4W+5wG
	 +VN1lzsSrbXnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAF6C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252251368.15166.5698227655408693094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b53f5eab476f10e1a21da13cee6fac4264b16fa8d10b8c2d696ea93bca0297
Date: Sat, 27 Jun 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782522513
