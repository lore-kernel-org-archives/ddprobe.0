Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF114CDF9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719920123; cv=none; b=TiuPVdv/KA99g7aWA623qUV/aMSCy5AOWcKDlT4T4THHUEWecoyQjonY6bD9TdXyjCzNSfgjVYbgOzLUygynku80Wo7gIZnQ798csvufJfLHVtMG5UbnyI7NDHs/h5B+RbP2crxVOWEbfAaQQRkgIGyIeyturqLrBLZbmWBX7Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719920123; c=relaxed/simple;
	bh=+NQVkIoY/H5Dkbyut8o9HJdnnbgs4L70OVDUiBYaDfM=;
	h=To:Subject:From:Message-Id:Date; b=LcTNtJLp8Pirh86YyEFKyVNsBu4mc8+3KtAjL4Z69cr4+xT2OE+cs0cZfxsv3jDOiK3dYG3y2xR8VMJROTfkHbq9TtDEIXxmuFJeA6/Be/rKK712JS+GGo/EKIltLiFQ6tYhhk9jYMEhd+rkKK0u2Sqrzpcsq4HgigpNpY4jjnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGBFxSE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGBFxSE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FB2C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719920122;
	bh=+NQVkIoY/H5Dkbyut8o9HJdnnbgs4L70OVDUiBYaDfM=;
	h=To:Subject:From:Date:From;
	b=kGBFxSE/u6FcPXhVXoxPmGIchpb/ZvQHAMzJwVAElM/u1NJNMCSDY+mVqMWcVd8YB
	 yvdtC+ZN1bqwt8AUIGDLyV+IZ0f7F/JIb9tlAHzkrwPVJ7rIRzmV5/aQ7mTnESrCYp
	 Plx+JWWcGJjGKWp66go3sKY3rX10+MisFKpY4s9//JPMRZrt9h/HuDpUYG1CIYhP3y
	 Q1+FlyxDHrfi54g6ufYG4rdDPoHeeC0DSyw0yiHNh5lCe+chcHdOVlmlJhC4ocdEnb
	 XyCU+1BaWRghm4ObTULg1MIGwI16nKpMOYU58Po9HWA/nTzlo3onQTWnDKxuP+dFWn
	 LPVdk0m9cdBbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D2BC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 11:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992012278.18389.5366195275534625192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391ff3c86d2369ff0045420be7d44efd6f895585b5e1eb3212bf72716e2fcdfe
Date: Tue, 02 Jul 2024 11:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719920122
