Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2F43DC4B7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780344274; cv=none; b=g59Vrex4uT/0GqQXiPQT7nNpUYAI+8L9Lj9ZikjWZL9JtcC4Hh1Y0CphwCQCbhFPNq8cIBLyoIxNJaR0Tq8gp/67pWYRPjjJC+vCydW0vaCoAFW/fzX9jg9RnmNbukHCY+sTpCNkvnJTNJVLRgGQ/+H2Y0WAngXGPChytMC1FeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780344274; c=relaxed/simple;
	bh=IDM5bF0ATkjwMBPwTkwFm2A5xqDzjBHHZOoyzJq1kfI=;
	h=To:Subject:From:Message-Id:Date; b=uSsjPSacl4J9kl3itnt3z+YDA2jeFDxLQYK95je3d1Tp95PwknKZ2A4lTJqxrl7+gfbrmpI8W4KT8oZB8VJ74Hid12LRkgzDZN85XtQjJmDaPZcxcl0IYfDlc6spBfOT7+ncpR91H7GmoktKgCZkX6IlV2vRZJ6lgdZlMK6eY5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yylbu8sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yylbu8sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DF3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780344273;
	bh=IDM5bF0ATkjwMBPwTkwFm2A5xqDzjBHHZOoyzJq1kfI=;
	h=To:Subject:From:Date:From;
	b=Yylbu8sfkNBU4FAEu10Jh202jtr+vRSEwHboZDUzGHHdSsYE1s5G9kW/TsGTDJ5vB
	 VVWa8+M8YCOPQbg6x8zJPDu6l9se7rfCQe4NHN5EH6y2CoC6Ftr/eTipYTJR5AXbBc
	 HXOKUudWc9GoQPoJ/SeQW4Et5V+OFdke6UNhK7fRzJ6rxiiVnqALu4XlOIsNPspcT7
	 J15pmxeJtWfBAUUorn62gVc7rOI/K1xO99LjJVWcU0XwM/b39uT/ats7g23dn9aEfb
	 P9KqZgI3lt+XbZUcEi85kG1NgHX9hCGtCHK6Rc0kT3bFncagkbI4zGykkps0ENvwpx
	 5G24eyUcuNgHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC053CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034427369.10261.1124816565671945493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882d2f66dc2645b58b714f89ac3470cfae9d9d7459172f8b9c26409e85068701
Date: Mon, 01 Jun 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780344273
