Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8533AB285
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787070034; cv=none; b=OWaenhUiU0daXHMzr82Wim8MsUqha80L03REtW4kySv0Nc7HNXHefPZoc1TuNTWjHeiNZ4rgNqvpBss/KDPTKvKjgcR4DXKe2LJrddodzEUc/ri8avXB1LQm78Z6i4UIQoPi8jRmi+8hiMeQToLl51Ic3iOlCOzTyyUZbAt9RZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787070034; c=relaxed/simple;
	bh=prU1Hz7JNibc4hFtkXf0mJ9CSRz8MP9PYN/qANRay8Y=;
	h=To:Subject:From:Message-Id:Date; b=GunaBKOE5y/huVzK9RzjUDyy6wTIYZ3aqAMIc03LheNu96zeFjshqm0zPAgqfnmdIK4n92UN69+bSuDxCKBDZNVJvgYgqRUs1ATM2R3xCfGtyc54wuCVxwnHsVCp+UOoLUeYSLsT50V40ix/vbxAD00FQLWz7vGSN5UFnPYnl84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpTvd5NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpTvd5NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2F4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787070033;
	bh=prU1Hz7JNibc4hFtkXf0mJ9CSRz8MP9PYN/qANRay8Y=;
	h=To:Subject:From:Date:From;
	b=JpTvd5NRtNHHuivTJGpCuAl7E0SvzeuiN+zskli40qgzs8oqwoPvQmJfz+GvgLVcs
	 tft2eIv1RzFcM+YwN9kpwS06v9IItxO/8EuSObFQvy0Z9+XTuD8dP2pEby9pr6TuTT
	 oV59p9M7JB02WBorPRG96Gbq5LNV9xX2XufsbfpLJ2E8v2kw8nf3astbrJ8bdZ41DQ
	 VN8aYlZW8zjvpW4ohDQTNZ0dPoZU5YhU64ny8q8dOw3loh5cgvaAkn3mzYC1rMUm2h
	 xexTfzTfKGNZo+df/dexBlTHvByuj8Qknl4W+MvGCh7ZODr3P2T0VqKXLWA31A6PyO
	 +c7Id0Xa8IK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB966C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707003369.24241.4208722536471836514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1940c8b0e06993a7e05f6d07f18fbc997bd646f9f4a15074bce616794a2f3b8a
Date: Tue, 18 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787070033
