Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A351421A12
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772274894; cv=none; b=Ci47cCL/tWIgSHvzKGMVTtgdCZ7OSuXbFYbl9MSrMsvNy6khq6hlQJH4GGZz84I9rSqI12jmcWFuDRbH1McRdK+yr+d2BmbB0gq60rCWza5odOMaa394EdPH7UIcTh7banwuKDW7wAkmeM7BCeDhnp64Zgfom6P7hZyecO08OMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772274894; c=relaxed/simple;
	bh=qYhJtWN+Z2U6MbRFUFNQ+q5yAVdp6558/cNyl45Ozn0=;
	h=To:Subject:From:Message-Id:Date; b=eqN0/ELglbZt5omDiPpTmWMDunDEgjQhQRNf5IGY5X89fD4qXNgZo9bfApaKtCZ6WYg4Gn/+/kscmgYDuP49GdEnK9EMJuHX0upER4X7tcHRfoAhZMfvDY98jOKx8ndbQd0hsrWhtAIdeoeJZp9yPucSsb9HrwqMBXLJw0zdlyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMTcpht9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMTcpht9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F92C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772274893;
	bh=qYhJtWN+Z2U6MbRFUFNQ+q5yAVdp6558/cNyl45Ozn0=;
	h=To:Subject:From:Date:From;
	b=BMTcpht9k2yaYCKZT+QbobgNApXfO1NX9eMx00Rm9JMxXTDHhqPut/k8ipmvpRP+T
	 K6+cQOH4jVPv20Jy4As8UMwMTvjcGuKx5Tbs2XNjfr3k1vPt9a13+6s0EuA6ao4AJe
	 YRTm3S/AjZGdSJrNKQ22E2sv0oFMJtUdqiQGPf9MoQBnmm8u0zQfJGmutTu/UtGYcV
	 YP0Msou6KVgMUM8Gmc/n7b2IDdOgXwTEggGFCDNOIt87O5jbRgDW6yG3xahwJGnlRD
	 3q36s3ywze1HiW43U+uTE9D3oluSb54ee1vWWy8FXMKhBVjCDqBIOj1/McHtXSIwRp
	 Rww3T/myAsdeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A572DFEE4E2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227489358.8182.10635427182340480859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28564ed1a6f1065a0a6b3db3d634cc77dd157206cec120bd7035483ecac316c
Date: Sat, 28 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772274893
