Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A8E23E25B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782409054; cv=none; b=F/GV0TuORLjFHXWdyuva7hnH0QeGxA8e4Z1Td3i+xjsytsdiOYXWhH7xIB6Zuou+Oo7OFKwq/2cUzCEqlOjaMWy1/nFdTTjJpdywEJrK2e2BNpjlpbcGL9ufoiQoj/CPhS3EEwdKj9ADUkNpXS7kjYMhP/Wk+tjfrO40S4tgE18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782409054; c=relaxed/simple;
	bh=7owthV9wnfJ586yeBYnmK6IauhR4uoQimvL95wCYpQU=;
	h=To:Subject:From:Message-Id:Date; b=Y11aKuDrhOlcfAaA9tg7YoM9UZAtPv3pc6QTSGxdbwocSxG+Jyq226Lj2caKR+PgAfzKSQbj3sCIkaqBckZbvWd7hUsr80bDeDJrj3Jsalj3OxYcSiNjSiC4U/TXZKBxe0Xv3tGy4H5CAFTr98zjYVgr0mcPG3F7lN9BqHKJupI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChTujZ4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChTujZ4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D212FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782409053;
	bh=7owthV9wnfJ586yeBYnmK6IauhR4uoQimvL95wCYpQU=;
	h=To:Subject:From:Date:From;
	b=ChTujZ4nFCu59YbMk1oLmPB+wRHODc54ynqUNuGGZQgVdSiu6ox6Th3mllXR+cWFQ
	 c48vjAl+Z2LWjvR8GA0sOHVN50HNw4t2AIlD8KJKK6aPE9XVRd3osGSz7dkabN6VWf
	 wwYDWFeb30z7nEGyMcl/Ff0VazuDeEyYgoribakx3O3dZzaFVhKcj95191wZDQ+QqF
	 7xhD0JxpbYzoX6MM0QcCNMwGglnpbdOceSCwZQqqL190CPn2weq+cmquuhy+0dS+/w
	 eLzK2Cx9f43nAzGZGHPaJnSyvaoscbr3Gw0TNaVFlMUZLmyePHWLu9lc6Lw8orOdOu
	 JTSt6n2P6f41A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F40CDE002
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240905372.24124.8845786987267600979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d01478776d6071397370ebee96e74b9f05f1eef19e60a42d17eccda6f2d4e76
Date: Thu, 25 Jun 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782409053
