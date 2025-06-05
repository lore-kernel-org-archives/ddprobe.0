Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B511DA4E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749083394; cv=none; b=o1/EcjWnwvR4a1wcVY0dAuNxK51sQ4cTjtqqyBa/8j5rB4e9G/18kGmmUgs/jSbw1rTZ7v12eVmBYV9U9pkJbRTGb3ubTN3O7GD4MLok9MYs/FmzzVqQyclPhhQG8rwyRA/EXNYvQpMaCQF2o103ZWqCSZWVJfNTv104qKLkVE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749083394; c=relaxed/simple;
	bh=gE5vT9mMHdajhDdglw5PPGYfzQ8s92UF3dn76F2V4EM=;
	h=To:Subject:From:Message-Id:Date; b=oeDiEgYkLEXdJLFgwPEUHY9CL9yh+g59eY+zjsxHsBXP51xKcw3oanl2xz3P0XIOXtQ4b1PQtMmy/czKzPjvBUIU2idx6KkyUkShZiB4aAPxMJP8h0iaQdejM59XDkB9ZgYzW3q1d0xUbGiFnENnKxGkttlzLrnLI2IC2fp7h7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXyJywao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXyJywao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C7CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749083393;
	bh=gE5vT9mMHdajhDdglw5PPGYfzQ8s92UF3dn76F2V4EM=;
	h=To:Subject:From:Date:From;
	b=bXyJywaoUqHm4NpmgcrGmacRV/A0RWsGkB+0VfApAqghoJMizRHdNVwEdb58DzVGp
	 FZ2c48ctWBJG7dP3H8TQUqpdKHLmxHZoE3E04igrxQQWPsBg6sZJayOxAWwN/XHDqJ
	 KwpDXL6BXZZ1kptybBn+mdbR1gAezHjfh/qEEKTMNClS/rWMXJD5VtMcTQCpVaZ4Dl
	 woDmGKvAoQzvr0nJMrZmceOz35KGuSnpQxFFkA3dx748YKig5bSjkDC/D2JzXpxal9
	 MjS6yE3Uv/ojzgvg5UBWMr4S3dP18IBwBO1NQo0LU6PyzJ7b2qBumBH8OteCxvkPz9
	 hDNFbWeYP4MhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F484C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908339357.16149.2200176414182512167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0e69db47d4c5cc6ccbe68a026aabb78e4901802c55b498b8505d44243dc2fc
Date: Thu, 05 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749083393
