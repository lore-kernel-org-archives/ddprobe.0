Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDF0224D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744598994; cv=none; b=NxezFmM8V+ulsgLDsbHzenmUL8Wuc0i3gr0ZvSKX7tDWlMH46/AX91SiHws9YaT02Olyv6rv0XnQh1TyBOiARqkVDY5xioYtZHOxhq1tmOfnPF7ev0v9PZT5jlEMvBgY1cQ9TBI50Mo88uDmgCID3RBO4JLEvA7YctF2mhGlnEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744598994; c=relaxed/simple;
	bh=Jsy9yTFslKVQz/bJriM70h1tALL3c8zaEymlncV+McU=;
	h=To:Subject:From:Message-Id:Date; b=lh7AcVYJ3KyO4Et5Jybu636YVGCwTeWxqlL0LA6W/cW/cyDpNLlOJg0NMnwc6WKzBDSR9HRyJ8ZcgdjXDxsKKg1QyCqoRzS/p45hw51W0TNH+x3PY2S72wOEfIdvTEmRTdWOUeEp7oDk3fEMWUjfAX3VSwc8t0aCm6eTV6RXPPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uR1aEzS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uR1aEzS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2AFC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744598993;
	bh=Jsy9yTFslKVQz/bJriM70h1tALL3c8zaEymlncV+McU=;
	h=To:Subject:From:Date:From;
	b=uR1aEzS5oJI4MKktrh6NIxA/zW6C+zdx7BT05AJiNA6WZfJBShGsirO3FpbNhTDky
	 bA5BHIjXXxDNG9oAMSseRMB1tYysrTdn4h3oXXtfg+X/pdU6BZq/yf46KVOX4Qidfx
	 cPvp3+qAgiV2G876wbOMMJCTNUIx9L2sHKqQvDt90nyHFyyax6sdRW5xzdOtFCpb70
	 FniMSp017NQYIbUHacrDaNz8Vy5g9AvHClN7c9RDcuBbWdJvMGNYUTnnNpjbi1TFJM
	 uf0zJFEC478lM0tBgzqPQjfcIdsHwJe+ejzkbiYv2J9RBfXbabSRCT3kcIu3hp1tyW
	 Xe/SXq8bvhmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9757DC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174459899360.29297.5031577933666241376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6472a9feb3b04f970e239fd72ea8b4ac51d31f45e8663fbb91540ac07581251
Date: Mon, 14 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744598993
