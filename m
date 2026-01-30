Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0242E2299
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769754234; cv=none; b=GZHLZDtF7M9FLfwa2BHF44EMPDwvxk2FXQxt5LhA1BgY6c5MC7x/coVo/OvTDKFU7pZnLiOs0xAqtn/ZrVaSu2QDdDdyIITifEkjSLpruVXvVzPcRlw7muBX6L85m7rsl+1nbTZS+yyBipohJf+7NwjW5HbjIK3dzzzcVNU3ld0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769754234; c=relaxed/simple;
	bh=2SK4atxGP8OA9Icf7cCXu5/j6bbxFyJ9AIRCk4S6cqw=;
	h=To:Subject:From:Message-Id:Date; b=WDKTAuIS1UL/8I/bO03VzB3Fr2YcnSASM+jKRmuySm/yUgDqmvnI0fohExfIyFV9WrhkKQpTIpJoDaJRjmRqIn0pDLe/8KdljFQySK0ua5ujNeMW3HNf29ulYwUlk9oVOav4b0FmIb6LX4uJsqqF2xTttNezB/nLZHhjtLe8hU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6Ly1JDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6Ly1JDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6880C116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769754233;
	bh=2SK4atxGP8OA9Icf7cCXu5/j6bbxFyJ9AIRCk4S6cqw=;
	h=To:Subject:From:Date:From;
	b=r6Ly1JDewmLX8yFCUVs5SRM0A15r6O/3KslEwdstdqONPcZ+MrOll8LkWKTjuLDcq
	 mbvb2YrwnlV6lhwKbp/3IzYxwVSdQvoDrE6tnA6PpKAkRalug6ysnaTpi0faoLMCvX
	 LwyjI3sA6CjJdKWoquk9M5wTS+MYeb5lEpY2jF//q+TZwEXZ7DhZlnOFSAbAZkboX3
	 oFuyXEN5hN3zNX2SxmaVOn8z0EN30VRPTZFsYEzHUjx6jsui8203NcByP4usSmZY7f
	 tiFtzdZz4KRplpVDe/QBsPA8eRRsoginUu3Yzjhiab0aRoCeg3yh6WoPl2C21alpju
	 GzzralcrJZonQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C0D358D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975423358.8154.8890269895239624833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d4d2fe441d21e2387052099cf8ab0b329ad2b02945a562f894d6c6b321a5d3
Date: Fri, 30 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769754233
