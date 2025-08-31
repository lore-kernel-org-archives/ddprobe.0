Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078BC246BC1
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756634994; cv=none; b=jeG3tkUFKmMce3CtAZ2rLhZjfeSi641t9yPLXqul6AuVRqkbGLAUNjX/DGtsnAccnApcu2+NmY2vK7nKjVtSlSNwgB7IGVDy0jbpj1MOOMxw+50tri6oDnSowB5oLcl3WTtA8f/ocCpxPMM6Psa8/AWjm/vzb9XLJzeCbpVnTG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756634994; c=relaxed/simple;
	bh=EFaQmYoI64MyQkidEH/w3wyqIKL0FihwHFHJoIl6qCU=;
	h=To:Subject:From:Message-Id:Date; b=bk6TngzoacxGHtbj0S4BxOcSPh3lF45A6WWTYUtg1DdPIUzm5IP3FW/50XmBUzGdsE/EK6xdeMxGhkbaser7D3YIloiGg6AkoRibKO7GA3O/NVpXeQZBIeqLkFKpouCMduUyIhpLq7n9SI8e9goUV6UNGI2kqCxytTR3nx2ZCEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YC/DM3UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YC/DM3UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6095C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756634993;
	bh=EFaQmYoI64MyQkidEH/w3wyqIKL0FihwHFHJoIl6qCU=;
	h=To:Subject:From:Date:From;
	b=YC/DM3UMpGgp+RVhGtOzr/9PTI0X6vbOIDYm6bJNV2CLMgS9C5BPIPF5l3XyR/3Y1
	 VtGg3V13GN3NY0D9jCuzv8P/BK6IYqLEY5l9nWg9cMpGOfDh9gtzpyDH2d2dSM1bzK
	 vVEMRJ8jMXQK0YNtlbICAewUlxDpScnT0Xkffvnuxgl+WkJbU/UX+fLXHSbhQ2yjv8
	 Yb1EYKt2z4UQsp3xOouEqy3JDwPwb45ESQwqQJBesj7nCcUk4Jnm0XKiQPjtK4hBHT
	 8fK8t4irztc0Q3Yt9Gr1GuO2038EJsoGNbkeARRnA12XJwKNqJJBCmmyVpAvztj+SL
	 0uzsPZvzatrvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D9CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663499357.16463.1381218095361060637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdca369fa7de1075e141b3752a7260c10f6d3b0dc3c22493566fdc80b3e2ec7
Date: Sun, 31 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756634993
