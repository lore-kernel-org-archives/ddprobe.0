Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209E61448E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759469394; cv=none; b=KQFv2/NyY41KQihCgWNWn5JTFqZAMBEIaY/zOrZ70xreRvW4dxp4dnnswulgGrFa3VklQw7VAz8wEoVFhFrA0UoHMzKCUhEB81/eVRb90+gNiaCxg+v6ngeYF9Gw004fg0ptyM965fXXzYiQsGBrnyWLKNeBFuXF7zOe3vHIoig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759469394; c=relaxed/simple;
	bh=ShWFmQAsxfR6V3vfbvE8Hw7g4pb0F7T+jJQnnAnxdMo=;
	h=To:Subject:From:Message-Id:Date; b=nJDSrs65A/pVmvLtjswtEuDvh0UdMQvprRGZNsF4eAPATjZ5kRBqkesFkpmmwjSgHSvYUjGOAC/mWWcJ1G2qihFtabpPpi9F4EyFhsoirIxdHMTd5bI6gd+TKrCIBkTW4MozFIrDwpejTKfc9htQmButnbOEIvqDZngQfTH2ZWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfplmLaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfplmLaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8168C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759469393;
	bh=ShWFmQAsxfR6V3vfbvE8Hw7g4pb0F7T+jJQnnAnxdMo=;
	h=To:Subject:From:Date:From;
	b=VfplmLaUxXnJ/WpucTWALKgBqYbeNiGSvQ/198/hXxCVRifOMjux7Ur5psxxKrLL5
	 kc9dLZrYNRrPe5n0/PsaAEjXU9uEOMJLysojaeFw0SS6NUQayRWM6+1CyQlniaKu/g
	 W8DEj2TcUgDNZKxYEt+T8CACNTbAa1rB8rs50eRF5x0a0K2uwhDtNPA2h8qtblqcKy
	 SALxulbp8ceIAFtxeQVz3XJGQ+wz+ckbOZtqA4PrkJuSn7/I4zuLrWpQ4X2coX7GNX
	 n7nTFACUBXViiTsTv0KkeIgsWi+Ehlf9jwpBK06xkdNyY16Z1uvO3aiB/2BE49fzwP
	 NoVetSE9X7Hqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F6CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946939358.13651.3100773167410138379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf49bf635a277d1a11f85616e7a4416a2a0ab111c46921df9824425f9d04f77
Date: Fri, 03 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759469393
