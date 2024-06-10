Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488AEA29
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717981043; cv=none; b=i/ELVCIPVh8U8v2IvaqRUqkqhMT2TUbDPvckjHDeuwc5Ab9uOs9BUlVSU81X0LBvQNI4sF1acJ+EDFml1yWSJj5wDHogaOCELE4MCL7ZbfwFediIxdAnYPaRkNlTnANcuovf5wjYH/kgIdH71yc1yqa0a/glem7ZdZBMMzSmP1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717981043; c=relaxed/simple;
	bh=VoIt9f2cO3iC7ta/7kffULMH/H2/w0Qh4QHGBHmx76c=;
	h=To:Subject:From:Message-Id:Date; b=f67djW5AET04twJPWO/mz31FbJH+sstl3Dtg4La449XZYNQiHpgn/s1dHV+uM+FW/ugPggVgK29VY0WHwOIWork7NoBAHCJyJRHUwwC5zJhTv353cBQUnuf7YJthpgA5ZIHRgXWEM4xgt8rXj+MezKIdU9trgQ3PCdwL+kPsVWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbTfPeBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbTfPeBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D696AC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717981042;
	bh=VoIt9f2cO3iC7ta/7kffULMH/H2/w0Qh4QHGBHmx76c=;
	h=To:Subject:From:Date:From;
	b=hbTfPeBfZiZmYbyW+G4nHqFvNX3OmLWqK+nDa1JlUNKi36RBeFMmylzRpIDvgTMBR
	 7y3sILCwYA4XhCjiaUjcVOKyVfmJUrQn+l1Q15TMhF1O/xHQVsWn+SokJqsA47PsuT
	 3FOTmTnm+xEnqLLre5OnGHOeV0cTrCbH9U6JUu9nRino8PjgEpcXue8gkk5/wWa6hT
	 gsMyErjGASct+cX3AZ9XHpmv1DNUPyly8my115U9eBzM3JOhqXJAEN5fmsgTUZnTHA
	 U8IB0U8v7nb7pFaWyhv8O9qAifjp3ONJh8G8DgFvWEbMbxmH32hK1trieTLBkZvGTC
	 xWkrK0V5EJopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2B7C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798104276.27920.3301578674336862506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abfd74bdfe434899ef771e2da26976509e257ba4b725c8577bc19aa6e835f63
Date: Mon, 10 Jun 2024 00:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717981042
