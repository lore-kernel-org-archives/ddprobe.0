Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1093C1A2842
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725022554; cv=none; b=jldvhtfLJDUytM/KO5wYB4DtHhgYJvXkhCRRfQyboTIXwoEYuZkGQwjIXistlho/WSUNEaCsqo2z5zzzU9L6Afdxit3buwGyQUKX076Idq3j3VanbELqa7gPsyTPdthx+tKEESxutpNk4ueVw9XPZNu9Xmugnlws1rzvh5bOIGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725022554; c=relaxed/simple;
	bh=pJq3pq7HFYky8XNqigvTieT3WcxzpL5c/f5vglGKUWU=;
	h=To:Subject:From:Message-Id:Date; b=azwwBJsxLQyzrOX1ssuuzF7mEvH4+25o1AvFCCGTQC4RiC7LTLvJLzmk3WZKQGXJaEQzsaT2yWp8dsktxS+V8zQ5IsM7k+MmAbkywIcz3viq7wNmmP3w9Ut+gxE7iXFRTs1aiN5zBWfGYuZiRhk3U8e7C4mStxF9ZesOxPIlJbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufOyp0xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufOyp0xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E20C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725022553;
	bh=pJq3pq7HFYky8XNqigvTieT3WcxzpL5c/f5vglGKUWU=;
	h=To:Subject:From:Date:From;
	b=ufOyp0xWWxv6E7ptzScvHwQVEBCiwchoKwXgqt3CNCfOzZBo8zrFPsrsFJPk5bDAk
	 DmMDXCjENlEZEwEQ6omHpzOp7f9U664r1QyBBbI/yZ1UaH++wMNCI2YQ3wJabVM8j+
	 wCE9VK/3FG2uQ6Uc3ur/SU7B24K62cx7xQIl9AX02eqf++p2GjRSDltGMqb8nVlJz0
	 bDa+7ecchsaR8QibCmq/08AZARHKe6ippsU2dL4hTeO716SSnS+mFe0Un3wK8yKopt
	 sXq+rmhBT1EevKAtk2OoQYr2vhl2/zp8bBTdoZRu+vWR43Fh3M7Xtn7hRyGDV+VMlR
	 6km3Ic1OCKiKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C1CA0FED
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172502255362.15355.1750744200370770976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4db7b5ced9e33d5b5ca9773ec36522df980def583cda607d1cd115e975c41c9
Date: Fri, 30 Aug 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725022553
