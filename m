Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197FC265CC2
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775997454; cv=none; b=YND8duZYrCdbbiofVhS9Rg7RCAlvfCsEJT4bGV+deIWdycdqvsHPf8NzF5AJxQ6HxcmngaSMJE9u9XHSiRtoXKY+DumeQpGYbjuCLGFv2lbozWThSczBghmggoXt+xEweqy6DFQMuoLmZNCPDdmt86fvYYnpkt060MLNskIBSHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775997454; c=relaxed/simple;
	bh=ngUKCms2QSuRtqJ1rkARb14yHdeG1Pb4cyYO6yKOFrE=;
	h=To:Subject:From:Message-Id:Date; b=WlK10zwHgFeHxMY0s2VB+25qMTmoOBPNjfFxgPl9Q36IS1+FeK/kIxsuOvGopCZFy9yir6xDf7b5fhRTJB5s+luMn7JRgJBjs5eaRwrukY43wEu/di9tblUhGisGd+D0n1WLzeoKFweJhyadT0gwSMWNROzbG7KGsaqV4Ha0fHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQQMgsWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQQMgsWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75DFC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775997453;
	bh=ngUKCms2QSuRtqJ1rkARb14yHdeG1Pb4cyYO6yKOFrE=;
	h=To:Subject:From:Date:From;
	b=VQQMgsWzKsItMtIZptc/yJwNzxzRa0bHjYgsxiTe3GgKRMH4B0JoDDOEFxST6NbU7
	 pFf1vLLYr1LNxOsepdq+f2Dl5uHD+H+2PVbY18mqnZ+ypybn8RoAqkSKySAmolLqHr
	 K4ldta/ml4ug17f7wiPabOjzvhIE7IMQa5rAZnW/zdVc4fBRigqqAi9dpVmYDaFzki
	 daX7fjt7st+dUbvza0zkRCEtxpFcIkd1zzqAyvE3zjTrdNO49MRWyP0ETeTK3uE06M
	 ByY6vizmapAfQ0l46drWFjb8bYtc918w3x6r92R5Y4uwn6VBm+kjYlZG2G/dsF0s+I
	 bMColfl5Uc7Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED6E937E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599745368.30898.13819432366433346436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7b63b660ffe005651063c63ff1e9df4b8ecf08f5904287549119ff767e047a
Date: Sun, 12 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775997453
