Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C621D5CD4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755992394; cv=none; b=Uv2y7o7vvKAax0ckl4Zrg2SE+7TPrrtYIk2mg20Md5d4897fvmRqLxd9t9451O5lD+iLdeCmDTWK3OFqMLyJmY0A7kw4c10a4l5V40mS0Kyzdjp3uqXGM3HMoQ0v6VmTwBhxssT/GB8kyUPrTdvKqyn1hhAamQM1AzR3B8NqWhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755992394; c=relaxed/simple;
	bh=yDLW64B7hFlsVlRdGoVbgO6AcTXwUs0Oz/0EEhkRko0=;
	h=To:Subject:From:Message-Id:Date; b=sofn1o7QPRn59PrkKVXwPgMx/E4oGqxNTmegG5ZK28iWg2mwodWde3KyPppTN6gKiItGZWmu61mDRK5s7IvByEww8bsjFVmnPTWd06aPc65Hqy0i71vJF8vLxETrzUc01nywDkps2fIBmfqWc3oz/4uu0WFlkKYrbKGenEvoBNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlewC4I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlewC4I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A90C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755992393;
	bh=yDLW64B7hFlsVlRdGoVbgO6AcTXwUs0Oz/0EEhkRko0=;
	h=To:Subject:From:Date:From;
	b=nlewC4I+9iqpABy4UblYfp9W9/TIHTHlgZ4tYljxMhOoeVrkSRvCko/87DfauamK3
	 QqpSVZvyR6somp/985r8kRdloPDFLWIHQTZNtHNGQ2BEkIpCxNU9fULsJ3IbZlpfnY
	 g76lrCjKKH/VGcU8bycPvTcV0FzjUO/x77lZlmotPQS2YFkSmrJYETqpxBOc6yk7V5
	 EOwM7FQNDkXSZ9jNY30mfBqVaUalFQLRaVQY2Z04OB30tIBFoNXzFw6IGceen/IjS9
	 wwwReO35l+gbPMlNIDry9H1EM1rclUoE0GLvYk6Xu1I8OJD62/CRyqcongc+qZgoDv
	 HgW8u9QQFODlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D86CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599239357.27130.14857468475249001218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050c2e31630b4dee6b7c22745cab0c2c4dfe7c8fba8bb9311978b96cecd6765f
Date: Sat, 23 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755992393
