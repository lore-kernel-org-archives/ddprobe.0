Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF25271468
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775930254; cv=none; b=cy1DBEkgk8pBQ8OPe5/YzvN1eMXtdcmStMgAq4fJcEODRRTa6rHyFrH2Blp8Lk+QDCoOfAEvYmOv723CUSrwWUVXZTwWYOP5GHLBUVJenKB4ABf5kIECMF8V8M4ywMfIWKx/LQm4sl+NWgT+gYvMOu74J+qdsnZYO2Mjx+m9e4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775930254; c=relaxed/simple;
	bh=Hj0kLG0BH/JRmuXP38yJpSYl6FMgbeiRiSLdppIg4Qk=;
	h=To:Subject:From:Message-Id:Date; b=rjUO4LaU5WvTgMu1WxrOMquhQsscgqkYHGg2M7dZF8Eywypd5sRTzydYvc1FnyjpkVygFfCaHdLlgu3aiNUm3v5egh765tnIQXV03nxNjMJ+n0h21/oYXbrMIVuQNMWDrdFMe3b/xPVROTPraF+BzoZ9Y7zyBlHZtpEJ0HIbUqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeMXESge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeMXESge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94FAC2BC87
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775930253;
	bh=Hj0kLG0BH/JRmuXP38yJpSYl6FMgbeiRiSLdppIg4Qk=;
	h=To:Subject:From:Date:From;
	b=BeMXESge5x3X0loB/c/eTOWrlz0gHnn2cMEN+MhrN1jLNmphgZFzMKWyo62PqLL9D
	 Y37Xzk1isnkSxkthiTYyQNZTBpgMxNc2zQT5PEtFwXeimBfTfqBIC1WkVDsbi2e5LZ
	 bp8t3H8bEq/prUR8qU6LNBSiVO51xJA9K1tBRIMe/zxabAvbwql5yTR+Iq6wAzJR5P
	 pVLHhAlfUt1zB4nG9HwTfJCGFYN436CO5yHOJHdwcarbquxwIXKsG5IF3dRkegQrBt
	 HO4MBU1vn6wyPirTdQabAlmvjhk/p4XhTT7Z4tEHLEo8gNyswE08W4LpS2TLDs+G7O
	 Xuq9uwVKsp3vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9655F3ED59
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593025368.1814.14283030596255572741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f500d8f7e62f4912d7f8b51465f1d5bebd46eee891a402ef085a3785c6d1a923
Date: Sat, 11 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775930253
