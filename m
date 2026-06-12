Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3F43876AB
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781294194; cv=none; b=a234K1juMxtxR9uC0YHy0AUwMNowbzZaGnGvNIm6vvLIHWphwRTCQUJ3zMJOiUTiBdaA6JqwyaR70T0lamLXeBzsBp1pnJwJuKa6rK4QsT6dUaFQRqt/CkHzfgjhB4N5OpPdPBdz0r3L649OyN/nd6eSSgEf/sLc9Mh8lWm7euE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781294194; c=relaxed/simple;
	bh=z3IO6VgmVxjlxMbklzYiuSZfb6wa4ITboEQlnCGAWPc=;
	h=To:Subject:From:Message-Id:Date; b=eRUmNxpB5heS/TkQqgi8XDkpUvVQFi28yezFAsZ2oXq0zxJ4c5ER1jrbX3+weZMLCaiB6HpKMDxZ2KAvLOqEorVKVnnMwl6tJ3mlSrUaCQ6sScTqeP/HeteymUK8bmFQ4FEAQxHYJy9YxTLEoVfI/tCfLoozDUcpm0CRbLdvK6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddxBUlAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddxBUlAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF616C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781294193;
	bh=z3IO6VgmVxjlxMbklzYiuSZfb6wa4ITboEQlnCGAWPc=;
	h=To:Subject:From:Date:From;
	b=ddxBUlAhPFHHuH8bahrxmISn20UkHMMV9BplPfRBmkDyX249lHCMWCqbhdEJZDHXu
	 gN5C+jVyB6RL0nR7QVv0i4sncMize36YelqeChDE4kGig9dunGHEGnj+PL2QJEVFJp
	 +f7IfFa7ned1OD9ivhXGJ28ZxfjQyOBW2zk1IY4r1irAqHWma5sbzjKGKygpKJ8S7T
	 rAtN6V5y1YhU6mKTYSs+cv8Klolej0ZJKeovZMeGsl67FNcuJrDvF+xzM59WD5Zm1A
	 B8aeXPOEc+vk5uqBGYUKO+dfx1WJy8QiIZo5AsSjRbWvCcFli22LxeonynG8e+ZHIY
	 i2aQHFStirr1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8042CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129419368.3136.10899609401209363212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c94ca87f665ee44a8839838db98a1f14e83717ed2f01eebac0100f665cf8e56
Date: Fri, 12 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781294193
