Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE10B23EAA0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776021454; cv=none; b=mjupASKAC9eHMt67fWHPZtq88e17Co9Wxx1mML8p4ky95ZNYxuvGjj6V3aHH+uwzkopjCuy3DyHMVN4vqEoRi48fwGOjKaT4HpFpJZfYf76V1dQP6W1BxpijuJ4HDe2E9E6uxUC64QByYNh7R/KKar4f1zi8iSiVT+9qWccGVH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776021454; c=relaxed/simple;
	bh=B3qRhT34n86SxoFwqgYBoo/jb5hHp61CQTPrduTrhoU=;
	h=To:Subject:From:Message-Id:Date; b=d7rLW6wVeHnEow4lUzcUAn/1mV9K9eEgm1tPI/9Uc7OPOWOF8eFJiqUlf+z8fcLRlVEz/MPDMWFwhW9TucJyCA68KG6XBUWg2BoAZ8M/mx22qu9g6SEXYUGGGehuadLG9tq41TfWdyUvSc/X4FZPGCQYSyk27yuEQ8HyJU/0RUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/ZtCbh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/ZtCbh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1356C19425
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776021453;
	bh=B3qRhT34n86SxoFwqgYBoo/jb5hHp61CQTPrduTrhoU=;
	h=To:Subject:From:Date:From;
	b=n/ZtCbh8FbUL4F21tYZwjlz/icqyZkTsx/kPZbROyqi75lSr3LAk2x4/KTRHttRgr
	 KDtCkdh5H0HMOXeLYnGBVbxlz8ALLxmiiPX2KtihG7pckubEJMuzuFJp6uq+VGqfH8
	 4szBY+PRHsQ4no0O7fsfXUndSOqhouxH6g/KtdD1nDeYKFduMx7Bms4Ps+pdLuAOSK
	 pOg2b4ax25z78ICRg91OLgKYYahhUeIkyInCZD5hAv9hjwAr53WB6sdLcpwKKPMUhR
	 4V0FAU4vfWej6cgYfjym3CIb4oqWdRIjV+UL9Ft1mLGwvFZTRKk9HHYQZI+8fuCKAL
	 yrIIZ7wQyhRLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBDBE937FD
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602145368.8277.14697067050040472864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d34131d445f0a2ce6b46cb853ddc8f23d17436ba972a86d6465deb54e73d758
Date: Sun, 12 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776021453
