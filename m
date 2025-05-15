Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C1B1E480
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747338594; cv=none; b=JeZx2D8xJE0jWetrCLnn8joy+Y+UFSNInAKLeM+prpDH1iHCqU3/VHzyNMjFLoDNdqr2A4dkr4SXaaUhFvHYyWGP29sqMDVYSMAulAJXlsQL0/xmIkL92x8jNVoGyRVAvLEYPlU/3DGs737+4XrnRh8AyLv0g04gB3yzC1rR2i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747338594; c=relaxed/simple;
	bh=YLr3hA6PDsQZwFDJIr/GXM/QDpAm1GCWh+ZVVWtbTac=;
	h=To:Subject:From:Message-Id:Date; b=nUTqQxJQSeNSMrjCpngtBQb16JU1zTa8wFMBrBs9qv7bKPptzjGqa4L7ks2XkPzlCjtlv7skNYjRIKMkAZoy2bYvZEzZORf8yO9TU2fkce8E9OBU2aNqmpImtYDj3/FrUuroMnWuqfb4T+VmXWTobUnA1f6vc3fHZxIEONwFiMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4NR70pr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4NR70pr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2937C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747338593;
	bh=YLr3hA6PDsQZwFDJIr/GXM/QDpAm1GCWh+ZVVWtbTac=;
	h=To:Subject:From:Date:From;
	b=n4NR70praIggB7V/+9BXhHpvI6cm49u5fPTQ6RSidib5sR0ue2tV8OGbabEZyinuh
	 6AOTMXkpoRp0ox7rHkSSMTptk4ZpHRzNdQbF6vuNSJqj6PULzjffqZk5FnVUWff2uS
	 jujiGGYybWSfimhQYXVR/NGyOu3eZndkHBQSuRdl3BMNZ7BS0psfezOLBfN6FNmGt3
	 qohHyLSsvNzlMWYGQaieXMueA+L0T3dwMI921b4mtyB3otuVvOiTBDWUNBjfV0AQGB
	 zfsEgzPW6YalREnVmV/DBLfCdLUAG+YuL19R2Db8BtTfRrK7ctaOany608i9VkYmzE
	 Y3bJkTGkncM+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC33C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733859358.22771.16228695022488677774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbb96aff430c85064b16fb2590a5f8a3bb5bdf125109cba916656b2d4c72587
Date: Thu, 15 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747338593
