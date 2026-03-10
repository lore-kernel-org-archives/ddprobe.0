Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E603B635E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773161094; cv=none; b=hZwGxFC8Zi1HoMdaerjqlsyPLf359R0tGglxnG82jHEqsMrzXzFReeY+7dSynQbZk9RIqhluvu25V1vqoktqBD1AXgnYgULMK6fHGpQlH8kLB07xtJVsY2nGS8Me8dZNA5j67XphY4mh5p6KnQwefrgp2ZotIfQbvy5FO8axLFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773161094; c=relaxed/simple;
	bh=B0Ud8PPYFoQzdRKu/qcsAN09u7HEYbs7o2R3lKcuSHA=;
	h=To:Subject:From:Message-Id:Date; b=Ji0qFGSAo0lSm5scE/iYLvFmjWTjmM0XVvyW38I9PREwjZBwyn4yyfe4JjuUj/fiVZfXF0cWCBhry+dPTRIH/0nXXriEdC082RhxqBfouMTHXOjIobKHK3PHbovz3Kcu+OvjVUhi8g6nEOoM8YzsPjEHSRnfxbw/+3vLRxm32/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubXakhAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubXakhAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF2C19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773161093;
	bh=B0Ud8PPYFoQzdRKu/qcsAN09u7HEYbs7o2R3lKcuSHA=;
	h=To:Subject:From:Date:From;
	b=ubXakhAkr0m0WKVtbpWZnIbr/eR7FhJa7O5xadh3nUd/f2mSTC5ZH2W1aIc4zzjUJ
	 wwNjK+6blYWXpplUXiUQ2KnIinSX8Zjkb4uBLAR4PhnQpFm3qsORBY/JPlQNj1LPoI
	 Lq69QtQGnoo8aQJysMmrlYJBZxoT3RJR8YXQD9jf45aYEVGL2n4Yz99ZGEQZuLY98H
	 2WGf1yRjZCbNd2HvPLMWVMxTGynQSYkK/q7IsJV/62ARQR7u5o4Fil6FtOQjb3Hj1+
	 EQzUE25iT2DeMgId2SkxMhQel+ZXQPVyT/xltjYXZVUZEXu2SxRFHf2Pb6NYij9eWr
	 hXZATPFGq0gXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F52FD4F04
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316109359.16742.1257451222250762154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69460d661ab54fe1dc408afb053e5a154ce1286ef785bf05b1caab8a4278cc3a
Date: Tue, 10 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773161093
