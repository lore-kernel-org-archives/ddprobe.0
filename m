Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3BF378831
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770099834; cv=none; b=m9pS8Bq2mMcBsnQPrFTG3A3wI2LTmYACmEYdjOFhN33qH0VmeZOA5WNpZYSLfqVdoMbDX34ESGIl1wLw8Q1yjVB0GVJnwg9VuoTC4GHfIsBNpbPnpEhJpXFNuiex/fF92cZ/R901dl5uWUQ2h+saxxBHXLkRJFtQW8iVfS7fnmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770099834; c=relaxed/simple;
	bh=7jhUb3i3BN4cdRF6dgSbvNi/X6I2XNjGqAe9GJY+bNw=;
	h=To:Subject:From:Message-Id:Date; b=D8ZY1IGyYT/QbYErUxO/yYYm7ZG3iI/T5SNiAkBAPMfRY+kyvq0r3+DADHgBbcyPE7EPcJjrVUXud96brfsAPVWT2gIhXRBQjpFpMfaDzXNz4NJ3IRm9y+US64QYcjviP4VX8h3haUYBG4vo/XXI1IFTANmjdjK9Y8cplpfDxlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8uR046f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8uR046f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2048C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770099833;
	bh=7jhUb3i3BN4cdRF6dgSbvNi/X6I2XNjGqAe9GJY+bNw=;
	h=To:Subject:From:Date:From;
	b=F8uR046fCtQ20FghyaVMfa9Pjz3mIHFh9bvM5k+/4wz3deDsSXOGhCyTC9nBazlyw
	 yYaTwsnqhG+GvJ12LQ1Xw5gA9jo46VPmkV27o4p0e8RWmbQcRxx1BMS+h12aNXm6x2
	 0ezn3MgafwPClHKDV47AGVOOlifovq4WXeH9uwiP8sCeOqST3R4v4z7ww7udrgOsDA
	 gO3AVkkWQb0pUsKc7BEwc/BLXPmvuSajBMcNh+ke2GeiCwgRvj2G7iK9AxxSyGQtWI
	 9IC9GBa4Pd12OhwRLVrSB4uhlOfAKcaLegniK4JE3dbsJ77JOsgPnO8JobauKvz2YZ
	 j+yzVRnjimmaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8303E83057
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009983367.27586.5750932236099931601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a7c3869757508a5b1d2f43ce568c2ba6e71011567772ca44858da1a177d288
Date: Tue, 03 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770099833
