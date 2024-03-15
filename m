Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33B5D52F
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710476897; cv=none; b=eWxSNl6faGgkNBYv6/Y41L+x3Z+AUFGUH5W+uH9PrRkaFCMG8BQPt/DOEy+/MxRq6aTOs9/Q0EDsDl+De8vIt+dkZ8lT4s4x2iiiUaNffEEIDLEWu/Ab+YaLFJPtd5gph3TmDPupGWawXZQjVxMcHK6BBm2BKS+uFVkwoUxeooo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710476897; c=relaxed/simple;
	bh=lFuGfiM8xZZ6/HdbYvCSjW0u8hSrBeGlJ89AVzGlhGY=;
	h=To:Subject:From:Message-Id:Date; b=nGB3q9yxuAp4RDlSP5jlRX2cF4nVG4WMsSPd46PRjxbFH2PLPEf3c30wwdrbB1h8dDfRdR+yMz7af0SeVdgFlO9fW6ZfLIwFn8COkpyQelHrw4IAlq5rb5ydncVVrvoeGq61sqwezKS1jKt7qpgDsbpqjVOV+9S9haTAEThS8Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYABpMxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYABpMxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859B7C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710476896;
	bh=lFuGfiM8xZZ6/HdbYvCSjW0u8hSrBeGlJ89AVzGlhGY=;
	h=To:Subject:From:Date:From;
	b=tYABpMxECuvc35a0sL43IdiBqtULjUUnYRMNOlxiQV8QD/LeWTEt4LviB3c4VTen/
	 DS3+5gN/7uiEhuV48lM6p5z4XZ4SpPeDq4b96TKchG70v4Ln6rKYRndlfVNqMrG+IQ
	 nj4OYp5m21VXh4qXBKOmtiQLsglsHCG7D/9qe+S+MSY0SmAlV1v4ePerqeVVc9i10b
	 I8z/qda17xyRlP0nmrDrcAl7dvuDvBxnuAy0/oE3yZPZhhAQawNRkpcodWOR31M5/M
	 zXiC0ghq1On30hBPWaE99uo7YKKeBq8hw1aPHslQhOiEbqsQbP36EhpufIO52Q6P7+
	 Y7sxElR0IhJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7262CC54E66
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171047689643.30953.15413233985182645741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca1d87de668153e26a4bf8224fc044ad2e125c7da6c4f3c9a48f2672386f01f
Date: Fri, 15 Mar 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710476896
