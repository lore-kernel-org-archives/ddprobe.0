Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DA732C931
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760723994; cv=none; b=uDBNeFHp4maLO08hk74CmzA+U8PQOwDC/C8TnMzz+bKrN2cq1q0d0ft9tDcYvtCj/V11mA8ol8mJxq8xc6ASY/jzAEPg/mzDMPUt1iLn8htIag/TYcIkL3W2sWRN9KoV62tqPOvcAPW5dPmHdDBZRV7zsMMd5TG6/ZJNewksAYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760723994; c=relaxed/simple;
	bh=rc2MA1Hx5lPzmdRTqyZzjIX/0LWdP+qtMgRxm8x4yw0=;
	h=To:Subject:From:Message-Id:Date; b=A+T9uMS14SyYNkgh9n5crEcVB1IgwhnyqSN6bBWre0Kl8jbdr/WORffuRMDF5qzx/RL/GpeIWNdqXJnZJUzvM1MkNQKuuJYrAqTqIZ+HgafSPsN9o6n/58RNXOdMoAOZulxrVTQ+arFtHyKWruBTXSIWD0ezolYWIW8fbEYIkvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNImhbkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNImhbkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9C7C4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760723993;
	bh=rc2MA1Hx5lPzmdRTqyZzjIX/0LWdP+qtMgRxm8x4yw0=;
	h=To:Subject:From:Date:From;
	b=YNImhbkX6AHjop6ZZa4WbyrBjSHM72XpUjUyi+gZM4q1ZZOrz9QeEqAsxiS6PkVQE
	 FpVpPsAYiN1xtRC/SOemFigieFR9b65cxHwUwN8JnjqFLED4hMe7oO3J4+NKhJuIdG
	 9if86LQH94pAxLqZiyW4+rq3Wri/cIpA/++oypjQwlxxUGzDmv/wdtd7uQOYec7xDO
	 L3M0m7zxqSgMtu0CoadnHIf4WxuZqOfCZ+0Cng+Z4HxpOLXB6fYZS5VQu6qw57lvDr
	 tl5h4zcRpsK3ThD+jGdd1nOoe+cbCd6IbShsWV50Xa1xGbq95XIWIjMbWiMen1lU/4
	 xYtcEVqfywg4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A976DCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072399365.3032.15591270219696100087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59eb7582ff4fc3251ec0bdd38036956603c295e56fb56027564073146920712f
Date: Fri, 17 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760723993
