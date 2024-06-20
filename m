Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57003CF65
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718872163; cv=none; b=BzdAc82OEjFj8OVOjq7f0sWauytsPQPw6dj71q1iWivybfTY8+2Sd02QeDivQjobHny+TvMAW77n0FmGYVYnS4MM/em8Z32JgdsFbrZFSxBCWvABIgxGQKlLvSmKuIX7B+tDe7jpy8p77aOe1IZvgIf52nKnlb2/cgjbGAvMmAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718872163; c=relaxed/simple;
	bh=68nAPXn6MJ1qjqRjo0YsdtN+49aeDCoMAhhXyJiF3es=;
	h=To:Subject:From:Message-Id:Date; b=mY/QJjXgHCgXE/51Ls95Dj991DXVK8Eb35+xihTN9YcInn4w2MlMSWK20YEBJtSYqYZ9T4eKZcyK3gQ62hRP7oiavQ3A8ts0TACncmFGc+LqRZaXiO3LFrK/XfqIu0yKVNNV/eV1ydzKPXA2oJeXy6h/AOaomcUE24UM5mLHLbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqufWOi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqufWOi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4019FC4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718872163;
	bh=68nAPXn6MJ1qjqRjo0YsdtN+49aeDCoMAhhXyJiF3es=;
	h=To:Subject:From:Date:From;
	b=MqufWOi4w/no6YC9RRLzpbQYG6J0rDLLtJkFfAKL7IsYTr1Kx/LCKbe+gjO0/0VYA
	 meOs1Ft7/uMNzWH01c4VfnreBYNx5/UyGFgFLDWfb7FlWj8EESsz0k+D8Iy0zfqidN
	 pj5PJe8u53NrhfbNIdjXY5yW8wLvdxqPVgmmENegOjLULYQQ+V3sFByak0BdrQjTt9
	 UVxE09d+8eqxpKctD0pFpL9uOsyEQ6fMWyqzCGw8HdWWKYZVTFeJ3qVuZMBfNnE/zK
	 HE+YDBhdQrAUI3uRQUceeVVG1wejxn79VST1ac2MNlMmkDhGxIZUFPELDFceX0wvBK
	 v0BaS4nVSQbRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15E43C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 08:29:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887216303.4967.2671129927486119855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1b449552957c4f5978c893d8c0ca1799adb5a9f51436b3dc45ebce25478ce6
Date: Thu, 20 Jun 2024 08:29:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718872163
