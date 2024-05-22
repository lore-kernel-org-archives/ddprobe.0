Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C12C13A3F4
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716381803; cv=none; b=kv4zSLm8Yxu57eC37hoLEJD9iQ2YaS3Q+Df0Djo9d5EvAma+J7OiP1M5GrQ/DLHzY1a95pIDdLiYI5TqGWbm6zbeYmirNjl4YxrKq7QMvPne5S7RYLhGDFhbrisEYk6QdUi8w+Xjf+h9P6PTIxHZ+9THrIqdBya4IQQVBn2WMSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716381803; c=relaxed/simple;
	bh=efVIKX2IhE+Z7MJ0avCRgmksxU+Ss/XZ5m+UrP5VVjY=;
	h=To:Subject:From:Message-Id:Date; b=MgeJTJ7pnvuMwMYNOmyVDANgn7EewYUUDMm+V1zgMwhbB2KQJgkEVqJgHhRqgGVtJVeqYLEHCdEW37/6i/RsE4VF8QU8EVRzHRb3zVO52TQEjX8gJUAY2gYTJu75cFzArtJPNPnGvKmKCljJqEiQ3T8cYGcI0YzDHIXwcDBtsH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUVmrMLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUVmrMLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EB4C32782
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716381802;
	bh=efVIKX2IhE+Z7MJ0avCRgmksxU+Ss/XZ5m+UrP5VVjY=;
	h=To:Subject:From:Date:From;
	b=IUVmrMLnH06Wu64f7Qt+vnQQLXztYMILyJu4O28QXflkajNQ0IvM9njdl5mNZLQT1
	 keMmj5zySYf8Hc3CL3oLr/cZ05FLIPuAegx19zn/X2zqCHWhqtNoN3/9CwgzuFSYKY
	 Q1iC85jqI051GuvhGfgCmRQ41Z3qk32hqiAMdUJXcdFP+bcwOyEpgzA5f03Jb3mndY
	 pOls8FYkMJJufqrXEgCX5KUIllJlO4hKhKIO0lR8aHYRU11z85YdNo7JsiM2y7ltJ1
	 dclz112jnPvwSuxTxUHyawNoVV4JoTlvSdR8JXvYuY1qNEhiBMSpE7B/MZO+ri/1jk
	 Xk7rcnNAZmqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C284EC25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171638180276.2483.12022014327262549591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b540c553ae320fcd6941a6d1b04296a6cea97cf265c26a3ee8f6cc7fe2964111
Date: Wed, 22 May 2024 12:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716381802
