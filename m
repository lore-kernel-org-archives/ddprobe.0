Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326A830DEB0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767693834; cv=none; b=oDwSr9TU0IElSxoZTKzYiuROoEH+0A+rduu/0rjRZrQjPrO4Gu+cbiGP3alXTYeqEEJ26ZHaYtbp/XHvduD7vmYifgHuvpp4+DwXgF4B3bvNrApRqZgI1LJDIoxFUKSx4wwp+t7BKiZ2D0JVpvSBiWiUGeQIc/e+icRvJjwRuhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767693834; c=relaxed/simple;
	bh=kpJZYvVORGNitvAEulJJgtN1w/zdO8zimmGhabX1Ugk=;
	h=To:Subject:From:Message-Id:Date; b=io0KkXADkR/LAfPsYb+2zNNCMhGkdzN3IXv/RdvYJiHMcXi50GBnE/26VGcOpDFrt9CNwmwAgT1NJniQq5xX5g1UAjd8Pb9NISY7ninsQLTsP7dCsQ3HmYDU2I0StFhR3szJm7TkhWql4LyL2Q/qoBcgLPtM7/zSgZcLgQ3+V38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ms2Gkvh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ms2Gkvh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243DC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767693833;
	bh=kpJZYvVORGNitvAEulJJgtN1w/zdO8zimmGhabX1Ugk=;
	h=To:Subject:From:Date:From;
	b=ms2Gkvh9QEol1n/K/sbTkCbVpC+ClIrsyoZgxRZNoMcKS4PGQyxVKEdjG80S2mADZ
	 vZxLaQd8AWZR77s0X7Cxhkm/jQgUOyfzACxcNK5/03gVp3il8B6OTBgnrJNSFq4aUI
	 HE1VbT4xd/LkqeoFg+tDPDOb8UV9gKN9SWnpm5CFF5V+HIkVtgAJ8cdvlCRZ/t6tcm
	 FvdnoyaseONjdjxyD+8yPWiZKANT0iP91ER6s0ZrhfA4dB7Jr/pudoaJCLuv1Z/lPT
	 2ZgWV9pni3rhdYydhEeR7LbGLBPdjBxmPS8UfIOoYaTa1VFm0v3CHAAP8DCFvkthr7
	 pnwEuSleXwcIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BBC47BD8
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769383357.17050.14231328309319698991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3485430c4ad5810cf492cf98bb59424f9d4eec9947b915ba0efbd2bd339dbe
Date: Tue, 06 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767693833
