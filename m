Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A0417D2
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716704063; cv=none; b=spV6T7csz7g+pfkqKWOC8IJ01NokMBgasqG8D5KKnPh4MjGs4GgLeUACZ0I9VQCYb+u6zimGrPDLApXZkG9yr0oogttSP62Nacs57jKCLn5ZvBDQ8DKaMQmbiB0aPBzH9riISomDaQpoJy8CpzDxBRR9LAVotPMFsXSyQMjt9Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716704063; c=relaxed/simple;
	bh=0i2YxDzlVqGSzT682OxG2rLnDxTcJV9U+jApbJRtiPI=;
	h=To:Subject:From:Message-Id:Date; b=GHvarD43Xywb/DSenKPOUv6X58x71XK0QEGI86PzcIp1zGTZ4LRsXvRstj1wnrofoIh8Ix3lnSqzXu3NuWlCUhg6zpPTd7KwMi9203uc4vdyoHCf3EOwtvOREv+79zFH04r1Zi64aMVGFdt6Mbf9onKq5dJkWbrUFZKer0pDN9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oroBHYtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oroBHYtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CED0C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716704063;
	bh=0i2YxDzlVqGSzT682OxG2rLnDxTcJV9U+jApbJRtiPI=;
	h=To:Subject:From:Date:From;
	b=oroBHYtMv75KjNx31qgtZkW7eSSifdZyKQodZRv5WmP4POyu6+Z/IqFj7nijoDVoD
	 rjIIqzsUBgSg9ZexMEkIIxrYcfeVjca60LNKMO+7RILP1NHzD6Qkp0saxYN4zxJxKM
	 FrG/UdAARDcTikCqVBTp3DjgvHXj1yHE4KQs2aOaAEnHQ97Zf1idtDRKBUo0Ah4WQ1
	 k6XQNv92i+dX3e+9+JAMTRBHo5RiTDBITxeAIIn24W0KN9fX4kg3+zgy9PK9rgoRX9
	 Rm+OLkbsZFk6/Gzr+cgUdqudo/2iNg73U4fD9at4Vd8fwQnfZE38JkGrgFIgO8mkoM
	 gCCRMD3sXfszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D018BC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670406282.1782.16420465857310092594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb871b94011929e928c2a4f337029ed0803de24af1e0877b38c6f3c9b2fd0a9
Date: Sun, 26 May 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716704062
