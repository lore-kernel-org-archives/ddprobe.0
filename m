Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1EE2ECD2A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768757634; cv=none; b=LVicH/JObqG0+9Z8dB98j4qeWlSq5JTX5azCTWLOiiTnf0/a2nISM0MfBLmlWfB03bMcNLJIfH+ToihKm3myorWhRQLjro9Tv5g43AC0pVxUfnpMsnx4H85faNaEJCfngLzJ8PBZvNYI9qfGWlb/exRShNZIW/RMBJHxkvvigHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768757634; c=relaxed/simple;
	bh=t6uXOWYxdagQCHXWLTWC8KSMDosV6WhUOZ5mE4bCGVY=;
	h=To:Subject:From:Message-Id:Date; b=JC84lAFRS/jY7Wpd5psjPCjQ2xqBaANBe1yuJyKZ7BM9NxUec5wwxi92nwzsaSNelOclKRTfnLOHXIOQiob5/lniE6gnq9IZB1E5skmwYmHBfkz/rbq1pfx4m2leIlqJQwwACm48v757/7MOFiTLGCj9j1X2JCllI490IdWz6Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyqkcfTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyqkcfTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F32FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768757633;
	bh=t6uXOWYxdagQCHXWLTWC8KSMDosV6WhUOZ5mE4bCGVY=;
	h=To:Subject:From:Date:From;
	b=hyqkcfTmxwMxs15GzRnEbpAiIgFQCF9ZWvggcaGvnfTw62EhUN9CbISrGv2jn2Mrf
	 w+DoJPNCIvIpMZpGS/Wh03qaLVUxfM1lvddq3Swx9jMhJCk7L6ekdr5/Q200Yi48Do
	 OYIDwZPioOFRgoJT3taSpERPxY3eP+fbGvmRNMHvbKZvuhrHtYK2w3qj0+cCqFzVKB
	 t2Udt2pi93sGHwddPAreB1wQgX28t0AN6QERkCdQR8cawhnax26HZ2rlfy0Gh3Rcrm
	 ZnR0t5qOnF3qvDmBxdPtcYmzHB3ozOjxqhQdPvIzljgrtTM8LJl8EFWNknnmAHgXPf
	 PgSR7rp/ugphw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A3D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875763358.26711.534592542165776673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c9d7267aa3594d232188525ecb8ae8ff61af3e6d16a3fc07f74457a49bff15
Date: Sun, 18 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768757633
