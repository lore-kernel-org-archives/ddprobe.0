Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064ED13D2A8
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712736497; cv=none; b=dGVTNJNhZvzIxwf7U7kQ065lMD3Y3u4v83vqcQxjU470uQHVRcqQgwgcrrNcUcxUptVWjT/voXUgL9gf7OwfoXEC1MigB1vtiu3STCcWGX+448HTrkr+oZjbGYA+98W4NuowwMhj6jviprAdpIjtfuhDXrpVM0cMld000cqLW5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712736497; c=relaxed/simple;
	bh=MwSCL8XiS5W8gKMXC1FEpV5R3KyO9XpfF18vk5qpLts=;
	h=To:Subject:From:Message-Id:Date; b=NtDB+Iz9XFutWcPeXLVzflptxdYvIRVMMCYM19bP4k/T9gxSShe23OFYBQ8hoore77+h7hZAWcj3uMQEj9xYdsLNvFmeMXYj33x1gFfgL+OVX4O+mTdWeGz+Xd9bjW3cRB5CKJc8j1HSDv0ZqZ/QfDscEEtxgLycS0l2ie7GIuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=di78kCnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="di78kCnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F208C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712736496;
	bh=MwSCL8XiS5W8gKMXC1FEpV5R3KyO9XpfF18vk5qpLts=;
	h=To:Subject:From:Date:From;
	b=di78kCnwxM+21K2AIED+zmhN6Hdh0iEJ2bbD3ZzXy+BDm0QdQx5tB73aNPfBatQRg
	 CEkAc6b5RvCJLZgysD1jyGGXtiLGrLtxWefn7fRWopx8O7v0NIWq3vx4YJGjL6/ZCf
	 C5SghY7h85vZPYW7Ev7dDptwBHH1DOr70ivG0bkkztrTQes/BhyjbLevPYlm5CelK9
	 wbQNepj/oRb2uRtEZoNPLW1xH1/aRt/3W7TsuUkc9BXqnKKa+SEDznBBVgkOQpNlD2
	 E+HkLqcZmJUQqs8tWaj0rhJerhgcUVkSM3TktOtSp0e4k3iaFG7I3FDWjUacmWMPRy
	 dmlgkUJTQ25/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73537CD1297
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171273649646.680.18369278391327427788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9122eef07b0959f83b9433d2602335339bef41c19563763ec7b7e9f973d2c2
Date: Wed, 10 Apr 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712736496
