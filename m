Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE68264A65
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768688034; cv=none; b=PQDck8735RupVrejz0s0dT0rqOZSQotRmmWllZtY6ifB29ef4YPjeiR64KJel6f/U9+uv4Rv2NKh5b+V4xeTxfGtZLEGLMosALnSJpjkh4tZEk4jVlPGz49N8elD7kWrXEeMfgI4L54124nKyoEsG4KE43epld1PW8V4SfuP9A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768688034; c=relaxed/simple;
	bh=/rnV/KNrobFWRLzlhxhVLi5NEApptfQbiZMVdKsZXuM=;
	h=To:Subject:From:Message-Id:Date; b=tCZtyufz6X74pTauCByvZ/GVvPWjqUph6AS7bCzMkAe7jbHV5oil3kuB+O/nsMvciZm1pPlVBOz47wsPeY4dr4QGULWAyXKOlIt/gzWBkwxyaPYMyDtcwSl30Y9JEdL1jnJfcj2kvu3t3lJK57IHjGGPw0PP1X0Y2k2R27FqZ04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAHbHIM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAHbHIM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB4DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768688033;
	bh=/rnV/KNrobFWRLzlhxhVLi5NEApptfQbiZMVdKsZXuM=;
	h=To:Subject:From:Date:From;
	b=RAHbHIM/7X9KRjE9iOxpQMGr61uMe2kENAIHnPDvARPywgA5JWqP5B+qfJ72R0a2L
	 0ePxD7OOf5ST6DgE+0dvGfvAUUgB8SR9M8krAUsratbQoF6kYHIeSSt0+JV+75f200
	 eS74Y/ewgYFnvg+9wtZFt0j1MWqzTWTRvZ4KwrKO0KC2qQX2wcdVYuSGaqESFqFXkV
	 l0qVxQhKjKunZR/mPfQHKPmVhXHhcdxMvHgouI8ahGygmtLaFG6oKkt49NPRYjp8yx
	 d3U+XumLlqit8uBeXqC6+5YODRFRCE+fvmFAOCE+UymrXIBRkOKRZmUeMViOgzSx+C
	 rRwI0O8RcOORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E8ACA5FE0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868803359.8792.7090426795951822468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4262c1ae96028ced00c59aa20a49ac94acbab194d92a418d045f9779957ce308
Date: Sat, 17 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768688033
