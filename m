Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AE539E17C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781459794; cv=none; b=XyIyGvw4vPsZvYPZVWC1ryG09nNA7SLg5RqsCKVxSu857amZTSJ5DcnV0mvVsEwt5v1xyXHAwIgjGjeAaaMrLboeiAgEL7bSw9sfE4gOsHaQUAp5LEW6mJ/k/qUZDOi+rJoiI2RP1WRNRPCY5IIGQurBMxEyOMFa3Q9t7K4IF3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781459794; c=relaxed/simple;
	bh=dvE/U1J6UlO23q16dsuWb61497HMUh6Wgd0oCXlTpaE=;
	h=To:Subject:From:Message-Id:Date; b=qRJexOfEhZ6BaSqmFb/MSWS9gpyVjeAYfCjqkGCfqQS5khNulBqiwUGV+0NMnP5bzHIju0WA6NrhU1k5nge/qd5Hm3NbufjvJlzR6v5oT4SfgbDZ/mY+qBh7HJt5AfI0vMAslGV1oVzS7Z7JoxWBuR66ZM8G7TBrORECzKS5Kyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQRgwc9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQRgwc9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD3AC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781459793;
	bh=dvE/U1J6UlO23q16dsuWb61497HMUh6Wgd0oCXlTpaE=;
	h=To:Subject:From:Date:From;
	b=JQRgwc9ZZSK0ke2KEKAJgCW99Op2xotAy+abpPJbmCNcnunqaFrO0scDMOjrP7znh
	 7tlpv+OTeppzkMk+Cbvay5oXIlQ4AmAxv7hQ5d1E9ZXqGGK9QVnFtknG5Oq+ibJoho
	 32JEexYO8tqFMDOdxT2cSCtatpxO5/GN6o0N3LJeyWvl9pAthbqRRZTr6S6u3RuD2r
	 UB5n3gG/x6EfWIlPFNtMfJDnSbJhmlGKq1eeZlNaA1+hJttiIGsxkJg9GBV41DnAEs
	 NnHZ3a1TmARE3tgKWF4tRVcI24RwS/o4Tt/lsuP5rCXh+WCzDt0goTgAV11yYtxrCY
	 NDDeW2w/ch5gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D21CD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145979369.28513.18160849500232366695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2af5ff0aee098b57ed62a5e1fcfd04e739e0cbde074554dc712b4da6f2795ed
Date: Sun, 14 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781459793
