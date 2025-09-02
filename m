Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E0D2E3B0E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756799394; cv=none; b=SBr2x+PaPWexcoOkwjukXaZTA/rjTaFHomcC0+7jpr749AujaygBGDbc/QSGx+pc0Kg3rIh5FI0nVf+dH26D4bjSuoUrBleNKevP6lgBw+/MDCjPbmSFqv+ngaEJapH08mMIdTx0IBZYx09TPs9DssWs8yyEoaZn6M8eTxKQJeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756799394; c=relaxed/simple;
	bh=k0mykwCQc3M6HsDQSQHjfLcFWCNJLLsThcuSldgyQeU=;
	h=To:Subject:From:Message-Id:Date; b=Ox2pgD3e7ISLUEalSCFvhuwm0Rfq5UL/cWYSPXhvailDvdS8iCdEDHbGYdPtZNEyVd+z+FyhN2Oh1woojoM8JVAI9tNuOacx+3J0xqdddbGUfix75KWLStrDIf4ClEtxh1yU2l1MJ87ygdRwGOwyGbRffa/z8NkHstXzXz/2+rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxAQnSnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxAQnSnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C7EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756799393;
	bh=k0mykwCQc3M6HsDQSQHjfLcFWCNJLLsThcuSldgyQeU=;
	h=To:Subject:From:Date:From;
	b=OxAQnSnuNY5lOG0OHl+jx/pY6pggpU4JcqErVY1aLKRa3OcO4BWbo3HpNSnJFvGy4
	 lMRPVN86rmJS3rE7pR6n+Zkx0oYis2eUQDD8OOQa4YawWwfzLtaj0QHJKDliArMsmH
	 JBCTGxjOrZfMUwe8pM5E6Vc60FnGx5ZjqSwQV6Gfw6j9+pFMGAuvSVQeuWu6TDWyo+
	 gCRZicQYUcelv4vkoq40svgFIERLI0nSuKg2ZvnI+DwhR+TEMkNvWZWH/XdFDsbLdE
	 3jkJT/WCnZYtoO5ZmQWBgdwgU3bLQ0No2sJrEuWp0pwd2JYS7SfI43aVWta+dEv5q9
	 BpR7PLH1zxvfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C3CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679939357.23414.5835284234757111288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e323cc1bfda8392653281c55a6b0b453e4d61e526dbddc0ae438e0d5dbed675c
Date: Tue, 02 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756799393
