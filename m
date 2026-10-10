Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3115933EB10
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791624034; cv=none; b=QiGqvVvQFELTFVOlbVH4Vtg4IIKKg3ykErKRPjELpupfcn9YmMq3ipmEhF2k5dxjzeWjMPtuwjqRyfDO16mAhYyzkIiHnxoRsdSZPFWZUth8ndjkKvJJRNBn6Zu4juMrkVUOjWaMgDoAtlIy+VhE6kJqnUxevlo8Z8crW2uvDEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791624034; c=relaxed/simple;
	bh=5yLGBUlF7qWlFmUncU6VGZMmIko51INcMkqxt7nscIE=;
	h=To:Subject:From:Message-Id:Date; b=lz8gjHk4np2Y5ydcYKf/TT8REP8uix0I3E771HBEhF2j3Woexo8KzSiVZGZtwCcSbTp+cFJteDuYmf8LQGJBfpOyE13yJod1g9IwVqtoFlpHJqTY4lIOhs0Z66bCGUmq9N+a2mMQ9lV6177su9AsuHIX7EOybVQP+5Sn9GKPUZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HoMZ6xkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HoMZ6xkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C04E8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791624033;
	bh=5yLGBUlF7qWlFmUncU6VGZMmIko51INcMkqxt7nscIE=;
	h=To:Subject:From:Date:From;
	b=HoMZ6xkkAXyd8PVoBCJd7wzKWwBbnC6sxD53oqGFFtKEDRqbaq52yg31uJWLabcfJ
	 PH7bPuB9ZnsaH2FvPYaNZowZKzdyeVbeM3mf16juIDb3UP3FAYPZkDdTA2W1XxVMOz
	 MP4Hflt5Iq/Z9ljXni78ywNh0xB6qhtvIVX2tLVVKlkOQhPYJh9uUaI5iz6y818jcH
	 baiAEElyP4Mam7eoJCZV3Nk66+P2GHkHqS76I2too1p/XUhamsUHNvhzhvxuFIthpn
	 0EtO0y8EuUjz0wZNlJlRntJ1d018tM4wa9lvKkAza5L7tG+6dfs92cKI0WydrVTg54
	 /QPh7w3+EpLxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB8CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162403368.18261.16382871888953996865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98db9d5ab3922ead8757669ca6585d3202d64397ffca82904c45dfe39e0d71af
Date: Sat, 10 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791624033
