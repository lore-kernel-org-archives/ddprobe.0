Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C092299AB1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768728234; cv=none; b=TeIOWJCiWWpvrQf4vfq/6YHHEhpw9ZHhHu++HE0pXUIPjY3xYfEeoMQES5XYKvtrSTjQyDARi7XHbESXw3UimIRVr3kTVnKygqrTGd0xvg+XSLT00FoBi7nBfByTJqodas6dZWDBr/muOh6wLWbgyFL1kxdzRIzg6t3KAZChopo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768728234; c=relaxed/simple;
	bh=jvP9EoiKeVuE3Jz5cufhyxpOa1vN34KQnPKJgSmZLWY=;
	h=To:Subject:From:Message-Id:Date; b=hUGPIAmr7X09g1+/OFBtQ6WWNt5G0i5e08epH9qzL9JwfFx+kw7qh9GbdU1atscdySDop2FH0TXdjDAxeQHaWpVGegxW6XlQalW6qWm41uXMhs5Er1MH8H74EAVC5/yY9NQzdFuCJ6k/wMvOGDcDEu5TfagCtI2YtdNFXNzqxuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HghCuLGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HghCuLGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A5FC19421
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768728233;
	bh=jvP9EoiKeVuE3Jz5cufhyxpOa1vN34KQnPKJgSmZLWY=;
	h=To:Subject:From:Date:From;
	b=HghCuLGTi4OAW/ihMzIx5UN0KgpG1zyZoG2WI4GAfy1cM6UF51o7XdkTcAwbs1jEX
	 rGOKbxCKM2tPLzEYUm2n0iLWArcyh07zP7g9IuLMM7JmnwOF2UK2VG954vb0li5ZRC
	 PzbHpIM48UDiawOP6lEIg4xYrtmuJDQvDw5UXg41l/97OhjfVZ+eKpneFDmWg2KXPY
	 UieD5n2ef2VjKV5ukyNgfgZUtTJqj+l5KZBcAky+cToApPmww+GeVjo5V/4ZI0W8lh
	 V2zH9tYzKLXS28uc5WZ6BtHnjreIa0IRdYK54ZCsURQUQEbsvHIJq3JgMh8qTpNxgO
	 QhY/WsgyvmnqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B3C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872823358.31718.8584953972286988421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18657e26dddbdc665a5f66173d9d3c3ff553a4ec17092615929fdcf8b6405f0
Date: Sun, 18 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768728233
