Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7C63CB546
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792344034; cv=none; b=lEJfmae4KiloZ29mzZ+lDyg/8wbag0wCAfBgw5eWHjis5/t02WZ5Xw+02NDtAV9qTL+T8QhvR0BKEsvWec0U0AgF1f8/0lmJlf3b6WyuHPwYJqfKS8sHdCy4qAKQU+WbdGvAOvxQYFaaTLWZDTyVQHrTADwTJhwSUau7DeXFxRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792344034; c=relaxed/simple;
	bh=BatdN7ltyHnlGeXxbrnTlJxbzD+xXcJBM01q4xGv8iU=;
	h=To:Subject:From:Message-Id:Date; b=u/PK0M+EvC0owkqurtgXz2w2i/YQpfYnCA4bMuFf8x/wU/rVWuuJEcGFCg5t5m6c6xiFtCOOyS2tmpFOsNrlTeIK5D/rWYJXfzrqR0n0iHAg0o2uFa/DB1ElDu7JflZX8YXQxOTpvgb+7j9kjaL6+tfRFfb6zjzaTA6cIhdlFIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnPYzXFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnPYzXFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB222C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792344033;
	bh=BatdN7ltyHnlGeXxbrnTlJxbzD+xXcJBM01q4xGv8iU=;
	h=To:Subject:From:Date:From;
	b=rnPYzXFAEc3HzQMFcmWBuKrYoPNqmiub7f6pwuqCgJtwiDXWX0g4xNW2rnzqY1EyX
	 uXfC7fsroFYOjhEM1nY5A99gbMNlXV3oovbAAX9PxZBkwESz88NUsTtBw1Lx9nwHJq
	 fk2+ik55JAdzNmF5z46elsK274Ot0Gyxo5MiNEPz1tJS0w+f4fJtEwlb5Dt5pY1A6Z
	 IMoQ5dvDMq4U8kWf8l0BMFMgE1drbr8F+rHoE+9+8GJBDjsSI4dl7aJ7HgnhLMBLQD
	 czUVcfHhAinAhvOMkL4DkUa3OdqvDCtW66kYi3vgY5mYTVnFt5uSo0Ax/JRKfe5w8E
	 PltLhwhyEa/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD2CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234403371.8816.12712692821067734359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920f25d9d8efb1d470a1b3dd7b2b436c91a7864d598f167d9b94aa4efe70cc0f
Date: Sun, 18 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792344033
