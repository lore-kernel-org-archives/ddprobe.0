Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371F52D781B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781174794; cv=none; b=WkMXuFCTaWJcBfPt5mGP5KjckrUu+fH8ul8d/FBnr80w4EFLYUN2a1RY9JCFuOTDhgTkGt6CCCSp3Xsqq2H5hlEmn6Rsyi2LESyDDvMcIqgOVnNP8hq5ribh0tqJ4w4UYHGONgL3Y9x38Myr5nu29zw0wWmPGNQrXTB9VItZYvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781174794; c=relaxed/simple;
	bh=QWtfvRsG8cwZwGsohZCA5QAaaSrNpvMujZeiTG3J098=;
	h=To:Subject:From:Message-Id:Date; b=uRbE60rdW9g1AjV7bo83UFbnlzdj5qDloQeXIrP+yEt5H0lj5FJ8iuz3yaX0rgurN9b/Xyxt2E9eVHi+2pbWAr4Uka7CgyQ2DxwrBahbL3UbptUibIbAJ9iYLs52A6cmEwcus5gf50dH/6qvYPx2veSX+zwJDSE0W9yTVethFDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJS+47oP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJS+47oP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C397FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781174793;
	bh=QWtfvRsG8cwZwGsohZCA5QAaaSrNpvMujZeiTG3J098=;
	h=To:Subject:From:Date:From;
	b=LJS+47oP5bRq9ld2M1PV9LjrihLEKHG+osz/ToY1inAAMVztgdTYGnQzeeiIKaD5L
	 rVTEEH5xJPrBilDURnlIhn0ra3rK0bB70qT7mMQOSoZ5Ytok8AbC3eGtvEH1EoVdCd
	 z2oiGXPWr6Je6uDG9CxjUm83idWN8p+bhjpBrCh741e7UfxhW65EmfN+46iwmJD1Ra
	 02eySoVjNwjXKZ6GJdjx6AN4EA+OfrgqLFBomEpOoVKiUoisN91ncDNLJPiCCHYI6H
	 odRFcWMq6LEMOdQWfozcHIRSDnY2EPYXWPGNNw57QS1OVcTZfrlJeLDIrBt+HOIWmZ
	 r/4Im5jJPRBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F72CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117479368.997.5305568970892479662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffe14fa45197e72a03b19d9892915ce0ae4ff12b0303e07986ad2f1f2d0963f
Date: Thu, 11 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781174793
