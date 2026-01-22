Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093DC376BE3
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769082234; cv=none; b=gHYGDjfdHNijOWFUl6Bd175Zv0A6EIhy/pyPX1Rc9Ju8FpXqAhILhEdBlXBB+SaQVtqIrqeR6mxirPH86dZa2mo3n80d7y19aFczs7XxS1w9GwA4rBTM2mTSiRPMSm+Ia50rRZ6ccbYLbU+1sjjAb2mbTo8/jypqqMzS8WchBL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769082234; c=relaxed/simple;
	bh=K3Sb+JbNuFcKOKcncbfeWQGJ7Qk9qiyfXf8b6N4K+oI=;
	h=To:Subject:From:Message-Id:Date; b=Bljq/vzjZ6Lvmt7dyB80c6EzBBKxjIGJafIPHDtPbA4rHwbb5ca3ChUliAcuDGdM5sIGB+Q4nSE8faWplqiyoUTjokWp9tBqtAQmhcrTm1aow0/kA+rPhfvwqz/x91oTUkFkkJSTTJIg7QznEBR9NS9hhDJdTWUMno/eowwNyUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ne0Kxgxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ne0Kxgxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B9C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769082233;
	bh=K3Sb+JbNuFcKOKcncbfeWQGJ7Qk9qiyfXf8b6N4K+oI=;
	h=To:Subject:From:Date:From;
	b=Ne0KxgxowB8u0mV5ts/3N12lIw5iQZpHgQFISY3xGtW/l+7f+3EdwQ4FHShxbFt1A
	 X+PVNRoiyY6Yh1PMsMijKAfQo0ONuG2tdgIcJ/IfN8E8oNlEsgXJKwKfRm95bueAqQ
	 jQkGg48ubxCG4wTYPo9Tmuh8EDH7+EYQuHaZv8E85PutJArMB/6N7jCHMp4U6SylEi
	 8A/iKURFthRj+rhSgc8v/9PbIIqvSF/pyi1A3k0wnJLEdOQsBTb523EmBPlIZdf04j
	 UoAWchHTGnw0DCge/W3BEp8rIlZBPzl7fmkEfs6uw3ZGDSUt3wSN0DuGY9O9SGid8j
	 g9VO3zWxH2Z2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBCC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908223358.18520.11858452647976112172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ce0e1dd4c5195332bcfb808926bdd941a6cb8fee46d7810745f7b0f891ada5
Date: Thu, 22 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769082233
