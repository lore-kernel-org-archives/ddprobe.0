Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F4C26E165
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782234994; cv=none; b=kZPiQQvvdOVOyM5vln9rlbuK53PQpBDmiJAbFQulXDtt0/FggOmHyudNSJYFHtZveA7On9Y/knZ38pt2XhgIMRYtHH0IKVH5qPlnUGHbcjbreb1qFoT0F/NQLBPeD6Dril3VFwItn3vz32+N8xjUYaXzSMOzXQZNL9ibtZ3BLb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782234994; c=relaxed/simple;
	bh=SRIaaTzDRDaT57aw+C9AQG1cBLpZ8GfYRAXWJcn+WR8=;
	h=To:Subject:From:Message-Id:Date; b=rnQxIJbVeOWscTnOBYTmy+9QUX2v9sqfI9PjoyAJSRMDAlAs+hPKQ2v4rcpCj+BolOQMwvu8Tjw9pmMPixY1rET9Hi37alOCsVVNrpinroxcmYMPvdAR3jLtQTdmbJZpJuksLZyxQ+0A+4qvEZKGsdJ6Clyhf8zcCkuSH0yxKm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeDpM/fH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeDpM/fH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9437C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782234993;
	bh=SRIaaTzDRDaT57aw+C9AQG1cBLpZ8GfYRAXWJcn+WR8=;
	h=To:Subject:From:Date:From;
	b=MeDpM/fHgdJ1wxz6lEhLpRaF5EhYsa4r/M4R0IgBFqOxnsi3c1FtMpY1sBWchIxPS
	 dKvUL1S5mp0FY/doufSaUUvM7/XNNCpRabIhthXB8upoTuniup0u3KDGHamkc9MYqN
	 yhP7MvZe/s/gCYpPeay1I4kfIkTgLJedkQKIL1CaLFSaEaIZEkop4NzUoo57Q+iYD1
	 xSk/lHPLwfQGGjzJr2gYa85qCIHKY5SmwvAhedMCP1g2pXm+vnoq3NdcvlgRIfi6bn
	 UI4IiaH0RzzpT5mKoWC61ZjltyYS9Xe4x6TnplOEeJu5AiFlQLxl6BTpuH4b9++72+
	 D2l4ntRbdp/NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C4DCDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223499370.27055.15667960565641687929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa78d6bc61cc1e62db7925de664d8acbab2d081269a444c8042347702ccb47d
Date: Tue, 23 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782234993
