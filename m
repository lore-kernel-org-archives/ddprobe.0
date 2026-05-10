Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CBF175A95
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778404234; cv=none; b=qhY0a1xQHWaCSEg5/+NF8bOpgVmhZBR50IscEEaFWEwDWmPPI3tyo1VMKPk1jOGCRbu2IAuut7HgqzDNtsI9jZlNYErGowJAfCrr+RgzyiJdjhS6g5LGFMngSIcgnB80bZIOorF5F96JZir38e11mCAY3LuYZqZHuxOffF4aVD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778404234; c=relaxed/simple;
	bh=1uGpNGdgaafxuIrCy/0APka1gUJcRWyXLHI9b4wkNTY=;
	h=To:Subject:From:Message-Id:Date; b=dUnkBKO1F8W/2qW1NBymD9W0wRl9hNO/YdmLoF5rsmyb0kCqJHbyoSH9Yqj2f+2b1LsJvXZIeZnX9txAZHggIPBCRai3yiAINDXP6QkGLoLslNt1duo4LZot8HY9yidbj6dygzzQ0JBeV/oE4WXjcQILatk35KtW3Bv+fARmpG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KY7jpq4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KY7jpq4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C052FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778404233;
	bh=1uGpNGdgaafxuIrCy/0APka1gUJcRWyXLHI9b4wkNTY=;
	h=To:Subject:From:Date:From;
	b=KY7jpq4nwraSZHEBsb71K9qEmiBG1HKW5sCIk60fQhc4jeq1r7BLJGlFeoO81qy+Q
	 DinUW6KF32ANYX4cVQcV88sxvTUfsaanQ33E6ni0owk9B+NO0UHvKmLXdBsGXiBPfM
	 qJH9J5fGufiKY4CEc0Ye9JAFreA+BmejWTw/ah+OQvbwPx7M0bhNmfZ8nUSiBv7a2/
	 HGqGuQBribPzCkH/u4YakXhzIsacTYy7H5w/bYSwjC3cBfhJ6bykQBO50AEoUipc8N
	 pSJHzF0mjH1Va7vw7DBtsIRxCmCoyU8t6jNwvMHgaRL0OmUhLgN2gZda4uly8T7sIB
	 elSE6eV6KJ5sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF87DCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840423368.7950.426130164251636913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8caaccf70fba3cd33f337c91fb319ce86b8c5c615aac897ac2d6cc8ab082e3
Date: Sun, 10 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778404233
