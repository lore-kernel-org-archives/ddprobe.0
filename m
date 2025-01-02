Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E809190485
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735824354; cv=none; b=qgN6BckswAVGJoh6GQvFuk7S0FLe25Cmsx2Lx2+PaKYY9GShsI1fK2eloX/qyHdp2T9QZraiRIq/ZxP98ZQ9NJXTlGDehqXpqNVne2nME2aVSLEUQEQPaVCiyY+4qKYWy9q3gg7ejNUiXJN2J33f/gad7zUnBT+v1LhKbT50g6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735824354; c=relaxed/simple;
	bh=O40Ic8RudZ2fjI5DxNF9KkzQHVfVUHzVmXzUIbMZfLA=;
	h=To:Subject:From:Message-Id:Date; b=F6bwj8RBR6jfZ+cDOrUXn6mHm7HOhx+RqHeAK/g/9QCgWrZ3SQemxgRfb7WjmuIZHJrW4rBxTLn0p/ZGJQCoL4UioFtPF/XX/7rJdgqCD7QtrcUCkN8JSRF/Rsy9rF5C8WvCDQclnZ5TX/kQxPeCmCHNxXp2sBs3yvO72wXjdZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxVrdiUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxVrdiUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A648BC4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735824353;
	bh=O40Ic8RudZ2fjI5DxNF9KkzQHVfVUHzVmXzUIbMZfLA=;
	h=To:Subject:From:Date:From;
	b=DxVrdiUj+JbZmDth/xEzoqS53/F0urVaGZ9W8zLob1gU1lB+Fe9X6lo/SemCH0V+p
	 IGYbiTIArj9hWhUOL+z4IsWyy2gy9idcwuHIjKT8GA0ubiC8LYumrfuzYgQHOlLhge
	 orMlc9X6F+hNTWnlzNKMjC6qd1O/vTiGnoftBkpK+6fNRvfc2Xf3alh0dzgkiR2DWE
	 BoPVdpaeuLihlkghhiU19JL7Up3hN3PgV46TGyOvoVejuFTymHZ9dfA3X0c6YBQCS4
	 dWkvEDhO5HG/VcT6+bMtTL+G5NVqWZO8b8reckvAe+5VQEPhq5FTbJJJvLBKo5x9Xm
	 H4itpY6XNlxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9440FE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582435359.13417.527184558046110278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8192139142ce5e5b579bf4915478cc929e3838d26be4612d1a1c56db499f4a
Date: Thu, 02 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735824353
