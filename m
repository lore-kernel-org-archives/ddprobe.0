Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D4B13AF2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781325994; cv=none; b=WuJ0XUliJyS4AYHFUViI4qOxwWlf6uA8EqEp/xeKUVLYOqMwGz1wJtCsPFLScn0JfTHL5U/ddMW2CiVi2fxk/ERRWpTiFnMrp0kDej5KFsJQT63SJ+MYR7+LIAYBLluCxrYvlPWTPyA6o/4yB245QgXa5yhhmWlkLItGfQC8L9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781325994; c=relaxed/simple;
	bh=0YWvyKJTCQx7zjG27Jfa50cMYyn0aR7eINTMcyWmwXI=;
	h=To:Subject:From:Message-Id:Date; b=XjhvgZ0gEhYB1PcGZUcRGcaAy7Vv/ESqYjRHENWEXlmN3WZTHFJYsCr6U3c6rJD6HijzGU4guevcDUj4T4niPA7178WMvg3ZqT10A5WSniCc8xVpo8qhlN+BUdN5eQftPdOX8sULBXfkBh+vUwnGSHd/77Kg1f0CVzJ66OJou4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOEJnoSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOEJnoSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F55C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781325993;
	bh=0YWvyKJTCQx7zjG27Jfa50cMYyn0aR7eINTMcyWmwXI=;
	h=To:Subject:From:Date:From;
	b=VOEJnoSkM+y1jFLM7nQvMV/xyeiFvZiGz7NdFcdkk0/r/kmYF4/HCzeGLE1js4aey
	 ZggIWX8fW7FcYt40olekDDHHZbwNJn0P7uS1A/etvPjg+BpT3cRi13C9bFhrkWxpGp
	 I6NrHovI6Z2KBZONtXn7OHglj0Q3Kkhq+mDUCT4+2pl7Nh4Gjpl4URR3tZtIvTUJCE
	 2lRY7u6/EG1kMW6mJcMI1Lq9drxt7xMb5bNtWQTz8kEVk0GoJdhqVzLB9WP+4rsi1b
	 EQVptGu1GOqDkdt24EuJ29nyYil1fWb5ZSSH7NmcxnSPw5wgkjXqeMKT1E+bp61zSR
	 qpO2a9ljdApMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5E6CD98D9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178132599371.29227.11149585853086309059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1087c90bf0317de2f1b6b75d758fee831d6b2b02cb22f90428c1c95a0f1240ac
Date: Sat, 13 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781325993
