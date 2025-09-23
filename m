Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396DA30FF29
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758670194; cv=none; b=kJF2MGmJCoSn9hm1+x8RCS3IOZuIxrWilodu5M0lwFW4+kfSp9qyQL8fmZzA4FFABLquPnz31gafXozazy0VaqukysQ4rMw23bNZY/xHy4K46N2eUN0itDUc7UindVxZl64k8LExoOcxissondJ0B90oLzuuzypcLKAvHOCx2bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758670194; c=relaxed/simple;
	bh=SJsK/Gs47JJ5BoPq5gf+AllQMH56b5x8ZQ6i68Gc7Pc=;
	h=To:Subject:From:Message-Id:Date; b=o/BColF967cpQ7HQFDkO65SJnpHCglxPhZ38VzATYLWeAuI9cDcRAO4yqZjEqMx9nEAt//af1qv670W+16iIEor6BUY2FM2ftNgI+mn/6HZWvhFT12v6mAb2uuilShBYCkKYUE3/Ea+2fxdLLJUNHZgjfv8JnOl479nqb67XvI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEen0v39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEen0v39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF274C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758670193;
	bh=SJsK/Gs47JJ5BoPq5gf+AllQMH56b5x8ZQ6i68Gc7Pc=;
	h=To:Subject:From:Date:From;
	b=HEen0v39aXCSLUH58rieXGukJcmhEscWDO69GnLg/OzTz9Zv9Pw41xBmG0H/gNcrL
	 55NCWYEFuwkMbI2XEE7Y8QPTZI4nMToGGC2ap/RgVTLBzG2JXjgEJBJ7VgSWyjuJVi
	 dmhxgvjeS/IlwcI+u9qV/ZgXLB5Hz0Bu/OnvYdPH0su1Wg8Yc4Svc87NRZC7qCy8I1
	 bnHmPFaJbIDe4Qyh8Fv3ExPOAP4KfASPq4f7wSwoYnv8Sajf2lO1O8tmduenjkZvhm
	 Y71jjpR40wuY83kt7GynXKvmZO9cIm+b507KoB0aMuPuxEHy3nUUstndqiJCzycpZm
	 h0y3Kepsz5t8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95987CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867019357.9994.6141886351154044298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b8b73817332893b9639b88b75ab6b07c8f10a9d5155aa78cfbe7919c46247d
Date: Tue, 23 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758670193
