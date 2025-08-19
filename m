Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B5C31159E
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755592194; cv=none; b=qJ8bgX9WvgMBdKV6L0tuZ4+6MaD2z55gz0z5pNig5lof12Em62F/+Xy3O8IOpSAlIImM1HspTlHTiyQMhtCR5z3zzb1E7/9tit9FizTAdb+83Vd3W8RcZHbHSie2eyjnPOs3Al5HLZTn8GQ8eUaRwsH3sBmban8PInWaiKGvgxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755592194; c=relaxed/simple;
	bh=IwgUqbL5IekYGrR6sJKtGXMb1pcZ8/Ca5PL3qZXzw2o=;
	h=To:Subject:From:Message-Id:Date; b=R9MeukaUviupyu7p0+UfA9my6tGmGjkDMSF+bcRC2QLzLQdRw0MvmkGL0SN//iRfgvG/JVHORDd1drSLnnfkd+j9x8GXx1DVCBZ7LqqFMlOwQ2ddKGGhdQrscyXMDn55h+6HscO8xbJUppEL4VLGRgxqcCaNFFQD65W0ED1GiDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hypQ6nUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hypQ6nUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D587C113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755592193;
	bh=IwgUqbL5IekYGrR6sJKtGXMb1pcZ8/Ca5PL3qZXzw2o=;
	h=To:Subject:From:Date:From;
	b=hypQ6nUkhREbA437UONK8Bad6qNTwH8C813A5Uj0ku0aZrvYVPftL9wiMmeERuG63
	 rpTnGQJy4VDuXKF3trRgcVHRI6COFoXbt9pcwiWEtIf54ChuR2bIUvEJ7CLs2jRFz1
	 v9EWqDP9L/iLX/X856ch97I9eVC/79St1H0iELvv5DhYqOlUT9uqxW2hMKiTcyoaRw
	 iRrqokbd92Xkj0l8/vnrmZmLdZal7WNsAo7D5B1XVMxAuvx2oFBSb7ps40upvbiTxV
	 VTpfIJmUbZM+DjbHWr4R4sm51dsWn6aZgZnuSIsx2c757nSN78JAj18vzOZEpfpKMe
	 o/NbLkbPnzjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E799CA0EF8
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559219357.26241.15584790870787600368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747d92efd6d3e56657ac750728731d04981a64e1797570c75cb96d3249a0bf6a
Date: Tue, 19 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755592193
