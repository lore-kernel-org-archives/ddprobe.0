Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604463C068
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715946143; cv=none; b=FJz8+zD5GiMmh/owH3pTXAPZ+t8esfP8v1FCL1PwBoy72KyCAX4ObXF23GnJouPfpCbCXfp2Wxk86NZnSZcRMSWu37RHdxe4Urc3O7tWZqH7KiChqEXzGQyZOfij805ScP4p74fLMkt5E226tPQ2IeOXgDek3M5ts6rh/ku0RrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715946143; c=relaxed/simple;
	bh=NtQS5iEcz3GFYcLug1hwFSoQ6IV3pkbgbD+3CpnPBcE=;
	h=To:Subject:From:Message-Id:Date; b=rHv/fMcBcnRFxL6+G90L0e430sSNE12d3uNK6588LrbLdOrZdZkkf6Q0iCushrlFYTsSWLASVYO4h6cngF7dDW4rZfKUMq/EwhzDgUVjtETL48ouAW4lYc891Kep7x+XFBitXD4IGSzWZrfEfYk7Sts8ionzo8Dd3CSPx1CKdcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+ZES3xY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+ZES3xY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE07FC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715946143;
	bh=NtQS5iEcz3GFYcLug1hwFSoQ6IV3pkbgbD+3CpnPBcE=;
	h=To:Subject:From:Date:From;
	b=h+ZES3xYb1gmlX7rnB4IuAiQHtKuO0B8taJo+ldW4P+IueSu+jPORQN2Uf8lBnM6t
	 em7tcQSst2kVmNPH9sUc3RwwmSQOI++v53ZJumPZLBtDxRQIjzg0aAyL6i+kFHEAlg
	 I7kIun1lqK8ll79oj9NaK7nGUccleNK2LZKJ2o7qTsdtvvfhoPxRDGGsZIILz4yJme
	 ka/2sb3Ht3eoRz3Rys7rMEx05249cfo4KsC/nH4c1hk/QIJmgTpWOXxj254aTvDlLq
	 eB2OBxc6pgqgZeIrpmsBESrHOUjVAYt9gm690umMg7PO9qldiV5P0q9oThi/TmGfTS
	 zrd9mAHH09zrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D815EC25B77
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594614283.11644.7905650082705481915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb72c6e56d57144bdc4a4b397328ad93f696aad89a825fece782c461a669423c
Date: Fri, 17 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715946142
