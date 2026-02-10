Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5591328608
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770725634; cv=none; b=YjWanzbBWRqkfkg7FU8+mUsdJb130V3NLwza+PY8XXJlzElQlIh6GmLbhIJ/3vP62QK/Hk14i9aeYex2BZcX13AzHXRj49r2HOXouXn2I/rdew4qXg5BFScGVeTv0a3m4EN+lY+og4AXlxbyp13TfJieHjQCNqHrYCOLrQWx1SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770725634; c=relaxed/simple;
	bh=8U9UD6GC02FliFQE/qilvOZSvqAmJuLi/9iDPKZY/38=;
	h=To:Subject:From:Message-Id:Date; b=jZaxdBNLD4TGt37ouOCkCVqQX4pdugBsu4SNm3iI1ZRtCu+lVkIQ6Sn93ezRZBpm/gmvGNXqh1YVECZBaariaUuqLqlUQzjKWyz2/172hS9dOfrlweJfb1f8ByR+BqY7fuZ+I6kN5nLVBlSD0Ch4ezjJmI99K/UfAsKGBCRWITo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlA3jyIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlA3jyIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD919C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770725633;
	bh=8U9UD6GC02FliFQE/qilvOZSvqAmJuLi/9iDPKZY/38=;
	h=To:Subject:From:Date:From;
	b=UlA3jyIGGQxY152MzDVsoKrFcdP9R6FbH0x9F+IQhPjLwtiwLUJ4V7RWLsPWVi4tZ
	 n3F6EYXOGdr+2tEjKxJ8yfp6ccYfMMUYEQCTd5MiVjiOv5APgOtEVBCCzuW+vrkdMF
	 oLpVmUoyGUVOxt6Mh86K+Q/doKF1JHNXko2hbQ1rzkhLyIQKola9fdOt6iISMWPh9c
	 HjBKryRB+hFMbij/FLcJqjoQPGlkF4683O2Nxf6xe+HQAMlwFzhnI9CnFRnrF7oS9/
	 YClaOx02bnQ+46boFEpkT/C63aes9oghiiCWfWNm4bMzhgHQFltBGTTVZJA8fVYFtO
	 +eL2XjfNQCEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADACEA8106
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072563361.29296.11017112940498779868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fed431986360037407f67c9bdbbd1945ae03fa71e64daf2c6c7ccd405b5700
Date: Tue, 10 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770725633
