Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536502DB7BE
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784677114; cv=none; b=i6xmKG0UKdktsyapLA2wLuQcJBnAgULX7LuBCi2F0Pl5r9JxEB7dMFXvIaPZ7RYfszZZuiA7Iw3b4qByiD9d+h0/jYtCatN5RFsdZYMsWlIvuB1cN4AmQQ9fvSSPqWA3670aGM6t4h5gkMdAGpmeZLDnK0O2FAR5+JFDXCGsDfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784677114; c=relaxed/simple;
	bh=jN5pvfSsbhDDZ16u2wactVra3HbZKF2c7CHigdiftUU=;
	h=To:Subject:From:Message-Id:Date; b=geyfg1n3goZ3pOnECu4Sa5Qjcp/RINTLm4vaqG6ahM2ZmCNXT6ITv/59k8dkFJT6bfq9qsXNdOs+7sv8M/jluCEk5y95UeBG4TZDKaQ+z+b7DrI598NeWlEm+GRRsznCb5NvDndDKvxYX6IvMPK0w4lNj6Pd2xYZHnL7VBg1YEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zu35K/nK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zu35K/nK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B2AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784677113;
	bh=jN5pvfSsbhDDZ16u2wactVra3HbZKF2c7CHigdiftUU=;
	h=To:Subject:From:Date:From;
	b=Zu35K/nKmxSozAOO9bot1WXihIRoQiLSHFpKhEeSAw6yZ341PNO9/51k0LwgWhk+l
	 lHNqyoCaQ0hYBenPsCU3h/xQeoeO7pWzOg0+ffMMubyXM7dNaGHbg9Zq3jQxoTv+cD
	 lloll9LwNKsXm8f4Bn/ZrEdrD9aXPDajYWho3j8m1uE4qz48i2TgnBb0VTdg8gXrJ+
	 y/iNCOzXZ45pODnys9P2e9SUtoAuCsQzaxJhEvG5uFpuYySSEXL3rnNdMm1KFiKyC0
	 l/WbdMC+5EJaCAqBWCokZniUtoRox8D491KYc5buaskJN8voQz0DQbHQwtxMeRak88
	 +et4NOUL+S5CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A995FC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467711368.13511.15127943447515780839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa7e0f1a34e0489ecc326cae2584df8dd0b2a45f7557441d2e4d9ee7e04febd
Date: Tue, 21 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784677113
