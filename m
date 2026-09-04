Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AAB44E043
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788519034; cv=none; b=h5/RtThqWAO45Dy67LR3pVoIBjvfk0AbPr+Mqn2xeuxqSVIKggfAQTBIvOuATjwLXH9Lo2XcSt4xbVYsRbrmujUZ0H01D+mB9oPOIxthixfcU0SrCXRAYUktIGYnaMQAYGcCRiSbfJ8BpOVtQhepEK6iZP151kgOlfEuzXXA6BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788519034; c=relaxed/simple;
	bh=39uorGHs9yVbhqz64Wn+oN4SEGF8w8n7PgeKf1FQsrU=;
	h=To:Subject:From:Message-Id:Date; b=pFkhiZOKHm1YrFWRkmXHZSd0FpSCugdIggJMxVBlKVhe/zpnFhgBU8dx9E7iFCAXD2Y6UG+wbNCh0KgdaS+BbH3OSKtQsRkH5VulHNhpJZqmszG49XuqYdsMb5VcWz2J+7Sf/A4P81Lg+W4JAwkpZ3qmMEPVfcLydtkicieItuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/+Z5H1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/+Z5H1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95CBC2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788519033;
	bh=39uorGHs9yVbhqz64Wn+oN4SEGF8w8n7PgeKf1FQsrU=;
	h=To:Subject:From:Date:From;
	b=p/+Z5H1OcQnaAE9qnB4Ltdq8RT+QH4gNadZ2xaYVKBUTyvVLc4rjSKeQHN5KA5xE9
	 HJ1++J+9sFCS0waWCpMwo+4QRbCIcnlf0ULH3WhAgd8bUEFPM2QZdaul5HxTMgv5lv
	 NP/jWNAzU0rJHSPukFvxCAvHAPNExQB9+gVlmCx5ZFGlOI9juAit8SRXG6+ZP5fHn9
	 1lnOSENWBD3ikQ2E5Rwee5r6jyyRxejQflBrWB1z6f1ctxY63VB2i++i0lzejGwh+m
	 6nTMOjVjSv6uCEANFboZZu/zK9BXZFfSrzFRLt+SGdGTVYlw9dPA1q5W6p9iQ7Igst
	 brpYuOZZCbXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE98FC79F83
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851903370.11606.14060361333135563487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0580ca03762d9ca7d872e1577d67b8407578f954f326d4661ffae9f3c0c9afc
Date: Fri, 04 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788519033
