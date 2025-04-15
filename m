Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B591F3BBC
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712394; cv=none; b=HvoL4ipi5Cxs23GoiIAj3tCR8GsviCVospu6R7vLhu2Y0/ZMNet571KLfYppJZgz7vmcWQdXGWM4683v+yoU297dpBFvpps6071hRSBtvjuBhQRuL09+67GDo0IcBQwLGRkqfDiCKFguAEI/J/HzRBUuWvchY17gkg5JnpJCTZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712394; c=relaxed/simple;
	bh=8CilKyvP0DvU7xHLD4yX7Rq1PyzDbuiujn5ZnGJpmyk=;
	h=To:Subject:From:Message-Id:Date; b=bY4YikdH1cr/sg8GKPKBAE2fiFI05c48b+dgFFVumyn9EvV2A7quVWrnIArVNhzP3R77tR2X6QWh3ZkgC1Ib1OwIBgpYt0U96nQpHwrr6FxBbnbKbg14lZwnc9ZXbf3UaQ0bd220hLQlOj5UJp/a0Yer+zd3bK4jMyNr8/Y6wkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBaNa5ND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBaNa5ND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36E3C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744712393;
	bh=8CilKyvP0DvU7xHLD4yX7Rq1PyzDbuiujn5ZnGJpmyk=;
	h=To:Subject:From:Date:From;
	b=UBaNa5NDP2TNEImj5R8NxgIVqeBU2eHeSCPAgPgwNQ6Zi2SmGMK9Co5WbcBAcfB1c
	 VFDmtRiadChAWHzMPE3BEDLrqFgJA0OXJPQAxGQRzeK2YbEci7rrjI1Nl2hOnMxmNv
	 iups5joYknz9/R/ghePLmSzOQsi4JH579G1QzlrJ8nCayG7SUkRjmDIWCzPKvmWf9y
	 qKObqkUb20KS0+/iJ7UQ9rTtiGfFp7w2Y6fGjnEKvyukSDxKIOgHXUii7qqyMWxCOA
	 fbVJcF33DdNvz3CPP9v3oC0friz8douXAzy2ZYu36Mzjh0NHmpGE2HDnBJSt0XUwTE
	 xBEudlF3Fl26g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA5FC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471239363.30632.10595495147607702540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c89037ee8a39c44bee27dcccf1cb23394292ed83ad05c8ba5b753310c74b38
Date: Tue, 15 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744712393
