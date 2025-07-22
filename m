Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243A2221297
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753213795; cv=none; b=nbyV/msRonGmLA6ptwHxLJK4l0Ox797lY3Z4rYaUtyQpcUN0MY+yMnYrzFdIt0fQ0p/zbemGgHAlaNryAEZaNtuibSYMgYL2mDNuYFSrjbbvwp3ifKd55AxTfRtZA1loAoXGiv/1th6B9eW+JFrjZS9Pegy0JyqhcLUVI4Cz5bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753213795; c=relaxed/simple;
	bh=mmO3eW1LiSKr6h34DyP5rGtvfoab7oXBMiVxkLwLbGI=;
	h=To:Subject:From:Message-Id:Date; b=qwYv+OGqP/bgj1vpoC4erjrei8yOPMjnOqjwmqaRmtpgF7qvdh+lOx0WR/mCVdrtsNo90GScNo0HVaMqSHWPTIluprq19RIuoXlY0pe9m1GO9LMnyF9B0KhSS/eDIdQVADoU2s07ctQW2hzoLz5UOq2xnZRBb5NwJMIotf/wu7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLWacbZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLWacbZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A072BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753213793;
	bh=mmO3eW1LiSKr6h34DyP5rGtvfoab7oXBMiVxkLwLbGI=;
	h=To:Subject:From:Date:From;
	b=uLWacbZ1KBmuA50CdVBolDMuPSctO0hkkWrdk+CAupx1eDbnJyO8hRFyy/YU4uVf4
	 wUhpg0nhRe4xqkQh9AW/ZJ+uchPbvYkxl+bF2CIrLJUrAtImLHMXYGj2GTCyFaGoPz
	 UZLNizzhhwBzooqBKPnQJs9lSGVkGQhgxIvD2Q5wrJ2fyyqwOdSO2Wk/79F/gx57mr
	 WM+NNDF/b9PJB6sMrV9fTnUuvEVQ88qxqH6T5Q9G1fwlSo5u81NQXGplHsl2Embzbt
	 TuXI8H3nc/eEQcw5KC3EV0kEJ4ii+w4EK9rZwujVcoZqZTI7IzMSYFS9sibv1jXJtz
	 KManfqpznU/iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90149C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321379358.25449.12804519873195501228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d4236c4946c885be093122c7abcf61a4e3803962286ba66176cc0e4efc6619
Date: Tue, 22 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753213793
