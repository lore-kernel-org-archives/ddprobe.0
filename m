Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DFE38C402
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780233274; cv=none; b=ne4bueF+nz4BNrPIxutIJ5nuHDfOWMwYlZyE7+s/TSoj45sZ18Ib18gevxC/q7JUFXp60rXWsBKeGPqO1Jnx2apeTg/+/DRjGixBvqfbCkdcIrX1lXf5EtW0CV7vd4kBTUavaYnCiIwMJheFEfvnGLZ68KOPi5CaGYeAPgzuNkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780233274; c=relaxed/simple;
	bh=Y8RtgswtYvHpkeXfXPy8YuzN2d1eIZvOA2gdJ/TXMk0=;
	h=To:Subject:From:Message-Id:Date; b=Xxu/5tHvcnKW2RNEyYzouc003BwLG2Q9D34I77+RBrKVbymJfe5MAohq6DVYNG9Fu0rMp7LkXi6h8SiwE4qmwGcnqQemlA/6Atgj5Lr4ph3TbyhYP54sUDNxu6L2dWM/EGC4LBVJWdyjqJnQ5tgCw4Xuf0+3Zcg/ma9N1lZIrVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNPn9seo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNPn9seo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7162C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780233273;
	bh=Y8RtgswtYvHpkeXfXPy8YuzN2d1eIZvOA2gdJ/TXMk0=;
	h=To:Subject:From:Date:From;
	b=JNPn9seoPG2PL5KHrZqTozoucNtXF4FtAVFdF/wG7+5KbpBui/VksIxtUdYbt9ENN
	 ZZEe+SPLOXSUF/a0Js9mrFmHr1H4zbvBq/srJEOEWudkBRq0zeo6o+zSktIfHv9/wo
	 TlnVqFvU1njZVd8FpiKzNbRY1UvYtsMOT28LMpiUItcs4UWZpaInQyFjUuUa/rU8ER
	 VGB7/aO3PIRUOkcCI/wPoBmUBCARpybn45Tf7UP0y+ca/9bxRalducSJ3BsP8G44X2
	 OqtKpwIrw7k2IYzIvIj6SmMr4fn9V1zq6/m3fRIdMwQ0OE6Po43RN/QnXFERpYoqLA
	 FTnCEJEOlogDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA029CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023327367.24464.16894956713032777350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e627f470ff8eed72cdfe8fbefd6089e79af85e4eaa2b842506c7511e88b36c
Date: Sun, 31 May 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780233273
