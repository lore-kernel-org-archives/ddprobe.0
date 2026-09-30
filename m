Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF5B3BE642
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790785834; cv=none; b=ld6KXyRETkt91efoGqrb4GY4UIUU2ivjDYP9stIMtJcLK527/GlzXL7IwCbqi5F4J3GI3z7WzhKMsWeMy7yoMo9Ex9GsY+VMFLcD3DfmW43eLRwAL1VQXyYHSCsopGLYX4KEHIoFBqEVN0lBGOgAHzOT8n4URj+qxvE08/AYi+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790785834; c=relaxed/simple;
	bh=OococmkTjISIsFmXC1cRAUq8qQZC9g7o0QEGli6nS1U=;
	h=To:Subject:From:Message-Id:Date; b=WuaiEQZfJ5XjdwrxbExEtxGxnAE1/L6xoo5zhdlmyWZpVVqUvUgLazTCEmFLGCzdqnNoXN4BSEjPYeEhS4w2GxkqKhFqrB0ijEOArSI1Q2BofLQQLVTth7WpiWOM+MA6x2JB2BS0gaCXrCk+34BIZ5rJa0qFG3dFKLdFHhm6QEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjEH7OZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjEH7OZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC27C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790785833;
	bh=OococmkTjISIsFmXC1cRAUq8qQZC9g7o0QEGli6nS1U=;
	h=To:Subject:From:Date:From;
	b=OjEH7OZMpJKBTtpeyBxDrYBR8uOHPUeQPEW1iiExm/Dq+ZaOBp02hkJ3RIlenxw4/
	 RpqP5GNz2m+uXoj9Fb6zMLgMfFyyM8V31pUOrOm+iljTgQxf9lUymqg+n/6HteW+33
	 vLeF4y5jNdh1PLQu+m2+nExqb3NZvg281xPPA5wibUvKSeHeCcw3CFwDeYWACeK7PH
	 dXdICyhd/gzlNN3M6ZM1121qFMjwBV4tSDBdcVn+goSvEJ3j5eNEfIpooBjacg+hzq
	 mG344UEL2YB8J3us+M1DzART2CsVBpzS7Mxx0QlCA3TEBC58PiYt9BiVePdAJhFEfc
	 3WFP2rd8R/+Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EAECA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078583368.3324.4618728746900449325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f3b2d6e3fb955b84e33d91181a833fc2a24d31d2e399aed7f44f156a052cbc
Date: Wed, 30 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790785833
