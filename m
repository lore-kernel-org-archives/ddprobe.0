Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0B121579F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767462834; cv=none; b=YpclGDToxfOEbscOb0qC0aSbgLP1B30pH4RB+x3kNU2AtbsoNz6mmdb0UYmCx3Gz0aibvWXdFIKxprrAUAibznoDEueXFY4ElmHaRrU39K3Q+lZtxGSs5h8a94gEWHS6i7W7iUJ7ODjjuvmWQrIVnqKyJX48oOMtAMOn/99x/LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767462834; c=relaxed/simple;
	bh=nhArhmqwUJBhme2apJXMpLdbuZRVRb6EbVvqS5RaZlM=;
	h=To:Subject:From:Message-Id:Date; b=WI2wsTHS6nlQGtlOJh9AnRNhEnXKDBxKYfDrtDTmMwdnOFj/JtznKpkXBC3clOiOgURvgHv9FO8c5c4MCmL5giXLuknkjvqsJyD6VM2t6q3pizD+aJwO8x5NqQCrQFBJ0DsDGKmq+kPjF6uiBf/3PNGE3l8g8o1QZvby1FcarXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPyu1Td2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPyu1Td2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2436C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767462833;
	bh=nhArhmqwUJBhme2apJXMpLdbuZRVRb6EbVvqS5RaZlM=;
	h=To:Subject:From:Date:From;
	b=MPyu1Td2wfuE99/Fn+lpqoFw8pM0Vy4lfbXl/cRBGU3YPNWx4y2Je5NIZhVhX8kTw
	 SzLOZcVG6nW8VFRSyMgpbm1ZzuXc05WobcR8K83TRy7//U63aJCTNKMuG5LO97qfst
	 wqf//SznqOlUTyMJRiZgEGtOvaoGTEAVt0KahunBC6tRhbwcql954jIFxs5Wjclf6Z
	 odm2uexrkLqzjKRJZLUj4v7NIUWe1JIFgpVaNR/emm9+WX6ioHaC8v5z7Gd8P6Psv8
	 gCZbys1v32yDosflUhXronZCwdJTCwZuD66FqJ8hz3q8U/2TXmpAAtgOADWZjPyZ7P
	 ihyU9QzTPqgoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024FFC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746283358.27577.14478741047788805659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a499e0b764b3762d72369987326a9a2ca20a346de7190d5a09e1e88b233445
Date: Sat, 03 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767462833
