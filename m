Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28153AD2C
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746347994; cv=none; b=uws4WDRq/RLB0MNahD1hiV9r5NOBBUr4E7OdH0PS6WE0I/MIC5SmC9KC6KlV6p75igFJAWL5VOCbwGPrxGeLVptt7/GwjxSKSjLw0weNoAqFtyIbqtgOLRdYjHWV8tgx+/+cxCZK/ez1ITjCQsZmJ871jaXtd4FthwBy3Su7PxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746347994; c=relaxed/simple;
	bh=RVhB0KU/0Vsn77EBuYK8LythVKwDVTr9C6ZQhTBuWE0=;
	h=To:Subject:From:Message-Id:Date; b=nyHvRkW+Dp+YUQJ72SIO1F4puk23VcyhRsHpq9RkummGSUVHYXCKPESE9qyFNOU2Q1mTGV6LsOGIRBY334NBpxdpmU0v3bq967Slcfc27/AbFtVp8kR91NO+A52bEQsjH20lhm/+NBN4tpd7fvZr6qX5hwx2b4fwjJwUJRKHkxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo4VP7yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo4VP7yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746347993;
	bh=RVhB0KU/0Vsn77EBuYK8LythVKwDVTr9C6ZQhTBuWE0=;
	h=To:Subject:From:Date:From;
	b=bo4VP7yiMOlSwXvIawM9dkaxGq9m8Sqi9UIWWJmJVTd/hllXbYmLcMkz+cYRe/jD7
	 hRW3DC2OLbXCq8N6dPg5tFQ7p7sUbmlmyKoU3gEceIorZiOMu8t7FzrG777tR4P5Q3
	 La04/5Fv67MNbSXfNpU8v8uOT++P2fS6/AELnrsvmv/ho9Cq+nWPuTex5yh0Un+GYi
	 Pm9b2zKHMuanfT6qScewP6LK3hkcQPYWYWHGHQnRk2+qUJD8Tr1Cxw4V0w83XzVe+C
	 xpMmT07ouw9TD8RWka4ryjMIdIQkV5KMaXqfEr+fOu748ZSJTP8RMNbH5XtJp1r23R
	 CAgHoLC3yvTAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE06C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634799357.15947.14469116122783440074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ae5d374edaa4d310f6079198f1fae3f49680c1518c0dc7ed412f9f5586758b
Date: Sun, 04 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746347993
