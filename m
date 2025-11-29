Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE28186A
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764402174; cv=none; b=p4Tenv/Nt2thBHTpob1Wei99bytm6ZdVXJGUyg8JfgvFic7UCc343KdD5LkJtF0ZCvqXOQxqd/8fRFbL5LB5Hq+KrVxjM+/z6+L5RCcaUdaDx4CnvmbaWnXknkXDv9LrMBkR225sTC7hfsIVjlxqxCiV/Ja8j/J7DipHt7KYrGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764402174; c=relaxed/simple;
	bh=QR2LoPhXMkADy+iNK95YaxYFmfDtcL7vghSavwaE1Vs=;
	h=To:Subject:From:Message-Id:Date; b=KLhDDWlr3nVCjwyUBWKhoaP5rCvSEQOkEBEVjd8OXhffTNJgiZNm0T9tnSn9W0jdXHYMMNQna94MzGxXVL0QsHyyJFJ5ldJKkVcfCTyg24Na0ZGKPXkLkWP5Nlojj5koC7keJXhIqcPpLxTgvDiJFNskEz1thN7VO8Rh8Gd/2Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diJD120B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diJD120B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8277C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764402173;
	bh=QR2LoPhXMkADy+iNK95YaxYFmfDtcL7vghSavwaE1Vs=;
	h=To:Subject:From:Date:From;
	b=diJD120Bhrn3Bo1ezVgTbvToGp2Idf9Fb9wojSkWlDLFCuYQ3/GzevkcNm4ik4QeH
	 rCAg4uoU0cogvV8oGeGzYz6TFrJdBr3cGGhU69ZFQ4HOhj5bYMrGu7aqdsRpXDJE9W
	 suBR8tODE98vfaBdDNzkvXrE50osgwkwd/QZpymBF5/becxnxYX/2mbch8nQ7s26rO
	 xrxepWUddn8BqzM2bjG2IV6GwcK28gdlydT7O7rKlRb4UUXoRHBpozfNock0+2aTE/
	 xUM2sP1DNLQms8l9ldE45RdZZmybp90F4JED0e7hZBTIuzSbbM4t2befVgQYcFLExe
	 bbomJgJ7ea0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C0D116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440217358.26973.1383402761831751546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7eb3df6e50e865aadd670ce5429d730090423323bd625c34794d6a466d0075f
Date: Sat, 29 Nov 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764402173
