Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2EF3603C3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776852454; cv=none; b=FcV4usfLkhjz9C8xD5MWoX9PTDmvJ4mIVqqxrZp6eE8E2f5jbGOYKmf8BGVfI2b4NcnMhhNEgQuYA2CmOPHvoUIIFvbgJCsIwlLOSCa5Lsl7UDO1I7preY3VuzdOQSpw4KfJny9p8713CtPBx56EZt+UrhPMnQ3bV531eWoYKXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776852454; c=relaxed/simple;
	bh=7yLpApWqetkTGVaI348GdBgM+wqGmVc7TTiLfmsKb0w=;
	h=To:Subject:From:Message-Id:Date; b=s69SsfR7wQGeagiOr3rCHZhqYjmw2C8Q9FqetlYud6r1axe6fi4W4UklPKND/7/UhOejdlsEcGVaXPC4oMmJRfvwgLkVSGUCWvMnEvPrm+ZPE6GP5cT20Lsu/yv5B46gFqJ+KtbTBlmS2FG3llJn57Dm4N83th4Rp81+1mVcxc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SM35DZQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SM35DZQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD214C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776852453;
	bh=7yLpApWqetkTGVaI348GdBgM+wqGmVc7TTiLfmsKb0w=;
	h=To:Subject:From:Date:From;
	b=SM35DZQuVR6br49QvVxUwj8ojBrwG1Th0MOIsYlz1cBOdYnjfVigmLWAd91H2ZBv0
	 93NGIhzOliK+5pDrs59RWYstp9+xefGe+cQboAjZlokt1tMlBHX4W2V6GvTbDMgkVD
	 KSfnMGaIx7irNmvJefVAn9+x2mtnmXLt+qSNdiGucpFg1NjeX1jISPg5KaZpCIxVVh
	 TKKHOr0NigQtXwJ2xct4ZUpT4BM1vaHEJpVS5Y+M4tY7ZYxyAXlZ6lhZTG+aeBpYaE
	 +3gI+jqDdCnwO2zQcL9dZyCYgsVDuynnYk1ilZgIwmmkmau1nMOTlyz4D+XzM1hEW/
	 tfD6DNsNFMcFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D76F9B600
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685245368.11607.12936150816862279572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc6216650e525b60fdc9c77be102e493c19f53fe7921167de9cb35b3ec9420c
Date: Wed, 22 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776852453
