Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119E435E940
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776800254; cv=none; b=gnqCiPz7Kay3FS7gASN9af2PJSA/4eWRFDsIjKHvxAMMVc0dkuZoscwmXVs4ZbHQHsMQU9t6rwoyhuPfSkpzFPZHJj3WnwOI0Fc9dDwndznphklnol8kC7gzccIgHYyIVCxRy3D5KtSjZsCa8Cbk/XWkXLj/imKX4oCLWUzED50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776800254; c=relaxed/simple;
	bh=5Cz1JSSutthOJ45/hWOCy1p2whTP3iFsLKAdUfZaoag=;
	h=To:Subject:From:Message-Id:Date; b=MBCoPN+Cg34oRyLpdGGnQUhvoBos7Xoh+JTNV9nsQFX9bnJxj8PHkFxPYsFauEVaxaKHNMlibwvu1WQmsEzdPjH75/mbkGLGhhGYQRuMmdnhuq7MBfdy+GRgr5dQeKq2SJxmAH3HgIDO8xlRdvHAYP2C5uZQHleHnplRHSpgtdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9/YKwZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9/YKwZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC81CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776800253;
	bh=5Cz1JSSutthOJ45/hWOCy1p2whTP3iFsLKAdUfZaoag=;
	h=To:Subject:From:Date:From;
	b=P9/YKwZv3M6S+9JiIigEnXUVZ48QpNGwhwTKxU6bwALspiQQJDxJSM550pXL+xNfW
	 NxQERbHpRR0hIDWHie5AUF7asWJPJfwAnBKDa+qVT2RX7iGtllT7EvWTWkvK5o1fd+
	 3t8wGG8IaJtsh9jajD2VO7VSNvg5k0eteZpZ0Z6mHkIqvwZOHaQyzK51R7xk8vke1x
	 fIJUzhW9tee92Ng8shecGNsYpHChvZo9uCguIKEcjI3xLCAXfRjvP+q2DYcbGPmDvr
	 jeAjUjvLD2uP8OITtM5/kzPCjqXy3/nQGxWs8me/fvo16/W1O4RRKoDlDpZUAiRCd6
	 JajBohQunGXWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9538F94CA9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680025368.26077.7607284612249915751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55c4ed6e776ac8a42fb160c20680484494148e1866c4a311ceb93ee57031ea3
Date: Tue, 21 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776800253
