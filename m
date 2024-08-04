Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40136803
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722734754; cv=none; b=ZtkTNM1oXFYNdXaGVwSMfiDUAHb3rj9zrP0qjBkaU4H7BxoGoq4eYI+ojzmhWD0y1cHsG021z431X0qHSEEENV4bsZgQnC5YBIPOvwQ9vvtYwIQ9XTY9yunq/220PFzht5Jkwx0y7B4FkbQrQrj8tu/eSY6ebKMYvjTyB5WAQHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722734754; c=relaxed/simple;
	bh=8UqJO2SMhPmthdNnKdFgdkZOlua3nM8JIv5HeGSIUJc=;
	h=To:Subject:From:Message-Id:Date; b=W/ETKifRJfZ1af03NCcq80r4vUKBwKvZmqixUnXHqwiclowbg8DLZBBu4+00uaDG19iFb+SXywA4DgAdYo7ZL/9UxqDFnEkmV5j5yiAptYkAPkTuhb8Gpt2ujfGl1PEOoLNgPlhpRTCiGNvA+03Jit1J+Kfu1K6Eru9evFSGyZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nad9GX99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nad9GX99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCA6C116B1
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722734753;
	bh=8UqJO2SMhPmthdNnKdFgdkZOlua3nM8JIv5HeGSIUJc=;
	h=To:Subject:From:Date:From;
	b=Nad9GX993VKI1fZ3xZ1ZH/elAEz3ykZqdzF7ud4W+1PCv7/p6dwnxUxsoWxTjztOd
	 OnJMTNHLp8dv3NhQdldFY6ZHEd6rudlEih0W9VEZJTakYCnQigUWeQAhbBExDkqWDj
	 gLsqGHu7XBFyN+gbIYcXYzfpiDOYPPuOJQKpRk11fHpaEE6mZfS+VfDL1W9CTtXfa0
	 y3aqVBjYcwOk2GAmK4mnrE+AJgHiEvXwziNyPJdE14VXCjA4cuZ1nTkc/DX3gWxCPk
	 I6CJcPL3rhu8iM/9/0qZS4ZwH/VDxhzoh9/+r07jJE40TrCcaSwnags+yc/GxWbvgn
	 RAoetK1Bc7QRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A14FC3DA4A
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172273475360.17703.18265696859492944795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18ebaa917c051ef153eb45e326895437914b401ce777807eea4df824fd0dbd8
Date: Sun, 04 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722734753
