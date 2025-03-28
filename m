Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0444C6E
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743137394; cv=none; b=KcRB/44ikP7bVG3NFWeED5wNIM+kMmzQ26pz5tmi+7wgqGT93oVAkPWhdpcQNovuHBz+uKmkBuJCVfCn1Y7lpdbVpWDLy3NbF9JxSCdJLboiJ7zmKRqh/D2hRlTR8WbXHz+Np5Nd7ck7nYuzS+XjsDqlw53uTgoJ8rmSaL/sD2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743137394; c=relaxed/simple;
	bh=o9fZwd1cz7Orw9G8jXDJ5nwmbhO/qzLUNx6IPPp7O+A=;
	h=To:Subject:From:Message-Id:Date; b=HEuZdiqHeJnw1N+U+Y+25Mgu1ZizaiK6UNI/jMK/Z2esYV/UIbkKAS/2tWmKkjEgXV2vVvOKI9QSGIlns9LQP7dBc3HguZs6RjXjwbDg2sj5CSF848jggplB04sWmKcBAbKOIYPrQkxPmLNvXN6ylyVebeDM6WaA0hj2POSqk2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhBbpaox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhBbpaox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9CBC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743137393;
	bh=o9fZwd1cz7Orw9G8jXDJ5nwmbhO/qzLUNx6IPPp7O+A=;
	h=To:Subject:From:Date:From;
	b=YhBbpaoxNpf/CKcTAIT5bDOzy+7VEKoQirrwRNeQGYzQSmjDpUjY6xg6ONIwKc9dT
	 QDvNa0zpjoXS8LsS8iJI5UcWc2NxefAbSd/XsylQijeNHFueDaUykJkQO5id5GSKOH
	 9cOfJu8Z6q++T4MY2Fdo3OWQ3tcYDvGSuOiIRSKFjA59pMbD8Ji5mhFnHdDKzVurLO
	 jXz9qAfXIWNcPvUsprUmUHu5JPeJgbSsPiH4mcTzyfXHMXe8QH8+1MQbH5KMaBg+UT
	 svhOgGFRobuvGw7s/djVYGjFCPK9j/VmIkAYSjpOaByDFnqN1s0kUrCzSo1dxFLBQX
	 UTDCpa9e+mBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A190C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313739362.20251.13109572774511879258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ee2cfc7160b7bb07b8200984f40bad35e1bfe0ad740e1b52523dd749fc07b2
Date: Fri, 28 Mar 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743137393
