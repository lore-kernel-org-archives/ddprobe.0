Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234AB14D2B1
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725806154; cv=none; b=qiz6ATFaMQs/Kc1xaYRtxivLLgqukSX6Tqpbdg12eKv8gTb2/Z2HmdKFVyZZCV9DfODluJLKnn7r0Z5q2rSRd5NP0OfdBnqI/6chSNPM3e1PTQ7NCE/AOvTa1H9kVuelxX9eBu5b1ZYrl9FWi/85hMWOCLIU3TEJVxkA70b9Gwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725806154; c=relaxed/simple;
	bh=KyeqUfFhfhJfJ4yyH6N2YH8HhbccLHm0L2ZNsj4LhU0=;
	h=To:Subject:From:Message-Id:Date; b=pyanu3i6BLx1oNFdeHhFGX9EJi2R5knIJjEEijBsOgfDVVtCoB6wY2M/H3oajYvtNQM0P3j5ijRIeiK5h/ARlBpq/4Njjq1ORkBSRX84DGaeYHhd/3MAxw6xglFpX2aHp1oUAxznRE3aBdGLEd/GqkmHVtNPMvJp1Tt1a1fRLi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAQr+PhI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAQr+PhI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5527C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725806153;
	bh=KyeqUfFhfhJfJ4yyH6N2YH8HhbccLHm0L2ZNsj4LhU0=;
	h=To:Subject:From:Date:From;
	b=bAQr+PhIUWLiGB35Ten9J0k3sv53GHeWoAvmOsoFpVvX3Zff+ItE3dDmagegUrsCK
	 VSWa6mqsnxFfLzeDb+swYBhAg8DsaHQSXH9cGE/OGfiJ3ciV4CWmsfPqPTRo5+2fqU
	 Gpo206AgOaAr71gC6EImlpfcM5P9j2ZS3KjNqfZqekWINPa5L02abUauQ5951Mh4D5
	 zJHR+NZOxe/XN8ToZho1KIPQU+lsosWVSdlNFDOfxo17j2kgBpskiGHiyhja6Csqyd
	 m0w1t+ng0iO6yxgTB6/bVTe2Y7lRkYavff3fjK8+1WuLwtx9rpIr0WcFTz7pxbQuHT
	 z9uWzWYz4mt4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E98CE6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172580615362.19152.16222460382135400935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a99075cfad939c08ed874f93b8ab8fc691b5468c805856c0df1f2b81fa3a6a
Date: Sun, 08 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725806153
