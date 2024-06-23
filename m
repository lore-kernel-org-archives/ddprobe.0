Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6075FD268
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719148943; cv=none; b=tYzycEwkVa9ZEGO5+t83xnbCINetxHAw9OVE20+HT2e7t32AhE2U4HP4ib4n0emf4YpRyOO2WZAZcIPkdLvuvHS70FEWGLoBWDPN9bxWNkfYlzsbeUPTlCLqRK648JkDJJIoosyeeW1py+0QJmudUek8xVwDODb7j6JkuEU7wVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719148943; c=relaxed/simple;
	bh=P0RTeKAkygRXEM1shP92fGEJ9pVrXe7LgHBI3LhY4VI=;
	h=To:Subject:From:Message-Id:Date; b=WGsP/uArqAyxadO44gmE6ZfUF3K5CxGVf4dANwAphUpQLLauEO39f3ikfSfrKDTklyuWUhIkSaEmXn7M318+czp+XkSdeDVpDs2D1TFbBUn/kIJ0MT0X8JGnSKYYnYIbiSYMTKx77JykJOxau7R8DlVyGhTexEI+IksAD180lWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGE0BLxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGE0BLxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B62C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719148942;
	bh=P0RTeKAkygRXEM1shP92fGEJ9pVrXe7LgHBI3LhY4VI=;
	h=To:Subject:From:Date:From;
	b=fGE0BLxu1vL6iid6QORyZHVX6Nflhr7lC7ZAbrfWC+n8imcHIUi3hMlBAh5gjNqp3
	 Kkza7malNPJG8OSraTwxIKiQK1JqLwGebw8Vnp8bDurhYc940baU6F2SzULLF2v+Dn
	 seZN4diMIx1Zw/97G+Prd46WaQGiAsZeshkr5l7xp1DUc9qRbIyssVsLWOjyNKzHhU
	 7txbQiuB/l/3cCErrPRg5a4M5FvzJ3P5SaRZisTdFOQzLKaX0o5RfD0P2Z4Svm+6fp
	 MaQPHltbd7KfLMh1In2UXK6/pDIljwEIfPW6K79ITUFq5Ais30+oJD+aUT6bHAgeQM
	 CZfGNem9Wj75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C509AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914894277.2353.14858225479253410488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fd89e6c16a727baa66c3053cc8f515db0f2ff6faec1d076aba3e2d87e4a429
Date: Sun, 23 Jun 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719148942
