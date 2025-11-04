Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF7E29405
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762215594; cv=none; b=D5giwlyKfDdSi52heaA/maqP9MdiWwSjy6DJg+y7wVTiCkFRaZS5OJwpzFzxqeIfPDEDDaP+YWb1x3ZoT0JrYhqyhYSo7xX4FSOiSz25jrHYcJQgzGsp24yq2Xg/DUeurxsu1+Yr3tGsC8rZ6YfjL/zh46jDCeccu7hkufqxzzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762215594; c=relaxed/simple;
	bh=6xygWn0/nWjClDCXwKlhuyBGLIUOI7UzE6bdhF1Ly5U=;
	h=To:Subject:From:Message-Id:Date; b=Dcf4lpkS3e6JXhhGg89AaqR5mEAnHoQ1mJ4981G5qjp++cjVmijodrZ5OSHwj9tiXrLAkI8Bh2QOSEyKHVJs5HHK/03lT2L+k9aIAva00jZKNNccMfT6f9yYPTfhMi+aHfzq/Ly31UTq0oCd4K/TUIjrbtKOHcKqhskh//LJLZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phgDg/bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phgDg/bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C68C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762215593;
	bh=6xygWn0/nWjClDCXwKlhuyBGLIUOI7UzE6bdhF1Ly5U=;
	h=To:Subject:From:Date:From;
	b=phgDg/bm4mIAVHP5chbDQp852jvIWPXIuI3QCyOksZCkuq9OzmS4ZPgLxrKieOB8z
	 spUh9vrH9zbr2d5j4QhUwjCHVAseaezgt0kwGDs1VEv9CcMcaImP7luqY+sQwbm6Wq
	 nFr0c5ykTzJoN8TTwiDeKLQKXS5ky+m1c1SyZniPUanUwlGefcWoFXIvEnmvzKmH/j
	 xuJi9IumvNDQFEuANvYOtgIJaNLs3GYM7VEZOmouLx/gVPfwf0jNNilUfvgSzmEvci
	 OTVdwDi+UQDOS8Z8m6zvMXEC7VuHbwYrkARTmRN99OzJHd9WpQ6dg3xZwQEXELHapV
	 a1dCtOLVwM/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1514CCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221559364.3984.8403999348768069867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218455883e3600fbbc8c730b1fad9ee3da304b89d1b904ff0385bdc6dbbbbc23
Date: Tue, 04 Nov 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762215593
