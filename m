Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8492D4A0F0E
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788289234; cv=none; b=az3wi09eDbZoSPkjEqZKlWrmhaq8lvzrNgMdNtd6cT0Zo5I3QPjjG6i26l5sUM4jvstH14tt7wn0pp0mWb+URt0urUpfPA/6CmQ6YZKjwSRrmuW2WXGRIosTU53a9ZwmcUsiddexWCkgWRMYS9xrgb1NqQovkHYs6aU4NuU7Y78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788289234; c=relaxed/simple;
	bh=VBP10J+wE+cJDilUX79yAz8xECS0TomBjA7Vl4i8i9I=;
	h=To:Subject:From:Message-Id:Date; b=mmxgXJCgTAUv5kJcPR5Ibh+N1Bbt33QTpFT+3BKG1e69DD70/FlEJOEQC9OEmz6H3M3r6yVbYwQQw2AbTowJc1BISxWwMgVUHIinFrYHk39eEGbLJfkTNDUSyr6fTMMslOlTQrO1fTBpAufcKfDxqFzqZdxoj8MZr6nMPpWxBB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+iPr4H1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+iPr4H1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC06C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788289233;
	bh=VBP10J+wE+cJDilUX79yAz8xECS0TomBjA7Vl4i8i9I=;
	h=To:Subject:From:Date:From;
	b=q+iPr4H18QGqLIUq1lFGfNoLPWS8xYvMd8PqvqOyP3/G4XEu6yPoMLzly3XJ783il
	 46g0iYYJZENRtB4kgGkjJVu36k4V71r3mIhdjFCTkPzaM7PzCBf5oPS5saQjzJOvEt
	 OFzxUU/wzUwT5pvYKKfBxdBn5m0/HNARjuD1o10uyJv4mOKFIAIEkWEQYpfALdxTlW
	 6wyUslhdm4KKmgyKssnsuJNx/c7sKISqCbvpWQTlUlCxq4tBqOoNVGpmIos3xP3QHu
	 FQiKzgC7NL4FvIbfWKKtcqWPMNAv6RGwXX4b8JITyi1D7+UJPb78aEcW+5m4cLlW8f
	 1Rcgt1+GwAJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B274DC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828923371.28036.6555041134797304729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0124a606894b40466d986b39d9b082285b6053a04dd314c40e7e47836971e5bb
Date: Tue, 01 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788289233
