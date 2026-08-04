Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2EE3515C9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785858034; cv=none; b=j3VtqRM9mzvvXWjpGgWFMRB5gEDkGV54sg/JHzyd30vGAeel6Os1ytg/v5+dbsXhQSsWmEYOwUeSGe/MKxJ8q6Re4l/USeKhdOJ+7DUPYL+mKMarDuPfJJ6/kJfhj1WBCYwH/tezWN0oasr6v3Ux0nBBA+zSofxMeO301BRtFKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785858034; c=relaxed/simple;
	bh=8SIcYsL4/7T+KYd/iVRVqWvu7CdKj5tkdVsTCAKZ/ng=;
	h=To:Subject:From:Message-Id:Date; b=R01cEThyRjK3PwXwH+s4Gi7QDwAoKd8z9BH3ZG4L13G6LLSpOkWNLXx5dtQ19JYsIDtzzxfD7AidVaBr5uM/j8xWw+C21ceZD2oZdAP0RFy9zX8/PJ5nGjZZvXNZrXSXlpEtjaWKQwZYQ9WF5MFSIZEhGjyVlabYYsub5jCYhg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9XYqNRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9XYqNRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1653C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785858033;
	bh=8SIcYsL4/7T+KYd/iVRVqWvu7CdKj5tkdVsTCAKZ/ng=;
	h=To:Subject:From:Date:From;
	b=u9XYqNRxitzVYfY7GNb5GiGIFyIFVoE44nMbc1WDfLyW2/exnfVl6Nhc0Sgv4P0re
	 R1xlf4TPVppWFw5UASxDA3JegjOaY8nWpPZPsefTSRZGrdijSkKE1jH9E9XKasjZGo
	 Ngp8Wal/m/6bHeLPEhLpPjAEzqpwvsdF1tftN4MlgXGZrkF72Syf8B4aVmd1MXOkmG
	 ePdLgFkkYD3N40RqHcsqeDdQrnixKzJGpF+PxCgeqY1uxCSXExEjrk1C2+ZZJUeFxL
	 nsIHaIb++LC+7gFQyD+vPCVe/b9JdSjmzwH7/ZQlxDGxzHN/AL8jGYCFPLXaduvlfc
	 A72u6fH8zkW1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC16DC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585803369.18388.9531555158214211942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1dc302065eec0997573c7075f93f0b65ee7d66b2396f8cc9d72ed5937884d3
Date: Tue, 04 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785858033
