Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AF2274B46
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788414634; cv=none; b=eUUTD6ZuDl2262BF1NpvM+SDzBafT8I6GNpAKSe1jaklVnA1BJ8zms+XIFL2SBO0t9kY2aQ0BrJ6q52f3xXgh3vGIjEzYCgsfc1mXKeHN0ZM0Ja3EJQe6Tx9t5pgzGh0WHbq2FDJBGVKjtPxsMwXG9G0demWOmiP0qEQoCqQZiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788414634; c=relaxed/simple;
	bh=Esc5LkXaZAgSsEuac6FxIlT/eHp54Q0D0pOA01ZVfqw=;
	h=To:Subject:From:Message-Id:Date; b=VRzWfXEOMpzz68v3U+p6w1h9LcJVXyM8ureLvuoJ/VPfc/rjxdvddwKkRy83FlpVQtGLhr+glyobAicUgm9QZnNTX91Y5Y6iTK8Zt+vwAHns3t0y/4nIlXlxRTcOaiiAgMZakiZbVDlCGQL2YveruLzaW+kpQPUJ2LGhzFJFaTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqz+TtUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqz+TtUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE38FC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788414633;
	bh=Esc5LkXaZAgSsEuac6FxIlT/eHp54Q0D0pOA01ZVfqw=;
	h=To:Subject:From:Date:From;
	b=eqz+TtUqiW9l8UIbGDOH8pjHCLNsJGkyLiqF6TuJeV7oCwecIA6aGBFc6s6vohody
	 bo7/tYtMDYbQPV+t0swMWlADBuXWuR3L97Lykhq4uY0zxlZ3Qn6QejLsVnm5Xkw83T
	 8VIx+CkQzcBv/IAMSvCMy3hKklHCjBoDsjWYrV1u+Z2zdZmQX36T8Sq/rz/e6pQPOK
	 YV74l8TDBfFaIP68R4Euhn9Mj3AL7aUzng9uaVLLzvE4tT6qtBsHAT5Q9m0JuVol5U
	 GaFeYifcJheYB/t9IfTuoCwlNE2PE+wbaElBKwp0cOLofF3VONQXI/mKKaZVQOTr5U
	 OMjmRKzBQ+r1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D8C624D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841463369.15019.1513262694149383192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89404469cfd1d9566c5867aa790babe4f5c419622c731e6d7dccb94562f5a7b
Date: Thu, 03 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788414633
