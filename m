Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133A618E1F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768683234; cv=none; b=TOCkdGvo41qgCJ8U+EZgmAf6ij8SX0K9Nl3iaG2Qg36Miz4EWOCXNSebrvph84vWTl7E2NHNyvXYW7mp9vdPBk82JCSpvs2rvjSWNxKoo4BZrpgIWF0/SFltAI0aTGSEYiiFw5MHujFhFTaSvcbymowyw3GDbJlwGSuXl5c7mQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768683234; c=relaxed/simple;
	bh=MThkSr5x1z20UKLj4ngpNMRW2CZnwI3RzIjdSdSKWHI=;
	h=To:Subject:From:Message-Id:Date; b=Zj3D4XDnUTKVEshspFBf4V0gbuaMp3CSNBb+jsUMWAqbHVHmcLYOBjSmK3ayh1JJnYBFZ63W/ReYGlCcgRg7tMB9FKvL9IZW+l/vYwVADBMWnn48tReM5LGaL+B980kOiaDUVQY39TMcP2220tBjyuRWNfg83FmqtaEiR4U246U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4C9TzBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4C9TzBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E16C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768683233;
	bh=MThkSr5x1z20UKLj4ngpNMRW2CZnwI3RzIjdSdSKWHI=;
	h=To:Subject:From:Date:From;
	b=t4C9TzBHFpiLs8an7J33Liv9X/k03e6x/gqi5zQp7BXe0F1FiwGGSIdxPKbYsaQCz
	 FMARjUfio+XurFTcN8InjY34IfZ3zrWg4kglJR9u9DpvWHugJrO5h11VDUlYNNhoJL
	 12DyTJlSFp0xZpO4kvNmm99pfndnUpzyMyKRZ6B3OCNFuLu8XDK66mFh3Xo432gGhT
	 EbMUf7StwHFtQbVRXMIS0mkr8IHyeqKu9zSihubSWXu2+77zl1A0X+OzOrsPfFxsTa
	 CLEd44ibdAZi6HJqL4QBKAjkBIkDTmZWKqKuCZSRfXTGOfXT/iLiNi/XkdjgmmN7N1
	 Qu+XyNI2h+ORQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEBC98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868323357.23793.3116872086491574268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e306ecf0400736bc59db2e5667f7733203531a636a62d60917b7228d285f9dca
Date: Sat, 17 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768683233
