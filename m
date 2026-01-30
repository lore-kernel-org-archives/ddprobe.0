Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258FA238166
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769763234; cv=none; b=X/twV9jtjRMAl+QBT5D49iiDQf2Wkiu96FLN4OVP9KZAy9aQ+v66FlbeWlmiDXIS7x4cULtVxqVfaIyLfEO5jOKSCwGJcMbgNn+h4RWjbEG2hT7g55VhOBHq+B7s4kBVJuKcgoVKUwR7up/16zS3FwLe0dp48k0ctGhMTSl7AIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769763234; c=relaxed/simple;
	bh=KCjgMsES8dkvd7xiMJ/6JfJKmJ+UdKysrOCnbET+XOA=;
	h=To:Subject:From:Message-Id:Date; b=K+tzYD5KOmcxshn9xpGnXFz7b4n/AECqsx9yaGnwDJEP7GWZPgCKEA8xKhWel90igD4eF8oKNWo3lXEmJB6lLBCVC/ZWSy10lv18oOVMtjDloG1cLS2PaR4mh28N/SWOOIzio7QWbiUyGc4VbQGZQ4PIuroPWJLgiBhCa9Rf3mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUINLmd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUINLmd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8263C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769763233;
	bh=KCjgMsES8dkvd7xiMJ/6JfJKmJ+UdKysrOCnbET+XOA=;
	h=To:Subject:From:Date:From;
	b=TUINLmd3onXz5ZS7BViZXEH+F0OrP7texjCRsj4Ya1svktm5AhqhUgGCM2/DA5nHl
	 29EDcU4nmjp1mWpVHKIiHuiQdXdP1W/9oOwvzuqEZG7BVj3E8xNGe6ZHXd+jKpWILb
	 fTnP/AEZVZtP/4DdSQyzfZRAK/M16FJntbJDsGRJ4AP0tM+gDx9GzkYMJOa/RGC3uG
	 gS5NykRFtm4848mawJ4f/OE2sOeg8emVdIzs2Ag4TTiVj9iAovMp2Q6X1WApd9lAUF
	 XOsqvOhtiv74oJIzzzyy+klh1ZefWI95uZ5g/0WmiuegeyB6WygN7TkUb8hw7Yufmt
	 cHFVO5ABonU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A8FD49C7D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976323358.958.4838468794715393934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e590a514c34ae0f73268956b0086711ebfc48aa332d3e0653516e738ed0ad93c
Date: Fri, 30 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769763233
