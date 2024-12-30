Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23A81553AA
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735544754; cv=none; b=mMBJios4blK5pMI2O5F0aowJj25Tvqb7yHH5Wjdh6cUk3wWR1XbkZa/cQT1I9giNDVtOeASOWfJ52RRREbOzh7/02ApReAYXeNEmRB0H4iU42oHYKHyRNLiFw9eE/EzDKXIyRjBQYMMV/4xZp4atjvzFApFEiIAqo/TX8QJ5kdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735544754; c=relaxed/simple;
	bh=lC1coCti9TP5Y87BaX2nrOk3dIsQKoIOYek3mO0XWug=;
	h=To:Subject:From:Message-Id:Date; b=KCkL6OmrQkUMnk7018aandWyo7tnksehhhFAnuraux2VmgR8MnEli4qlW74Yy0eK2aOzxoNAWdBQ07yB2HYL+v5+avdr76qbLwsICZSyiLo5iN/VRcfw5S+uh6+mhD930D9k0JkBH1Ha7ynHlxDX7ATPT0ru2bFemDCC1+HKGrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5Ny3QUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5Ny3QUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73DBC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735544753;
	bh=lC1coCti9TP5Y87BaX2nrOk3dIsQKoIOYek3mO0XWug=;
	h=To:Subject:From:Date:From;
	b=a5Ny3QUdxHPclvT9nQcdQuzTy2x2xvPJLUMBZT8BiV5q7ji6/CdE4QOyETCZKan8Y
	 BlIgRmodBjC2bWFkTg2RdJ8jgzgm3NyMMePzkhbxZZh/4INPjxR/fWLb058wYe/e8w
	 GOeUp0fe3lPlWbwkch97v+DYV1MM3j8yuc01zKkeGTv6TKS45NECi9YnyJPqjcI5z5
	 cbWFmSQbPzh6puE34TWnEPgItYTaLHR/jW1PSQKvF+VAjwdSsrjyHVLLkJUQwqeva1
	 8I5H3yNHeUcHWYlISAh2VfpNX1cKYnu9YG0EFPfSwKHxbXQpy85oE7B3WXr9OtRbBN
	 Jf5Jk0tpPkN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92735E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173554475359.16104.8841419651457961996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141fdbf79f6d0f2cae656677c303f8a8558a03ff91be1405516267aa0e7f0855
Date: Mon, 30 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735544753
