Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044A01922FD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771679094; cv=none; b=JUZwbyEZGICppeGUg1Uc+Sw2MzJjAFciTnsmWxhEgr1YB5j7iQlKMlIOr7VFT0tNkpW6NeiLPv3K7IkP/7s1mAidLYhIGWQ8gn5AvFTNqNgeeyYxAH2hdlwitwmZPQwAA7HSDbhyib1ZbjAJAxdpyZcuhrWEjlZQIkOhCqSXcoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771679094; c=relaxed/simple;
	bh=ku+23fosREcvmDQxZf/1kguPSMpVora1cLwztFBB1R0=;
	h=To:Subject:From:Message-Id:Date; b=NRVi/UZK5LIj+KpGl7efZAcxl9WM7tYHj1idWoXA51CATHcdwfCts61WJBqvtVBKE8xJ439O5cVP738MxO0Ucd0OHDefsk1nj+0mz4L3IRqbrkaNKTingxNgDt6uVcuAdFPPZKXplM9LieaSFJWm0AWneA3AWtFEywQgxyyE8RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nC+fKUD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nC+fKUD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16CDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771679093;
	bh=ku+23fosREcvmDQxZf/1kguPSMpVora1cLwztFBB1R0=;
	h=To:Subject:From:Date:From;
	b=nC+fKUD2R1QIuNZtfzS4O/EZngfPlr+A5n3tkx9LIjtYPEC9zk2D1hmCPP4FivqG6
	 7or0mCnvrH/LOmQe6+NWkxuBI1mfGIaU+/94vg9kl0WyeWfoJBxGojxSfzXNVsaBWL
	 tzn2T/o8TRunlYLL+ZPUpIbM3XW06iVR6kpCnB2SjTu0bgYi3NIAAu6kv9oVHBCMkW
	 FZwnSmVTPP0ctwqM3IzqbDL9DweLa06ZjaJ+3faETLSB0JHYGkCbHJ1SvS0SLBV9Sz
	 f5YaC41ZAXTslxaX1UxmTMF/qOv8VUql3170rr98qCTEVoek/S8+byZEoYBeEKcF1z
	 I5IyEYNwHz/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA51C61DE5
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177167909361.13309.15621537957787639703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd3e25d605fb4c64b261ddc2c9d6dba26f0b3d0446a67e8e146ee6a04bdc5ca7
Date: Sat, 21 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771679093
