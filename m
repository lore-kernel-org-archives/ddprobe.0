Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3739A35957
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749313794; cv=none; b=TetmnP/pU8LdgEi26XRXjfMDN9tt99XenOF75UBjfWGTIbhSN5POWt7EYb4QVGrig+ctPEpcP6TBf0JO1ProAfyuT2BcI3CjDJxJFhyDKpUOmpdJr7mOXYqef6Vv0IL333+yaav7UPvp3Q6Oh7VdywWTQqmHqT6uKdzjvF6KtR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749313794; c=relaxed/simple;
	bh=mSqHzQ9ifa/o6GRDPPDRG9u4cgPAyC4+da3V7bQmVTc=;
	h=To:Subject:From:Message-Id:Date; b=bwKmbALLM4ClN+9xbdLZX5n7Dx50IpJc+YvjV09xjtR9/h0anNj81zo5i64b7lkf6J6Slf/SdbmhsLMLwIVVYJcxBcy5FSItujU52kQ+ARbffE3BOeT3Kwvm7Mgiysz7Vefnv0k9q2Y3aQhGp87+c93zS0znpkGwl5fhqEn3lXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCHbjOBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCHbjOBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B09C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749313793;
	bh=mSqHzQ9ifa/o6GRDPPDRG9u4cgPAyC4+da3V7bQmVTc=;
	h=To:Subject:From:Date:From;
	b=cCHbjOBaioqSwzA9L9StOoTlPVLhZj1fcA1eS4JvkhOfu8GeYTugo4y3zHQRaQNyM
	 bH6nn06zL/ait6mGgH2hN2DxmyNoXSI6Yfu8h8+9hHHPQfqeOB2YEvuEIX2/VCVeWz
	 o0pZoT8OTIiFIYO3G0usmG6H7AsuvotDI7MSDoTWLUry2W5Wrx+6WODoV3ukbT7RuU
	 h1A10wOXdthulxmVNlCg7u2F4tTArQHzSWHMRlzjq4sLhpAZ/dS914dxc+mHBy25aF
	 1fkhW7ZwsBo8Hbj17Dm+/ojzDIo8wUZyHgQBNUrJiGOiKNv629n/fnpdgXvuxEzexM
	 DelReKWu8RqlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF9C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931379357.31617.15194892005156981999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4058dd533dc87839c8532dced12e664fbcf1072d2fb364f283a44d9d1db7170
Date: Sat, 07 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749313793
