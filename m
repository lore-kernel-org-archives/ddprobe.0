Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9D819004E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758469194; cv=none; b=C3gCc3Qw1JTAPUaZojfnjKRsPT/LE7EUWvGv3/6nzSGU+KMD7BCMr9u8bf0y0anIpiMdaKf9ggTmGUDHETQ7IzQZTlKNMapunrZ9V5cmazY6dJm/vKJI6yXIee+tMfaWXcbPtNUpXAGLmwpJN4A8GBKfIT1KyQyr1G+i0whCA3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758469194; c=relaxed/simple;
	bh=dx/KutpmAsQ4halSfDifNpHXhcC2UK6v94plYOBmMqY=;
	h=To:Subject:From:Message-Id:Date; b=mDJR26vg1ZONFrHlUtjzgtg8dldY4PtQHXX7JCDVN50wYAyB6EYGkeWu2oG26N7TE6c004jQokeLf/DaDAH00Bw705phY1SpmMl7z09OycwumB7SEbsFg4kK/LqqAuRVQO6TiCO439vdBSRVY+JdHj36he1D/FqsnSr7IYJAlNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWk79LPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWk79LPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758469193;
	bh=dx/KutpmAsQ4halSfDifNpHXhcC2UK6v94plYOBmMqY=;
	h=To:Subject:From:Date:From;
	b=eWk79LPcC/Q5RTjH/m9PZNRpRfo6uh5g7b/inAb/3EEcS2QbKfYZIlt9h32SYNJnw
	 FHcF1t4fxFN1nw+wZjBlsq2CxK9+IwsJ4B2OunyVzG6FGDPQ6QOZvbcqBGrvhHnrow
	 keQUHAUGvMaj41lEHHha52Hk68vJizIfCqpB0yMWY4F6wq3Dt+9eGb8yocuVJKVOtp
	 cDEdDCrGtXhyqmeZglxrmaFRJg4qCsmHd1G25mB9knu/KUrXe2aIdxXzVjxwSIkmzD
	 Dk2OWT6F+WVWGXU87TSj2bXbf3M5zSepZ5ehXUG76mC7i2QCvAGWBSPQ8ScvAc4c7C
	 WUxr6kGQCGG1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393BCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846919358.30433.444813452822914420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a72e3cea9d081e757ced8581cde654205ecff82079fe91617f45b0976bc7002
Date: Sun, 21 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758469193
