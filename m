Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F909280035
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772796894; cv=none; b=FT2d9ToJhqQW7n6XR11dw1RBrYrHK5eLFHQhnCTHAsf2mlhoomDZFR59yBVDutGFdRAANazJlvMB8lksffEn0qlqC0526yoZ0PGOsTDzpANrVDMH0wRYO3v3/JzEOYvyDwDI2yhuzG2Ts/udwJtoAwoqFaiHNV7NjFLMb6rKz0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772796894; c=relaxed/simple;
	bh=FZjlEMfb+066O/NEQZLB+izl3PceRwG2F3QqAY5cEaw=;
	h=To:Subject:From:Message-Id:Date; b=Es4oIJbJ4D/1gcc5fPpq2U3GohfwYGZbwXNnqFSQY9xove5L8c35HULAdR5HigjH9b/JcYJa+HnlEY0tL1AqDnRThKmxGWjlfYCoJkTGKdqqWGeevFfpqND9dauY3emJN9qsqxbXcnzYFWucBdjLAWC97RyHGnwhAH0juz2yrlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXO0pPP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXO0pPP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F412C2BC87
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772796893;
	bh=FZjlEMfb+066O/NEQZLB+izl3PceRwG2F3QqAY5cEaw=;
	h=To:Subject:From:Date:From;
	b=hXO0pPP8j4E2un4/Hyg5FrYghKBsT//U2/ujzaivXNlccuIH160yAswTkMJDwYFH+
	 WnIOxtQgmMwYJxEbnkWXzokNZt0YmpJk9tONXbBNgGzIuTYWTTsKoN2O64Z7jLNPqk
	 CPS7ZtlHkAzdrBzQX4AVHNWRDzLmUx3NYrTxebt7ZdZMbhVUE0wAQEPYhsM+SoC8fL
	 4tm6+bJ2I1eHI/dZxGK+ndKIc70zeN8GWqDnwJF9nfZIax3/9cq3BwF1E4keQMGweo
	 I7a+vBVGCiz8Mm7Kt25NWOTpd43Wn53vopq0L5dlD4tBEjn4gdu/1z4sOielN+hQd5
	 hnvRVUxUCt+1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F0F01827
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279689358.8719.15642872358154900262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df87a0a136aa598e3ac4a0edf49d0a6f4ca1740e133c9e65763f37dcbd8dcf9e
Date: Fri, 06 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772796893
