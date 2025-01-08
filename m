Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8C13FBB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736306754; cv=none; b=Xe85R8eHWIVX856CAOkBzMqVrp65ANROuU2bV8TDYrEsBKxIBPIj/krBIhBEyjTSJR5YH1QsNFF9BFwdI4bZ1l0tCQfNQPrQZSBjoVFPx5Aq1+OKItS18OG5wMXJksFB2pSUU2Vrv6nhLUgHRJKOF7cCoFaAnlen/akmN3i947I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736306754; c=relaxed/simple;
	bh=yLn1W5ocEm28xoj35y8mGUOjm+kwVAD1d9wCSXy0frY=;
	h=To:Subject:From:Message-Id:Date; b=sLX27xvNzNmTiyQsrwL2GR41aPnAb94Z1s+10RtGgYSnwcrXE4+RHgsibDZe4NNVN7GmNMrLmxu8IZAN2+VLFLE8XEYo1FsBXyoVWRnjvyIwOGrBkSH5hv7ectnImRvSfe4RPDEr4J9geZoEc0J7MCsQKWP4/i7b10zwoS9/HWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VextfNrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VextfNrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A253DC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736306753;
	bh=yLn1W5ocEm28xoj35y8mGUOjm+kwVAD1d9wCSXy0frY=;
	h=To:Subject:From:Date:From;
	b=VextfNrfx8xdDO1z8lyBlknrsNsgjYdsfJ4fiRvH803vsJ6yC5TBlyZebvMw2MDwz
	 w+YUIoDuJf31oPHEHQlCscky4WghFI5Ss7WQngug3okwdHFb2NtbFhoGVMXgfg0/EX
	 ylwXfVYluIvO9dX3LvE05f3XnEOF/XigRP64X/0OhWmLehBWpJTO0lUCxyNumDVEG2
	 /aj9lyEEw1rV2MPm8yPndyzIZ8m96UzUb6SEVU0Fe6ZT/MHyC/DpHk0jeWYtllyV58
	 AoY9uDJBoeE3G3frqGDP9N/JzpdYD/hCZabW4mCJN1lwOhZ+4th1wtAr+zZ8PxMKtk
	 QXkalU+Qe6yGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90816E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630675358.3307.10297958574432561463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f758dea50486ee3a538b3354aa470570c62ff697c3721e8e682e428d83a6f2
Date: Wed, 08 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736306753
