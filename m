Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219DB1DB127
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756338594; cv=none; b=uuk/F283EbR4QNoLa80vLKvPh4vzOyHiKXjSgBN4c39OhhJJlHYIQbRTujzVv8YP+olZMqErhUDO0CTgJKV9Qz/TRofqeJ23NQue3sLyQuDn3mgxaQ87C4ebx5xStpoHrPMdAz7xWQzxzTzWaFvZFGlyISt/VGHYTfcl+faKCg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756338594; c=relaxed/simple;
	bh=wbGMCImI96TGxtdgwwJdL4bk8XFEvDEJ4MjTi0nMpMc=;
	h=To:Subject:From:Message-Id:Date; b=UOXqzkkOF+C3h0fjsRvMhKWAPSJFEFYUxcsI7jgVpK3el4dPt/Zg1ZSoU+Qt8HzVLHIHxVb26qMgBjx0TP47U8wxkZyRcC9Vkbw0oysycILsVIJwooombEVghssLrBpm6PbK5N8j4qIPRg3A1XPbjX7R43VsAd0qlmP2VQXhYQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDq7qanl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDq7qanl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06F0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756338593;
	bh=wbGMCImI96TGxtdgwwJdL4bk8XFEvDEJ4MjTi0nMpMc=;
	h=To:Subject:From:Date:From;
	b=qDq7qanl2D0PGHCEfcjHNLf9f9RFNaUDh9z6xXo9bTSLRVTLukbTJy5nJGDpepP6l
	 20xdA2dLzRGm83DVnQYyNbmo3fduPECrch6KxDTcplZjAhtH6AN9RiDvMyU+gpHxG0
	 UPb/4d3uzRy2lL1ZWgs/CNhjVouVVsmgwjrMx9amYoYVI0jgZC9t/6Qe6M76dz+m96
	 mI2qJWpcjQaqYZPcKASOegiXM1il31Bfu6UAbzfWoHd0SsxKVkqOkMAWzWeAoWQyjq
	 jMKTsmk4KXeQPvkwkvKLnJAME/aAH031pu4wdjvqgGzGi7qqxTeJUGfdWlr+haeIh+
	 Y3azVYsXM0plQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91773CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633859357.4739.6318349853913154188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aff1e8b6824f28b03fd370e99f28d27a7b4e7c300ac249e21024046617d28eb
Date: Wed, 27 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756338593
