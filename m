Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7752FA0F2
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763119794; cv=none; b=pICvnp9mxTFNbB4aT9JF49B/FUP1z+CcC2DDyq0jr+x+KhfHdUTjSx6wu17dhn9TLv7PY5iKdPAWLsqTns8gXKKnLpM0Z73Oqh2HeEe086YoZ2VKwt3KWlMb4rhiqAEASjc0lGQCEWLnHJYzEyntM7dsvJo6iqlC4MfVuLRsqUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763119794; c=relaxed/simple;
	bh=OssiXI4v0/mJYf+gOUIb7Xq5dSQUNFzqckz3tKKmQI0=;
	h=To:Subject:From:Message-Id:Date; b=Tf6kgOScLbquSGpw7p9bkc72U3o23N2auhxyjU0Tys0qj2u+yiFrRWNJo9UVneUNvEHuX7KOsoE27uAAEiUBVv0YQsTws4acjiP4mzPGuZ/cQIXoO9HJ7XafQ1OOugPTSjurpxVIdGNNrcmfNmKgvehWk1e7GCfg09XrCoMT1B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqYvZljU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqYvZljU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B28C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763119793;
	bh=OssiXI4v0/mJYf+gOUIb7Xq5dSQUNFzqckz3tKKmQI0=;
	h=To:Subject:From:Date:From;
	b=lqYvZljUw4YOSUXNdrsJwHvLtrZoR8F10AwFpJgabr4svWcbGQqbEsiUteF+eYuEr
	 Ru/PBXkMo2X9aMxNPGlhMvDTiYiP2nMZei78xO9A2ya6C90jc9R2awE+7nNPzzy99B
	 jXzCTY92nxiWyIcBIi9I54eRINIfG7KPhTTKNT74Bo3FBM8Lgk7k68jLSZlvexBMlH
	 Zs1GmNnhMBTF4utExisAHGgm6lyf92opfunlu7eyVi9qSIQq/FYfAiTQXmd1BZbAna
	 +KNpgCNizPQ0P/woA2rzISUERoQISFvg9yNoN90VxhkAFAbzgZmCE8vBNDK5hWq1MW
	 kEN9zYSOCTL0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D9CE7AE0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311979358.11325.11974347743835577616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062732b6c40f958de58bfde9b6b7ce82e239234d1b9d008d8805af7d31acf8ff
Date: Fri, 14 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763119793
