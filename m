Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BB61448DA
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714132943; cv=none; b=nIAWJwMpxDUG9lKtqZ3ZTrLTbgkV4jgAd099lZjeFAD1BWITH1stm2OT5tPh+7UiLSMyw5UCDjrg+7hc3IeaNNjQAJLpbeL4xyxi/jHcGNTouBM27WUXSxk+VpxHPV9aYS+PlYoQKWsOynu4I5OZWk5naS3Dy8Q3y2W71yzQB4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714132943; c=relaxed/simple;
	bh=SDXYw9EsrW/fBuFyQ/eBr42s0q0iGTQPCsxdJnbhPh8=;
	h=To:Subject:From:Message-Id:Date; b=A4np+J7uS3rCZtYJQQZ+dylRAtmz6L5F1DCTQQoTsjbRzZufYU6tecIym9vY64ZpMyJi4zrnLSUlIEZgrUZxA08076eJr71GIb4EnLzYXEDFdRGUiuZrCBDcnAm/WTfXWCL/K5/y9Jgs1l49sxezMW1/UMwWgwcba5H90O6hDUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGXTN3gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGXTN3gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94A4C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714132942;
	bh=SDXYw9EsrW/fBuFyQ/eBr42s0q0iGTQPCsxdJnbhPh8=;
	h=To:Subject:From:Date:From;
	b=TGXTN3gWkgq2bIXMmp5PqOvrKVa+NZWjHtkVh4hFPOeDDhfwDuk9BseaYpiPLPh5/
	 A4LDlRHdnrEggzRn8/Jnag3RAPyD9grMvOebY0QuIoad1jG/2l67YqHyvWe0Hnr2IF
	 IFpsa1ZDyNoJiG+np6m5pvGyIdxeJByG1oyQoQPxrgbxgXSVYF+dpbB0tdzCjQ2InZ
	 nMGL4h9XQn6/cAgA0McESn3KEuxJKPilOPnbjYDeu7r+CcN502423j1j/eUo/b+0JS
	 2NSiQJdc9FEOrH5GFeHuj/vNdAUiEItCTlgA9mTx0h2yXgOVheWcmv3AZ6VGoqzka7
	 9jcxsiM/bGeSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2A8C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413294277.7675.15547077337192949836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495d8fafb0bc06d0d46353f4ef2dc6cb0ec73e2d3381537755586f362b2b378f
Date: Fri, 26 Apr 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714132942
