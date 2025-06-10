Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C037528F503
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749558593; cv=none; b=W9+EC7fTfr6JYiqxp66GX2qoLn8A4XA8h2/NLAYdg2Q6twG2/XosjOrwDDzWqWkCegFFJWmqEWW2yt2IllllmzJ7ghWT2JdXObc/jP09gzkb7p5uI6DEv+0It0D9EeLYtMBW4OInkVomhPJDtnTOUkZBgz662nps1G27qM4SgNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749558593; c=relaxed/simple;
	bh=8aaLFBhDB67JpP5TMNIQEqWhlVsfDabPIYtMXXXvV+M=;
	h=To:Subject:From:Message-Id:Date; b=BEDgG8wXkJa/mXiz+QWPThZyTtQxmL1kEliI+2d8y45XTVW0RqQjjIX2LBB/CEH9WzZthPDR8HULyjaltn4/kPh4JBQCCylXWqjgf+kuVrMHVPZpgi8ow8nbUnNk9+Tsxyw7d9o8trbVvQaVhohpnH2GV4Fi0WljrIwW0h7GZNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6giweDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6giweDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AA1C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749558593;
	bh=8aaLFBhDB67JpP5TMNIQEqWhlVsfDabPIYtMXXXvV+M=;
	h=To:Subject:From:Date:From;
	b=R6giweDUDGAN1KifJAQwSmbb3HAkMMkBR8NxxzVF6uB2jNw4mntJ3Raw5NwDPrCF1
	 L8zdYAHbAVwSj0WQO8/RPYu6ii1V3+8KIBz7ZrwrIdCiqozxeiwxibCJXfitSHFIH4
	 B5oy8T3zhahZZrKzSFI9vpKFaFPsEg8F5SUNJiwTvmcx166viXWZ8DXcJrelnKacZX
	 Y6qOEHWOzWgLqVHsIo47HhumIZc2+2IrX2xPMsfFJf3zuq0oJET7qK4VDuk3ZPDlj1
	 q8oP/+MVKmPaIv8ZcXu5w8MJCYASSun3LaG95VfhyuvlchLv49WQqVtx5LBWetbm/S
	 XK6VfZ+nVZTVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912AEC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955859358.6090.5953192669720843064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd1d2f45cab88bfe1619a91b1c4b1f5c651d670b6337f47dd0cf15d1df99d21
Date: Tue, 10 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749558593
