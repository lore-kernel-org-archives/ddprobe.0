Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CAB17B50F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770687234; cv=none; b=ZsPsfXZ94LWzFpEdiLI2l6SoOKrsaBEkvSev85Nbs61dQ7NKRLywNFta27oyIQ7wAbtmq9OqQmhKfoyjajIlQiGJSxPBUxYWU+IfvIQNCvFpSR8yfnWeUJWnmgeqsaVWnroc+86w8N1j73vooabGj0rP8m0AECe6aL8uEaiN310=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770687234; c=relaxed/simple;
	bh=6VUoKs7xCAv0MMklcUsa7FdW6NxOFOv2o28CtRVj/5o=;
	h=To:Subject:From:Message-Id:Date; b=perQdI72MT7soVAyD/wj9y0ZMAKN0L1WK1EwspipCdDokAeNnD2wEs/TIQ5X+rfC274KGb7rgHUaJ9DfCdkWt4RSfUdnmjYkiK7A7xhQEmK4Btttws8YqSm/48R4otr59wNGHa0ki670eQs8zJ0VnyrIis9hZ2si+PozQY8ZkmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxUO0xu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxUO0xu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61C1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770687233;
	bh=6VUoKs7xCAv0MMklcUsa7FdW6NxOFOv2o28CtRVj/5o=;
	h=To:Subject:From:Date:From;
	b=MxUO0xu2a5KFEOmrONPTPOB5wnMTp16gikOteUx7GHvSy2WXLsKecKuXJRoLWqPpU
	 +911fQbMMcXbByONWZvVSypfQmygnlNMHeFYEHhLp+BQNCZOoM2EA941g5plY0iA5r
	 7tWgTJQqRnwUvckQAPx47kyypPsn2lfbEh1ZweJoC46zex1pVHdWagTGsQ8xvvEF5D
	 8k8t++MfSUU8UhQIv64TkfqfJ14SjqsoFIVIXgC3y22frQrZ0tQ+Cf/Zvh7iq2UMTD
	 /4S17Qkia2NXxGxx8tn10hnqf0ikX9t1ZUvE8tHqEcZ+lN4316WMdIqEPPEckF9nBP
	 NFiIxtWvLgvfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CE6E94626
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068723364.17553.12090621409516366377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d092348f00b5fa2435b327808bb8d626eb6e61e638843ab3b4fd48443f8e00f
Date: Tue, 10 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770687233
