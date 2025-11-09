Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CA9C8CE
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762701594; cv=none; b=PKg9DJwyXAJsCVRPpiKrtbVTOpLfj5GqwyDjvmOoUNTticDEduwEAhFML/0SE27YLLrJsrrl179scwxCevgEF1JDLgECrtHwFvO4mAdGXJNxSGpyrujLXzqVQCKXNyUz/jgArxMAKyXXJSWMuiiBGFdXPTkVAkDZcQJgdITKdsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762701594; c=relaxed/simple;
	bh=8kexB/e4lp1lpbiEZELC90Ei+eVJzLAt7bTZU7nakms=;
	h=To:Subject:From:Message-Id:Date; b=oDYJW5W/L9t6MwTJ+XAyRCawZZC+0kC3cu8Q5mubULK52B2okjWIvzGSsCKwlV9Dii53u7OPMzIzed/9zAUKFw0+qoSXdB6egD4hQNDwQIechT8RBItYhgRy8eoJgMaE2jQmfT7bBsha/EHmmGnVRYQzxuVwR0W4lxTyacH6hHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRLE8PyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRLE8PyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762701593;
	bh=8kexB/e4lp1lpbiEZELC90Ei+eVJzLAt7bTZU7nakms=;
	h=To:Subject:From:Date:From;
	b=GRLE8PyCOUnSkmHvc4LNb/P2vbb4lVtLu1xJPX47b+z3x/hqJJo/Rb17Y5xJmWk5b
	 EgEJtDncH1VZqBvYjVzJEwl639XaBfqgDjyxfjK5iBSVLtsQdDyZGLLgQSpBjOlydM
	 k430Xb91QlNNLnQrsIRk5IOzxG2DOwymq1jB/1PvT45o55TviZD/ohQ9fowmDrbo8b
	 OIvG8cgLYwaiEE6R6BDSXcd+FiyghPLVfAC0WUUsli9z2iMkpuFZqcfpXKxjz790KB
	 7oIYxNSPSQlUab/iMz4Sg+wqJ9RP57GPlzaenF+3nxPFST90sjv7sM8mhclinfn8Af
	 JSq+hUm3XyAGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92491CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270159357.805.14199293152148411281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b8185fdd6af6baceb5fe68a811072b75838909ac1f10fabef46727a37359cc
Date: Sun, 09 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762701593
