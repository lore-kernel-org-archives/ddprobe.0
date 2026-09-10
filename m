Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4D13C13EE
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789032634; cv=none; b=fNZiHilOMIe6vcVsLfTxp7e+G2Abil4gwRfh/p3A0QeYYYiVZxW9wOYZRX38bj5WZouAXGG7ijV9lUYQHpR0JgSqxyn9Px9YOIQJ2Cto4n/19hTIEMOwAYUdrwCJoUhwZGM14szmQTxpBinRaFU9UYcJo8vnBx4TJGAff9c9LyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789032634; c=relaxed/simple;
	bh=1Rl2wQ2lyi2vA54S508cZHqM1TbQvIHtdtA2vhCL1qQ=;
	h=To:Subject:From:Message-Id:Date; b=aMRtK9Ru6wbh/axB03EDwgtv5qvGEwZALewm0APa6M6ap3np4AcZFamQRddQv5ZGCy/m9+eh7bDMLWA1QYSMOYJbRImmpi/awz9cVz1T9UArp3dFwecrfXycuJQLnMQif3rzgL2jPnKUA1lReu9mekKeXVyacfUe6O+RHCAOvA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxX/WTt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxX/WTt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1A2C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789032633;
	bh=1Rl2wQ2lyi2vA54S508cZHqM1TbQvIHtdtA2vhCL1qQ=;
	h=To:Subject:From:Date:From;
	b=OxX/WTt62if3d0Z/WyCxjGdJERi1e483a5mQLxfnGKzFGipmpIJnfIUs61+HxGUF/
	 18vX5WwuUsGWa1n2fZz3JCEExVVrrj1+B8yKuCTiQlJm6XPIRrnoF9uS3A/pS2GjJj
	 oCKOUEcZR4G4z8xQ+QNwyRMA5ASzxFbc1GhXzFRhl0asO+NcoDUjLtuOx3bgTMCK8m
	 gKrIz46KJsVy8/c677Ad4JTO+sbwxCL/RPzCpHSbWYg6h1Wj6g9xvYX9x+vMR6TUQo
	 7txVKkDIkziKs/IxsYiy1HxVMZ93uBrBGszNpFd5i3H5dmZtG5DcX0QKRYAzDii1XQ
	 rSA6770fiTnkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA377C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903263374.29807.17591614448893571636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c14b8f296213f2df71e3e9dcf445f256e7a5e4064d7791b1be4a3c818d6d3bb
Date: Thu, 10 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789032633
