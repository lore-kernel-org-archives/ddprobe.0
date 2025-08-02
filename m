Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8AE1946DF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754104194; cv=none; b=NQAFbisnYJQNCt9wM7cIZqaPx8MgsUvsa5+m1I+2iP12u4lusLq8geKNgqApR5eOHaGD863Gq18MvVJcrvO9hUrGBHLyqf6C+5mC9D6l6CdcGAxfpNXtIiLfuyhZszS8Lr6XcMjV/FyaIwBdNXh/Yq9j3lYKn7+N4u4P5SDHeGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754104194; c=relaxed/simple;
	bh=gN9VxJUNMNlRXKYs0fECVOIRPsghCq+muTTz2/dXzqo=;
	h=To:Subject:From:Message-Id:Date; b=c+xuL5MsJuGmSTpgaNzJoU0ADUoXce8EMq1DtHBl1iYSzz1AgvxrHfOmrUrMNGxuTUBdFJxqsVfh9wu2YC70o/0s/+X2fqQgJr11wJaCn0QUmcq9JDht0plybxe+0R3QHT9XbNr5I5cK9ppA1Ze9dExNDgU2d5tkzPQc2Zn5238=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+xPnGBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+xPnGBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9072C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754104193;
	bh=gN9VxJUNMNlRXKYs0fECVOIRPsghCq+muTTz2/dXzqo=;
	h=To:Subject:From:Date:From;
	b=i+xPnGBrzj4TotoNbkYP4YmIg8YWlrljzlbWnNKe1ENNb68O/zhfbBt2zBtaBUkm3
	 URczVjpPh81njAfzlbYcP078GdLnlpul3kjL4WKICWHW1MwNSiDnMrPAVsU4mVuoaI
	 yovfLcd+Y5VLa/Ou78Q9U5vQjfxzcGedIAhgq9C6Z3eI2sgVjqV47y750+Z1Dxn4DG
	 3WTZorKrm+MTwVv2e20gIPT3T5SP/6a03j/QbdWhKAv47il8SKCH0O2NWTmK4ADVUS
	 dhYKqAdlxiapBR6QeeTy9/dh9xvHoIbrVGvWxg+yZZ+SMGXhCwuouZRaUR/PB2XyHl
	 vCQn+pMEsa4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9791EC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410419361.3507.7956213929719530931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bb3c07b988b5451a12f74af7ef98afdd386faed5744320cf9b223194f9ae5f
Date: Sat, 02 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754104193
