Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593083DA5A6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788462635; cv=none; b=OaaoNXa/SkfcwCxRbzJdtw+wn/ufoh++gmsmWt8ZSlt8JaiHR4l0Kwrirn+VPk2xTxMR+26VsRVJmSDPg1UhNbjM+SIL1nuGLcEldaJnzuMX4nu+Edwh43CnU0os7+6sHbkACffIyjLrTasb0KJ4jAMjVBOM4fRAhtGBqg7GMb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788462635; c=relaxed/simple;
	bh=ZJ9Lw+sOmbDJ6zuLfz2zg7pkgIBe5q9L0ygg7r33vvI=;
	h=To:Subject:From:Message-Id:Date; b=DZNZpDHtSRTKOkms8hr+0u3KyJWkrVY5o9lc5wAftQiBWmpibRqjWgR9ctuqrUqB2Wio8q6X8kMU/CweiDxgKHPY+TvE77c1XF7pqV1k6GhC85LaHIfMnwmMX9U43G+uscyVBQtEKnex28hY95ZqAV1Ctn/SlDkwMZCTGLFJWRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNKygtl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNKygtl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D356DC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788462633;
	bh=ZJ9Lw+sOmbDJ6zuLfz2zg7pkgIBe5q9L0ygg7r33vvI=;
	h=To:Subject:From:Date:From;
	b=mNKygtl401Q5jEKogPsWkpm2vYfrj7pXLHi8+dS5CVuq6afI/PkGzaivfeDrOWcW4
	 86TFPD5/v/Og+fOA0/UXcC8NSm77wg8g8akp5bwwoq0z+c4xlU6rnqP3ESnA+ANXBE
	 NT6WaqGMnPnwWHUfkdklJina1Ph8IqiU/lwwHqTNKSoohDthkFc9knPqH+55V0qdBR
	 +TssRlM95xz+OU11BSnwU+xMkfKZ1aU39yc0nyVLYNh3C8lixBI2D/7UY0pSEdCagS
	 rShPSfZ0BUGf9lkNbfa/aA+mRpibEba9jWijhVqY62CkcO+hQaaRmE41ZwpdyLh0A6
	 7/3CLkkhV2Cow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF32C624DA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846263371.10700.10700609889603986929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af3b2826b2628fac2ec54964902aa7714a9ecab9cf1dcfeee886a83658c0ccef
Date: Thu, 03 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788462633
