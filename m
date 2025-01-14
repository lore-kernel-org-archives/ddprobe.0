Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E14620F97C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736898954; cv=none; b=I8wjtZEv4+T9fkYpIjybxEsRamkTM49ex6oJewWZqv7pl7YANSvmrPSXnsXtQ364bT+Znc01GfGjRcvThQTjoSEIYaOG+6y7dy2kXu3Lm/GgyDP08XYapH6gfGsgfJ24ilRf3uvzGlKx0w1sHWblvAqRz8uT6oxCxWJmS/I5eSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736898954; c=relaxed/simple;
	bh=GjRSXKBBSFKNlHYNYZ1nkJ+FvtE3wFDx5EKc07m+9RU=;
	h=To:Subject:From:Message-Id:Date; b=LN+fsAuZXHhKSytrj7vKtGzGhAo1IWjh60VvDir26nk/9IGX1mytaSY67yAjUw/e9b+bRHvqtoGLcVi8zntk+NHeGPg2BiIAAJH1UZu+9z4kyuKwApmBScfSCmhIRgoilAoM2kvk2HFP79PAlhqKA36fIwEJiQ25yGJA1xKqiUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBjppOjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBjppOjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22C8C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736898953;
	bh=GjRSXKBBSFKNlHYNYZ1nkJ+FvtE3wFDx5EKc07m+9RU=;
	h=To:Subject:From:Date:From;
	b=KBjppOjjmAgSqsebZrjREA6r+KttEWEflhPxg0Xnjr03WkWSkkHZWkEsE4AMKZvY8
	 kl4bznooYwXQoqj+u0nKwijwOvpUCb7MzlPxjcyS5956r5j+IcbiHlZUhd4tiV73BT
	 sxu/t2Razyq03GABRauKiZRYYFFmPl5lYF86+kh2Cl5Qo5RY3Iv4vFxevpODrWxX2Y
	 g1+0aZHk+7EhH3cQaPt/u9Y0Mo9qyBBqk9YWDrN1rmNanmbbWEeEwZ5IFN8/xTdtkN
	 Gmr3aZZ0PaQRMXQuKLrOjhc+YlfTxCxwv5pvS/lMOTaBsyoz24Q92SAF09LQ7HTTl7
	 PqGKEuNFXaFxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0ADFE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689895361.1018.10979461898683040533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a21bc5873803b7a66ee698adf31b4337c66844f9c24534c03cf70982b209fc
Date: Tue, 14 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736898953
