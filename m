Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3868E1E4A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745146194; cv=none; b=k+EBc0HJsf/48gNkMdGyRj5R8rnh+58jRxbMBhR7ccr85PmDj4t4vGBSD/4IDhrj8A9PJYjZ+T9VmsQRpm7lQuv5SIf+ZmUjteCHEuenokSPIaX29oqXkp6HHVL2BwJr6XY6f+Oo8S0c/f1n/sAlwiuR78Cw71qgMTRxe8ewYNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745146194; c=relaxed/simple;
	bh=FuwQMmQmuoId17IIJsZ6+3+hqBg9Sk8JSRPdO0H/kn4=;
	h=To:Subject:From:Message-Id:Date; b=OZpWRQWjiIgKB6qTcz1ltupmUa8zbKIyYm+kRHqQ3nJsbEi9q3cFjllIQ6DHX/ZdhUpEwE78hJxfGj5uNLfcsOWZmwqAP8chYMzRwqN3O2dPI3wXIyYzkpq8v1Q8PAWbgDXSwnsO6yhRWNEsCsJRJpMf2aLlTorE0av1RVHf3Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlbAPpj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlbAPpj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89AAC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745146193;
	bh=FuwQMmQmuoId17IIJsZ6+3+hqBg9Sk8JSRPdO0H/kn4=;
	h=To:Subject:From:Date:From;
	b=HlbAPpj9QWOASsHyaCx8hILOgZ6+wDo2kiYjYDtIw/PhP6dU/uVg+mpKv+tbIyTb7
	 8Xvwt8reLIwbxwvYv8kIbqgkGdyeC13G5iRJXVjd6Cj0v2scYDUxFr1bvaOwpOHMN9
	 AdwfgrF5phbEJ6kw/1sWMkfSXzV6CccGEbWQmMMj4fP2YGlA92dhaXYWgAezFZIywt
	 zAgdhq4c7i6drdKkqAuIESTySwoqolgwKCCH+wSwIuba7soZqnwQk23kxpvYKKbuG/
	 iZ/mxf+ekQsFJjhDSTpa7I7r6FpFk99SvgqpY9G7SLljD4N6DMpWQl1eygibNzMUyZ
	 5L0OuLDIxiVJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E93C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514619359.19696.2078523673463598290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a7f3b1a3b2f1f9f44be2fcff32126a15afde1688734e504f09f455187be91a
Date: Sun, 20 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745146193
