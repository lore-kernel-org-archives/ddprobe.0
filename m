Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22293EBF02
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770854693; cv=none; b=sxJ0kEGihdFDfzyFRW+0SVbHMGoOL9L+qUw01+rS4mQE1RGWflIvybPgEw6+aB1b1cM8XAZiP0gWqw3E/BadPQWXRNwEOzToPhF19jNiroeU7DAZfyKn/AgIMQ9QS2fAbRSUCTW236SpRDiMiKs+aqdf/qxLTkWQLe1MDTq5SWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770854693; c=relaxed/simple;
	bh=MgoTZzCUkgTOb5q0Rmhmrv1MY2uP1ur5B0Ycpo7CRdg=;
	h=To:Subject:From:Message-Id:Date; b=P4s5YjPptaMq6me2wAQKPyCQrKw6qaugbnTFsb7vXG2wvQpM0EMWF3rJ+H63vOga1Xm1PTVStws2kJdkL9y9qKI6G1B7XkJyU2Ok/zFEj/qX6ZOZDYaUUtp75SsRbszvhoFoX+EBLpxx4XCET0n81JnfdkNhdHmTH7m0koqPj1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCS88PP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCS88PP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60C8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770854693;
	bh=MgoTZzCUkgTOb5q0Rmhmrv1MY2uP1ur5B0Ycpo7CRdg=;
	h=To:Subject:From:Date:From;
	b=SCS88PP5oORpLlaCOWI7vA87WHxJ+hGdjuiqZUakEoiZ05GWUBDV7grRc10jYeevv
	 /KAL2TK9jo2aQjZcYw6wVAKLLjE00bSnRKYElThG/64olWLZhz8A5QU/yqdPaJWVOF
	 AvNgF5DCsjY8mil1TwgSqiGURdplKZBo+jqrbF+qN2RiFvkMGQX9Hrrmh4EZV6jX5s
	 gFtPuxaWS6qhU73ZZGgUpyPOdl9SpGqUzUhFl6HTdvZYrSv4r1ERcJbWiT1Zwe8DF+
	 bw8XgqhtPFw+d2/geVTFadU5sBaxde+7mHoxlzEbzshpDcBtt6yLm5+fNDi1xAVmlu
	 3f+i8PAk2cBPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E2EECD6F9
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085469359.14850.10238305004236453994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3a6359119b115356d95d8e142ca4e55368d02af1a557953cb15606e4e84c5c
Date: Thu, 12 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770854693
