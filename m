Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222532A1C9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747231194; cv=none; b=B8h1JnRUYlodx/rg2KjF0sC3c+Iq8k/zog9rBF68th4QCKF5LyEZ03ryI8uDKa8ldoZBk5EP44RcrZh0u5IjcQFd4T2tS1o1q3hw7InNc969n1gAyjStxQivzGrzZ5D1BfsgDywUeCZvtRXMGgl6ZNJfal2Vb2qTHCd69DKSKCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747231194; c=relaxed/simple;
	bh=K+x4APTuXz2+gyX79cK781I3bQkrfbS+Rz+mmQQyQAk=;
	h=To:Subject:From:Message-Id:Date; b=V1+aJE+xB2lOzhwdRr9Usw1oinx5ofbRMcYPldNG0IBCeyZ4edkYHOAN01zwcpjD7NY4cBBeJCuJh8yRU8Zi+gdcyqv5z5AfP0A50GuJtSnKSwhIFRKoWyWJ8lHlWZQOWbcsekIvIz/b/dnW7CvBGU0f5hvPu1iPQ+wFcUruHFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFHsctZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFHsctZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEADC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747231193;
	bh=K+x4APTuXz2+gyX79cK781I3bQkrfbS+Rz+mmQQyQAk=;
	h=To:Subject:From:Date:From;
	b=YFHsctZexws+FMm+jxzNPFhvTe72YSMT2NTM2Xeui1+ZOGOnxrvDOdKEnkDeJ9TPW
	 Z0sF0HFANcKIn1n1BN7TBQHF0h54jXMLUxubWBrRT1N0aEvo+olKfDFsxRHMdeghXr
	 OaUucF8uvjIHxu7GlDZnz8maDqqWQIgV75eQJndPJcpTKo7rz1vUCWs5O+gTYgel3y
	 w+F+CmnhbkdmrzZlqnkL6VArcAmZgDaZNYlvEiuob/A/4UD3qwC84f0eqetwGdRjj3
	 a+sbuDevpGyQMum3b/GrinFDSr7ktKAnn6nOoVTtvHINFsvx7vzvXi5YB9OqFlUmU4
	 mCEf1nag+N4NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC22C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723119357.28108.7346402105107222807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465078347417b1dbbd6719d628a74ad1e362cc9b61deadd4895a6bebecfb0ecb
Date: Wed, 14 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747231193
