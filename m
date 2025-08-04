Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B29E218EA2
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754290794; cv=none; b=Mlj3i7sGOjioK0U35/netv3kYFi34lcznIOXskNaoo9EdLg0uXUHDsJuWDjcAXauDhK9smE+HPZjfqzrKNAquFiI3PAbXigiv+wIG1NO2SW3w++M3iGiIR9VjygowOzVfHS1KDYHa/DGVSKGA/rL1jyihWqhutQuDPnaT3+7Q7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754290794; c=relaxed/simple;
	bh=Dn+XA0EOnzu9qN8NcZLdJGjMvOW8IZP5SBWeXSOLL+0=;
	h=To:Subject:From:Message-Id:Date; b=TJbnKAc5fB4i4GZ6uM+uOb1gIxETDT/sr1GrZnoQYlhjg9Nycvt0f3SwsO5Bwb425kMkuhYpB8t0lYaK8J80/IM511/9/6NwLAybPtmvtlD2Kqt/OeXOW1u0AXPD8oQaMKsMoGEd+hbh61AuL7W4syS9CFxpuQW7EkmeZVCnyUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JO30pU9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO30pU9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D02FC4CEFA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754290793;
	bh=Dn+XA0EOnzu9qN8NcZLdJGjMvOW8IZP5SBWeXSOLL+0=;
	h=To:Subject:From:Date:From;
	b=JO30pU9OvIaPSYGFZXxCCqk9sxoUqeg4JowPc0cV6+OsW0dCOGfRM10jSdCjhgzlg
	 5VTb5u7spkxnGIzIEnLoym9qdkPv3Jt4Pcy5474ifOCJFhEwJWgLJpRpvEHzj/CDOj
	 2M7ZEKLRW4JEGujEvWhZlaDiPaPY48xO442k3IBhAhgzIFnO3lItSBLzx3C4Fe76v0
	 kv+dLZtO8oGY6pueOXNj6eJMMOs6OaoT/5TJLHnJh+QwGj0WFMBnW41chwTIJBuiLj
	 mC+B9uJfHZoD2v/lQjpSvCiOREXSev7wJ3IShs2HRPveH3USRoDAhCW0HVNNZNWz/c
	 yMEWimeZ8HmLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97EC87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429079357.18913.15446580525757818964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b36f6b43ff1421386f58a492422415e2a3c0044d7820b41b5fc546d0405e73f
Date: Mon, 04 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754290793
