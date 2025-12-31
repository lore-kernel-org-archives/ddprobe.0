Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28045248F73
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767180234; cv=none; b=MazzWToxBRWQuVmH1QXYGYSri4EsGkeSHG9cK6kLCo2MPwO/iX1627fyhl7FPz0cuSdja29kOXk8mQGGMxFDiLRn/lAR88andPHrdZdpEUeLZSSQEsMKPWvMRKrUyTLao0LNLOu0zjJU9BVkeq41o1JNEJKVjNFGtP7oyerZca8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767180234; c=relaxed/simple;
	bh=65qfldsmGxgCitwCN9Oujq4boIDKvGEQYuNlTcqTTSc=;
	h=To:Subject:From:Message-Id:Date; b=Q2W+8W5Ngjn2r25rdKFa05ceLebAHcmE7gJWZlHmBFE9txchAmrwlLVMVu4AasOoWcRgyouyp00X0kt7XgJR4/kIM+VjXqXz1HSVOCwlCOgkQMZo5QDdpi3/jluLYC0exnnlo0qR0SwolIHblyasALRt27wY8P+X9PTiwZBojW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMaj1nGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMaj1nGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1778C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767180233;
	bh=65qfldsmGxgCitwCN9Oujq4boIDKvGEQYuNlTcqTTSc=;
	h=To:Subject:From:Date:From;
	b=EMaj1nGAs9FpY0wfxoR/YAN/e3BZxl8kgkq2KgEqTRe/GstaILEWiFPdsPAC6Qtic
	 W65QkWx+yECWKW+X+ua6DYp6EzYaXyazeWwpfTtc9dT6Vwfr6YS3Lr3wo0FxeIxhdv
	 RV0Tvk7jS88ud1G6/M3ude3NI4cKgmp3ER8qGyAev+qX99sottO0yYjTtp5xVY10TJ
	 s7caRlqAexvWyBR66vIHJfnErjPohAMF6rL0p6SNNyVbb9uUrX4e68GdLpA759JtOV
	 6W/iPE1sHRHw7zEL8a4fCf3j+4fG/EOf0yUPgvJEG9eUhlo7qpnmz8TFER+NSqQ6iS
	 Xb9zR8euCE8yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3AEE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718023357.1886.4541721952424294327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d07148bf11539427a0e4a005b8a654960fbe7f10a4e5774697a6cd585593bef
Date: Wed, 31 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767180233
