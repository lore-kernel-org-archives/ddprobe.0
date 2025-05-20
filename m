Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE6ABE49
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747719594; cv=none; b=KrADvIm+7MaEveXtlrThcGBgDb66IlcZZTZWlr0BvCuiHw4+1Rad0d6ZM8bxWICujFhLa3jvBvHy88jzj0Dr0knZWr6GAaZsETsMDYWOe4cjW9VBOeahMO+viQKAoqIzveFdvU5clkcus2Jv0NpjeuNSJOdcSq6rd0rTmjqQMkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747719594; c=relaxed/simple;
	bh=N0eiDeJLNZ3/TmetT89WDrirAhQHcu5KYxYWXc98qfU=;
	h=To:Subject:From:Message-Id:Date; b=TDWuavDmr56btP3TlGGBDkjXa9Bw2R4CPnjte24j7QOnlqhzg5UFJbed+SNNs6YbS+6DfiZB43XsRYMkSyjuYdHUrUeObJTT/BNZHoS4h1LcAsjfycr4zJqP5l6CFOi4VfZbPCBiuU1ftu/bj5TrSZWc+kWbpUwqEbLbPvPHFP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEcbWBP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEcbWBP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A175DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747719593;
	bh=N0eiDeJLNZ3/TmetT89WDrirAhQHcu5KYxYWXc98qfU=;
	h=To:Subject:From:Date:From;
	b=lEcbWBP3YdiKd3eOEwNVHjyZ21aeSh2w2gcRwtGpRAnm3I7o+Sn+fQEqF85dVvqKe
	 uVFw2LfcbidRwXbmhOcCBlLdJNr7NpiWTccsbiHMcyxfg1NNIn+MNjIe+N4u8otNNX
	 Ikq79zbxpyZhLi/nnov649useMP09m0hH4VhactRrhWc4QRhZNWWf0M5XoJXb9fust
	 AeRtNIPbWbOCkeZDkYlSmLVv9nv1ssraHflPXt/3YFTTYhLIquc0HiDVXNkqDnf5GB
	 io2LgRT0vVe8bMfDo/Sxex8aDqc6OX8dw4Myd7qdLtPXvdIU5/du5yBvnVRm0drcgH
	 a5Q8aVMktupQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBBBC3ABDA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771959357.13209.2660158016056766049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadeffe58f825fad087094263b6c327d3f846e853c0579bb2fb519e45327911a
Date: Tue, 20 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747719593
