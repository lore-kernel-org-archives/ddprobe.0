Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E75D37DE9B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784684914; cv=none; b=UKQcSNNkTO8ohdzENVk5TOs6nh7gZCrfBuhUlSODx2Z85sbjQRYozXKx63yR+tqGuzra8PqBRcca2UzNk2bXuxVr6t4IIaCvkGWN1el5YiNSd1U2+MtktKB3uyTAC/TjWYGSVsEXuAxmNCGfogCA6j4bbh/Sw2Nhh5A6AKdByPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784684914; c=relaxed/simple;
	bh=gYVtbADWdEXCo3aB3AWrpa0p6dFaaMQCIZ+VrL8DtFU=;
	h=To:Subject:From:Message-Id:Date; b=m7bgO9UP6tbIQm5FCcklzWgLiZ19r2qRpChtc9HGu4zcYKCI6fhhF7MHZ59C04SXgoTdpXuOh23uzH+wkQFPFai0t1FLNr7g7CaEOPmyn1FWS626cwhYNxhuWZPHFSE0vrFA4sBKRmsSdWFFWyz0d8a+qr7JeXfiod3SZkOFAVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiI2nxSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiI2nxSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC87C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784684913;
	bh=gYVtbADWdEXCo3aB3AWrpa0p6dFaaMQCIZ+VrL8DtFU=;
	h=To:Subject:From:Date:From;
	b=SiI2nxSc6mUxqj0f1+oRqZi6zGCYwO16tfCPK7YchkqQnwCbkjOXuZkUBJh+uHnRT
	 ww0TdH+gJzfLs0DjSumeM8Qm798gwc3SnVQedUtNEyH4NYSX0IxpvxxqgXmRDyor9L
	 R6sRyfskGdNA+5HJJSvHrVH0MrEkFgYbvM+Zba928nyzZfkvJnFKJIxx4aqMjwZRyW
	 IkEsZNuem4s+98YnlSsTKdDT7r9w5WzP7tlP4gtsSN8LeqBf3rUJUU5PYThgNELDqo
	 vJN3y6ZK4s/Tay/SWTchlRWIsP+dCMZiL/Ko9cFKacUDycfDBDI3bOcSDLWSplJ+t6
	 tV+onTEaJMpFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30ADC4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468491371.3236.8705354305215941786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429d36c7a8620c3b3838ee78c6e6c71b47486c7d2b70b01c49b9d849168f3ce0
Date: Wed, 22 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784684913
