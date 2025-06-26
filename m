Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C191B043C
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750923594; cv=none; b=ZjVL85TLfcdt3CdC6/kLwVvVtaJibLBXOYHuTEe5bZxT371wDzHwqvL4qpfKrvlU4g50XbV5Oxw7xx6ZO1olgGL8anFOXpmQsi+ovRzBIEgWJG7jePxEDY6wfqWlLK0tXV95oZpngTEjmm5Xg6YSaayrmH9caJYKBlOAqgI7MrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750923594; c=relaxed/simple;
	bh=AzJO9ybi75LuBx2lsEG3HBIF/cCwQt3/KzktlFXwouU=;
	h=To:Subject:From:Message-Id:Date; b=ZHcOBnsr9V9qsDO3zncthndq9nzADrHJfOgwG6DF3+ZU7N8V69B+llIDRcv+kz84Vz8Ij2BfL8F1D4QiLZElTd8l8bZVubvDErwhHYc1JOZ1B+oC5cOfb3mau5pDJiUMgPAoSjBUIG5fahR8u7UDX8qnStvuzC+dlJBHPd//JAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siityiA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siityiA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF0CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750923593;
	bh=AzJO9ybi75LuBx2lsEG3HBIF/cCwQt3/KzktlFXwouU=;
	h=To:Subject:From:Date:From;
	b=siityiA+hYFtpRUBdO04HBTkAJC5jquzw5YafJ1ha0xxx096wEdkCKSNRaWN1neft
	 UCwSHXbhNQCx4S6F2MWhZCnuFN8R+gZtsxVVlQ/3EJvpO7VMVVKhaJ59vS71zmICJv
	 jhbnRcAUHsKNiidVyq7NxP4XW2eoG4mmB+lf6NXPmYftS9ccUeUmxgFACIdDSCiBb7
	 7wzya4BhTtlBw4UNmLhSMYBotyYdYinQm2o62Cx/3rGeLyuTY4L5ro9NxDO9G0votP
	 /cXOVeIrqQZHJun3lgMe5KL0GFYOiKH8zI6upzLabWK12l3gbJWk0TkJn4NVf2oed7
	 tKB09WM3fS4Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB7C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092359357.7194.4013892845608312688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068712d9e6f183cd3bb69f5d401dd74a038eb0efcc65cc862cbdbbea721a7cae
Date: Thu, 26 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750923593
