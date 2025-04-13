Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF6E1E480
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744532994; cv=none; b=sUFPLZkA3hWjHQlaBKpSlTmrwBrE8Auo2wgr4YAuzyrH2h2PW3Gu+CajetPCzERzLL+Zes+4IiGiiMxJJOkJiD9wt2EWV3EtE7VcnjOzORG6UsFdvGVfHrRY08DKOf5lz13j8dTp+nEiulTkR2/Ef992zLiih4GJGt42OQ86HRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744532994; c=relaxed/simple;
	bh=nlCPPfg0cw9hZfENbRh251BUX4nLfo6ja1uLrI7MkDQ=;
	h=To:Subject:From:Message-Id:Date; b=DpaGATSeNGAOECxQA7tPocdn2H/CHWXvAS8EcJzplq4mYSX26636Pw9ChfyBq/ZyeDdZTrZj538WOIWzE93mcVONhXSvnWqG+7d5HeZ5vma4hmz5nX/Ji3szvehVSomYfPyM5Ex+jIz4HUEGHihOlXld3IjHE1x4+xmv8whLo3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub0ey8Ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub0ey8Ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9245C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744532993;
	bh=nlCPPfg0cw9hZfENbRh251BUX4nLfo6ja1uLrI7MkDQ=;
	h=To:Subject:From:Date:From;
	b=Ub0ey8Ms0BndoKdMvqm8A2a3hO701Pdsf9GXgQZD50CmDzOwPoYEv4c+9hkITh8Dz
	 exijCVIXBcTV3f13wWqBXpmd70aOsqi7ZpPn4qCJlvTEsbOx5mL8vuZMVNPN/cqLly
	 n33vQQay/zFs4Y4JPENtpzqOC43/WAq7zt+9ULEimrY36OkUjDfzNG2GsdIu/mfWOK
	 QbfuxEHaLsRMtIr7qhqQtHnOIJDxa6mOzRXYAfpMB4p1dWU+C8fJqPNn+WnYGOLPAZ
	 3QkqYOLYfUlKd7pAPqaC6WVfk4RatMZB6SV4zUiBAF0E5VnB0XRTvJ1ZtxPiMdB84r
	 GUD5or9egz/NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9F8C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453299363.24695.10199941447004038843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da208e0870d61bf9e751481af91c20560c4e29bbb3b42469dfb8af6cc5207cb
Date: Sun, 13 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744532993
