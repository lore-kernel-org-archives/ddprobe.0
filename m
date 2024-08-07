Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F417A1BDABE
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723029354; cv=none; b=p2rq7UeNqTRM5UiqeGmrnoKevNqycE7c2wYbSlroz+LkxCI2UaJj2B9MozYxfSr1gV903pM31mr5cBiSIo0Fu74nGBzSWO/N5j74ndbI15btR/O9yiF+Ijzxo287ZRvM7Nu8jtm/+dhtaRkKrndH3RRYDz5bS7yfnjQtEZNxKPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723029354; c=relaxed/simple;
	bh=avMmSR3CTltsGyT/Ok4SE4YN7pwt2dp5ahpbQEEygBU=;
	h=To:Subject:From:Message-Id:Date; b=Xs2OChnc70QzG0VBptztybMNWoFvJLB4Kl7SScNYBlYAVnIQDpz2ENaZG9WA/jCmMRVvghReSOH9fVUREVnCEoppUbTKZYYX4UO1s1xeAr2tUOdyasnKFykiB8ajXUtfXXS542LPqN0fESSufn1hpZihF6ZyTELE/WPNWR/9sGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpBmrWz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpBmrWz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B168EC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723029353;
	bh=avMmSR3CTltsGyT/Ok4SE4YN7pwt2dp5ahpbQEEygBU=;
	h=To:Subject:From:Date:From;
	b=VpBmrWz5MXhMGEUzvECkDgFG5dnON9Tj486MBcptOezLOj5fwrxkZuoRfqmnAC7xU
	 ymL2Hfp2+kgw4TQ02vPO7B543eOGEzJJ4oasQpXuzqJ3mXBE66+VpHMSnthYwag+of
	 n5DLRrDFd7FaZ+wWD11fNUy8hEiOWYCwFz+xi00qcES3VyRHh3V6A8uAYcxtOztPn4
	 G/le7V1U9E2xUqhayP2kdRex+QHbzM3a3912U6qqxteQ3t0Mo1dBIZrSndFPIWLY+F
	 6T7jMeupxqQr8uPbM2q1fzlIdiZ78q83ypg9qgiRh/OkGD3boNKRtI5EisklslOhzG
	 xvnt9xV1NS8yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D46FC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302935362.13450.10442103880599697786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a69e0918bb3ac4d44edfe6941e518a8df3a7658cfcde9fc9bb68b65c2d9ab82
Date: Wed, 07 Aug 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723029353
