Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA8F3368A4
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783712314; cv=none; b=IbJwfRB3b8gPnbZB4e1SEf7Ybu3yar8utZj1cqRnzT+IcmQLUeMpqSlK9OGZl/ItjRvsm7xRpK+vXPXJVDalcknWxwWB+7CaZqI15dx1nD4wWvy4mBLIo5gTk/NvnjScNkJfRmHBRJtPwyhcwCK3rH5EXTxchHXfZ+yZ0c+K6dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783712314; c=relaxed/simple;
	bh=eFZ3UCQzIEuTzSdBWtf7OIweHXpn2gdP+dmpNJxEKgo=;
	h=To:Subject:From:Message-Id:Date; b=ecy3jZraPXlxYO3RWgYg6UAbOumm9NLnMdVndXvJzqRM8eubKF0Ea+s8ofzcu0xZMB05X7y7PGpFJYqIlUS+yO1+nxRK/qSYX6nil4k40al021gQ4Qow2pbVwn7cxvbtDM6I2UrQtILD7tERoDd7KfNjdjdfdhqA61YbEEg0lKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqD/q4i6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqD/q4i6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA73AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783712313;
	bh=eFZ3UCQzIEuTzSdBWtf7OIweHXpn2gdP+dmpNJxEKgo=;
	h=To:Subject:From:Date:From;
	b=BqD/q4i6J0Pqgemz2HMXZOFqItl/hQ67V47gRBvwk3OzAqjCX4Cwh/JNbTyofiOhF
	 Tz0ACpxCOl4kTNii3g+GF4tll0Qbb+Eyo8mdO1HWaa/LL982GZDsdI8d32gkragYNN
	 /LzRASFkZjdvaA5FEZOaz0hXw+UzeBjVFQwA0kbsCG7mY4qB33jFXNIs7ihubm1Ayd
	 gVJvLoOjFCCHwr7X5kbgtq7p/38qlqrDNUu0p+G6bA+eqUtlzGK0NP6ik4s4COa27v
	 1Yyp1/JlpuaW4Ev/wNOTDYcTpax82nyZgZ6ZWH+RdAarazkbQEKVjkfhFAQi7DLs5i
	 t+5gBSVtlrvqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8881C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371231368.18300.5444316868319835134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb75dc326dcfa4533b71aabd0c33f53d8b7b8bb8b31eb18d521910891779d6a6
Date: Fri, 10 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783712313
