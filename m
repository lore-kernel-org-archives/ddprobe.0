Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476CA3B9617
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790493034; cv=none; b=fWKFRnah4HOu0uQfLhTe5zWK0OCBOD7MW12EhUj8yFdpyxs3n2zw3J8iJoiYIo/qnHvMa4ibWrRmJ6cB0scRGxAvon6CNy0E9mTxZQGNAXFsWJ5ADaw+BZq2QzMjvC2wiVuEFaHi8KocferIz3ugTq2dAMFboNqw9ywRXdvshWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790493034; c=relaxed/simple;
	bh=buU05LlAkWJNFDl3vsr7D/5RA3e03NdZhgWHLNaojHU=;
	h=To:Subject:From:Message-Id:Date; b=tfzCe4ivR6T9v2ClXkGWdZeQ8Xo0qM7w6LsLZG2y3/xZZFScr6mtvi7yxPxFJgy7NYPR7bkPyDt/DOtD+xJhkTerQadz6xS6UBY8TRMF5Dp5fRZ4rA8R8yN3+DcOd62Fsobck9LPkjT6KVxotzc/zdJ7P8wQLhiEcCTdjNuAZnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIBQdVnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIBQdVnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4E2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790493033;
	bh=buU05LlAkWJNFDl3vsr7D/5RA3e03NdZhgWHLNaojHU=;
	h=To:Subject:From:Date:From;
	b=uIBQdVnMLpfRJNpAU7X34CGBJl4+nl7nbX1iAcns2SBxgdAGvP666m/S2bEAxylfy
	 nVZWfXMb5YfXqN9CzHLMyHCMQoy6VSDXhGUQjnkkTXQJzjFTf+mOoPi6LkRTLzgLJx
	 54jbOr7lmvPAsi1XUvGjjukwvjQJAc0v+NYHhe+X3ZiKlCN05/WP3tUD8b/naZu9/G
	 Pqf8MTBQptX8+1YZ5UxETLb16DsOerTUjtAztBvpqS2jyHGoXl2+cG/Xwnyc7tFwTn
	 Bp/ZdYbWDf7osUJiCsPjV8xDt0xwCo6g2kDNh+d9oJE03p46DWElnRDLFS4Zhzzb0K
	 RaWrQluDn7BJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA369C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049303368.11042.11448391584896303347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ce4e6aecec4d848b8db42576783219d14e3614541b4b41e8dd2aceb07eaf0d
Date: Sun, 27 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790493033
