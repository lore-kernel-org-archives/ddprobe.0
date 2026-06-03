Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4836D1C84BB
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780457074; cv=none; b=mUjYnV3scIodMGRcG1KPGX2Ytz1HrR8wIOJl7rl8Xg57Y1V4TYdQelmQZ8wIZ6E9MOxWvCecxHYb3SWqzGRwJHj0ktVoMq3aaQfo/khBwnRpcY0mltCuPjRvfCNgRdmnnRCIp3sJEz8VifjodGmxXOdv6cdm1b98CcNS2hrXb7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780457074; c=relaxed/simple;
	bh=rce86KwXHvpGxfru5O6CeYi3okDgqlCIMDRs3VWaYIs=;
	h=To:Subject:From:Message-Id:Date; b=ZyFvP/jjUk072FDgVKRe9lthCmgbY/iVYVDyJrKax8Xz/tpjTqgqdsUiYHuoBcAF5DKfBujf81BRwRqoRrdqlwKmaa9pDlFbeTxMWj2WxJvUjU+f6d1vjV0xGTXvwI9V9KQGg2OuArtzt3cFcRZycjqM5LncLXQ0FyDqjLJKq8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffiUHcKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffiUHcKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37FCC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780457073;
	bh=rce86KwXHvpGxfru5O6CeYi3okDgqlCIMDRs3VWaYIs=;
	h=To:Subject:From:Date:From;
	b=ffiUHcKCVKf/ZlfRDS9uOmk8T+LbflsC2CkpXVvfwpd/EixeE5Mp4TQCrg6weeFFr
	 XPyG8l3Gknb+rE7Rfd5ke7pO6R9SpLIKRcxuOxfVHFt5YwLQcw00SBlU4UqFf+qemb
	 893Sx7UvD77X6iJ7Q4i89i2Xcev+ZhYyWRDc46NXKchQCTfKeqDn8aDOG0g51y+Zo0
	 M8ZSec8MtNEyYrtsRvSG9F8bLYV9z2dGMA66zL98nkkFChKBZKK7B5MvsGVwo1kMO4
	 GdedNzWqiSnsF0J9JYBhiVht9JTetRBZr9rqLt7VrMqLeGM7+Nc6v6tArAoEHTb2st
	 rSmR0456f/JXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB67CCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045707369.29078.1112806323743282983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef54416a5a9e6477bd8e0d3a580c5225c7f13f684d84b84daacc0746b468e4b
Date: Wed, 03 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780457073
