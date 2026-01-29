Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2532E2D8DDB
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769665434; cv=none; b=k1+RnPV87yyoJJ+PWMCNm7Ak26EAxrSXzHv1ywxe3V7KDj5BfN/yoYuK6QReI6Q6c6AIn9nidhLWIJX8B/QvWmU7RJd6xWCjfxeog/9tl1wih6bYFlsyi+k4IdBW/2r020CR6jwzmAalqgJwsCzqZSyXuE7VEtqUZmkkyk/Z3xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769665434; c=relaxed/simple;
	bh=HHb1pAu7sjTpwnhhQxoqMX3dIFr7VDE8bdqzkdfcYp0=;
	h=To:Subject:From:Message-Id:Date; b=PIXDXhkUsyuM17ADnyePr6CHRvMCiion53Ds7WezzH8lMXC1r8vO/HLpo+zTG+WdQS4h38OpJFd0LTXN8kbJYjfIaRn+t5/zb74PZ1ghW+/d7KFonHPjg8C/eEUMl5DW6wTxkk0BCb9wKzD54HHcfIQqD17Btp/yIUId3k4MbRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttfmjBo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttfmjBo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9305C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769665433;
	bh=HHb1pAu7sjTpwnhhQxoqMX3dIFr7VDE8bdqzkdfcYp0=;
	h=To:Subject:From:Date:From;
	b=ttfmjBo6YDiHqoty9d/9Hr+JXA8ldM0kXQGQx0AkILcRJPE/uPbbGejESovz8+CC1
	 GkyZjP0qBwm1BZdWXErjkYqi7df670bfg2CLTb/16fRLMHTt/jK9Xvtn+G6N5OCqLa
	 nYHoOsUbzLI5f+SZ1lhHFCGJpLtQESuzrmPqtQfCUM1Ps4FkP3L2eiNxZvpkIC6MW5
	 8f+hwnmJBDE+Slvt7lf6Yan/wfE58pv3yg+uR8yfPQRbRzKHMVpQL2TQJYdSnR8iAK
	 56Z+CR6G2+Q/INme+l7GJImD7W5c52fRSpAh4E6KLklD0GI8zDtqeW4Fop5fG4ReNc
	 kM11gVI3JaSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DF3D3F09C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966543358.25242.7217954237572658058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c318e7422f21d212e9a15e699163d927009a899e445c2ce15c467fc15a70dc5d
Date: Thu, 29 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769665433
