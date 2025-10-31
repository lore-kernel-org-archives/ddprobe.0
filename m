Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106E62F83B3
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761947994; cv=none; b=EJxpE5xS6icinF23SeAg3MJFMk7zN7IQnkXBgGG7tV0HRLKSJArWFv1MhKUCvGryxErgpRofVtpgRg2Q1PJJntK7eRNiQYgT3eVFXhQPNN0V95sNHDXteOfCrwRKMmivu2I64v7MawZWMH6lwXXH4M1Vm5Bj2WDUqHA5W44X+d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761947994; c=relaxed/simple;
	bh=v8HrN7yP8ECvLIu44WdYGwnTLI9lxBhMW2pRc2iqmLA=;
	h=To:Subject:From:Message-Id:Date; b=rj4ce/zHyVMZHF5bkT/hN/uEKJifyxmm/uZVvTfL3FDbFVZag3yPv70L9tPx6O7IaFHg6PV8w1u+bnL8YRE9qN3X9pwxPt+/uvq6JfDQA01lr8oQVB5aSV5wKK36/DAzCsC5jcdGe7ku9/XOs8Sh9ZsC89wQS3WFl71mHoD3CGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCWweoFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCWweoFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F00FC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761947993;
	bh=v8HrN7yP8ECvLIu44WdYGwnTLI9lxBhMW2pRc2iqmLA=;
	h=To:Subject:From:Date:From;
	b=iCWweoFb0pBN5/2r6HSxTrBJ+xFw79vMgF6t4uIWvulXWDDh4kgdhSaYg1gv0xnDk
	 ai8WFLvo9q+2nz9iOXNe/6iPz8yWYGGeIsIZ7Pus3Xjt/CwG3jg+cxDSvnz6mzYV+K
	 PDLttN9qiCHBKTCkDm8sLcMW59VHLzskBVkwfCY7ZV43i2ozJlU3M6OQk38J1mkQvY
	 fuwy+7yjpETXld9vloqOQRLa0gIq5ybzO8Sb/QmeemxDutOfxHUt2BCvsAUPVb8Cej
	 B0eAKub/ltmjGqq4j2F5/AOla+TKm8hFa+0CJ769EwM8shaUC3zw4qDdWfqtLWJ1mN
	 j3wRb6u92jPWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E8CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194799358.20031.2319929734683915172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64e4fec87360789f45ed5b8bc2343b7656c84a91d9b85ff7d8005604ae37c62
Date: Fri, 31 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761947993
