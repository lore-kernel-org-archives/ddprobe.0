Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0342874E1
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751542794; cv=none; b=sxwuDt1p1diAx2+D9YPGUEcSJCxLew7KuPEm9G0NkzQPXQ0afbbSQP4YA5oMv9jK28jms8lkA6UQ6Ap/JUhc56Ivw2MrbSQtWKW6FEVgi28af+fYtumaX99znRuP3tbxB8aRgilQ+B0OhZPMRQ8b1ua9viVf3SZ0ISZhP9fIXMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751542794; c=relaxed/simple;
	bh=looGsAZ2/XJUohu6hZwzB9hHdBglUOTvBEwimyUbivs=;
	h=To:Subject:From:Message-Id:Date; b=jSZT558bLVEWt3R2lsBiNIs4Iy++OSG8bbAKG31Se9CU/uztOCpNUrGSztJANHAqh7AnjNir+wdhD/Ola+dAQFZEWkzyHnHDPzohAr6P3ZOPPbawm5nqJMkupKgs/j6ZuamB/dVJwpG9o9cM1ROeJ7BVxcNSC+L8deDyV+jzkSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBCCa8Go; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBCCa8Go"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C49C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751542793;
	bh=looGsAZ2/XJUohu6hZwzB9hHdBglUOTvBEwimyUbivs=;
	h=To:Subject:From:Date:From;
	b=SBCCa8GoA/ONSC955m9W8lAQEUgWhZLSCFB3Rb+M7Cq5vNvMWKMQTMRqW0M3unxhi
	 PNwYEtG1up78gp9pXmG/h01SFdnAC4w64QmnufLRCVQubRsnlkAEjz4J6AS8UQHKwA
	 wOD+ijuj9TMya9uXUF1cuXToq/uqQ+TSXiB56sI4KSVVrlym6CWhhpPyq5HW4lewmt
	 JVbcO2RGICl4/+JEz4ObNq7LND+TlhDI2G5Rj0zOFH3NxA2FUYsTj2Aj2JDO0aa+LT
	 DRLplS6t1KoHxQTXuhc2jcjaIdP5mu3rfX15nY1FtUEFUzVC6H0wv8KupesTqfv2To
	 sA+VwUPWiFFaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECBC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154279357.19288.5268155233581381125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655247df3d7b57f39ff89441319447060f0cfd70c586b93a2c7a106008fce1ea
Date: Thu, 03 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751542793
