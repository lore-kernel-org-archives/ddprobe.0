Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427761397
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777097254; cv=none; b=WJP0rJZueHcSFnsAMHZXnGH8X7rQ8B/tpgoWIyDbtmO62JGqFSumUQ0VIQvJ4UoS/8lu5KvwFIlQTYxGz+YMW2DXp+iZAgJm1C6PsEBkTtCRA+bHUL4Ur/t9Okgfs91hpKOolXQmGgwPHIwka4NA6OFtr01TVZ9dDN+dXsqr/sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777097254; c=relaxed/simple;
	bh=q8pOnUQ1vWHMvTGIcSusAZMQJPBPp5om55yhvXrXM58=;
	h=To:Subject:From:Message-Id:Date; b=ksnbilIxnyms2TzimqA/9ktUb+OfJiRXZyWZoLFLORZ1v0pDvLfxzbvnJN8AJU/DDuTylk4ZVUJnWgr+PnY3M17+HF+nmF1D1WCj3gS3cgC2/w73NtWt3teOAbRMbzLtA5meFeXq5mWyQC831Fl70NWSgjHRlEuOqu2tiSS3Qrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYFhwt7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYFhwt7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B3EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777097253;
	bh=q8pOnUQ1vWHMvTGIcSusAZMQJPBPp5om55yhvXrXM58=;
	h=To:Subject:From:Date:From;
	b=dYFhwt7jYgohumK47YjhWfquIP4Yr374c1J+cNmrb/h1dS/KYhS9IB/AmXS/5D8CY
	 kswIkIpTay7fYVEM1WY1nRrKRDhWerHCXOdYd+V8S2emKBChcv+NnnpqTer7DQshqJ
	 wYdZh7VPILDemSAl4p8LSmTLdho6gcz6Skho+q0M0GldtziVaphlXbeU0bgbWnLhqH
	 wsHJutKcswUtF0vCYwx4Pta8fynV55WIWoQTA3F8eoK1FbwWB2qLihX1GeFsMcO01E
	 HFbT8aZgMwe6SFhcZjngEaCPjQMn3DNamyimsQuoQbvkX1krUicTi4he7aM+t3NpJk
	 4h4CUOMW4ksCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6DEFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709725369.21836.12192983454515647032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a65e2100ba3e13085d93ccf729392800ef42b08777edbada0c37e0d74245d41
Date: Sat, 25 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777097253
