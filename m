Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2688523909F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773612294; cv=none; b=gJ5Sc7mSgm9fIP00Jf/Lggdq56+d9CjdMZE55Py+gdmknwbuI+AJMX9FFoa2I2xEY2Y7w5uuhJosXzDXuhSXIgdyvMnQyGhujbV9m/Mm48Sy5A0rcfs1FCMztRg9gI2hoXGHopiBJ22J2ykFTfZmPDhDineGccYMBtac7d5oLVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773612294; c=relaxed/simple;
	bh=LHfS1qUgat8183Tgoiy89jV2VqBQKIQjY7YPz0xNAJw=;
	h=To:Subject:From:Message-Id:Date; b=Ah1vDcFSG6DMzQ3zyAoQyCV98IZpvIIOgHU3mRq8yUsxb92HGP7IRsug//sGU0MUcPAFrWUuSwe8IC5sEbHEnQzmLOdgBF8MFdGWzO5Hif74GOgLudtY3wO7NUDEdD8rNuMj2Fw/8ONk63+zjkPKSmXdjT1F/6OcMW+dvMkrJVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0fE54hp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0fE54hp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8449C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773612293;
	bh=LHfS1qUgat8183Tgoiy89jV2VqBQKIQjY7YPz0xNAJw=;
	h=To:Subject:From:Date:From;
	b=N0fE54hppbOW5+Nc575MonvUcx8u916KYovRaMVSbZuPhwVKCmghQikCpd4aWRPRV
	 qIez6U5kS5A050xbKCJgCksHB8EtI5azutwgjrO/tkYVcZ4Hkpb8FrzdToSsmbczrs
	 kMip6N9m6zZCBhNdmQjzcOQw+mjAhP6fmZvhRaTThXy9YgsAh+tpBz4KgM0/riaNj6
	 ikk0XZXAWJvBg7HS1yBMoUTZdzdTh6g5/fHEjW8xhvbQb4edxGga4ja8guOOWt+rxo
	 OH2EaH9vm1PmIk5seoCknCElN9YOy0DOdhmvXQtaGXd9/IOc8atnd+MpCzaFSWvDiH
	 vjIXXeHJn5b2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96848F3028A
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361229358.4564.17398777056989079876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebefc7fb4ce534fb8507e43ee701d995aa15f321f8455580ecf8a391402f8f70
Date: Sun, 15 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773612293
