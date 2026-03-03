Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11320175A79
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772542494; cv=none; b=TyG8E38hk36da0Hyq4f1iaJzoAhgpx/aSt2xb3xEVs4kJvDVZDxfpIqUb4OuU6G9pHxF6Bs5st47J55m6mc7ZXi/Y8IZWD58uUQ89iVgpdAuW72K1jY3biFEC+LC8UfszmnFVSrUeQS9cjr5wAVs7XCD2vQju8kZLQy1FsFpIwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772542494; c=relaxed/simple;
	bh=MS567WJbJ15kreV2mrcN0CFHQj7Eblrd24YU5PAZpm4=;
	h=To:Subject:From:Message-Id:Date; b=EQe9Y4vA2ysLm655/wh83SooWkPqmdu8DQ86BGNJWQ4mz3Qv6e9nubwRzjFuOS802c0MHeXqQztuRWVHFCgDZnCXKcmq80GHL1gJH8vGgPyIa/cHNSZYY+OBp5yM79ZTkZvrzDVS/G0NRDYPZ7mC2iK+Or+NkW/utY33i1Ftr1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRD0FsxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRD0FsxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A789FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772542493;
	bh=MS567WJbJ15kreV2mrcN0CFHQj7Eblrd24YU5PAZpm4=;
	h=To:Subject:From:Date:From;
	b=LRD0FsxXstaYY1WT8dxWKr6bEUj2PUBEOkP7QxwmlcCq9uY/AnAbCk8ZPyy3DmiNA
	 9NMxcWW3+/hsRWTi4VpsAmffoyERVrU+A4AbQYmcvAeFMZzLQpF+/r4I7inhKuGjH3
	 mAxgOpq+QVnpyeGFTRhMYdN4CyOKfP73u2X+o260F7WwACF2v8yHZyAcSWC6UohcCD
	 3Leia1DljEhA1NJL0y2B2tbKnpy7+ma3NF3N8oJikFlBM+pjbMPCgMqAso2S/Ml+Js
	 1xCTj/bwZUtmnO7Q4nLuwS7zwboDh9Wg8zUKKV4oYZiQevk0Pq0OGOtkMJeqEpHIKn
	 P8E+c1cRWHbgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93475EC1430
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254249359.13534.9764528455938352995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec5d2d24971d506c1d89c2f78bd7474721fb113c0aab7d8a45b4254342f2215
Date: Tue, 03 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772542493
