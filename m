Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4720C37267A
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788485434; cv=none; b=c+xMe41sTOYSN1WKWmIQ+wj383VnaM8HR+7/PA3SHGE2qYrIgUD4jLgRQq5Bs7WM3NBQp7I2iTmvh//90jetRBBb16P9KestVuyMkmP0mEqFD0eBLkflz0rNnPcMDfk/PC29cmWA1fr8N9AmCBxkR4c0wt3EJrvEmO4onWHZP9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788485434; c=relaxed/simple;
	bh=dL9ZHVn3KbP7vDoA7r1nqs8DwbAuODvY462WLYx8j5E=;
	h=To:Subject:From:Message-Id:Date; b=NGz7rUWTlDVaWgj4rlAg8Xo4Uw3+U3m17avFHJI70ZJn7Cx9Eykywx4QXgPcBRx6bZ3vcPlQ6plB4YH8t/eQ6ZUFVerqLGHtPhuUwAczWmQXS/CxFTsxvHZ3omBnVm9ICaEyCWvJNaz89HLUrBkXxidUgM+mJgx6KYj/i8LRCwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pdri8wly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pdri8wly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0250C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788485433;
	bh=dL9ZHVn3KbP7vDoA7r1nqs8DwbAuODvY462WLYx8j5E=;
	h=To:Subject:From:Date:From;
	b=Pdri8wlyF+J1I0cVcMi6X7xrgmRGid5LGViKC5N8Ouc/WPZBz9B/+Bsu/oHpxWslc
	 A0c+1h6QzNFTA4R6O4rW0axOtPttbHfPhOtJGwKAMCHQmWpiDpJKVDFun1w2JlQ5Sx
	 GT5WlkhzFugvy2Wx9XvuRIe6gVxF+cAzK+ns/TAj8Btr0Aah1lG7s1ocLdKC6uQLp/
	 YNTlHDoIS32Vunr6jWaKGxxLf/6DE5jUEfylCL0ULODLJMYfKciVG5NPndqvXrhsT7
	 WvvjYZ9WjgXZwimWK9wrWtb+JALUX6umliIWBsuXQ0/WB8y0WVZ8ehWaQ4499wL/Uv
	 H4uaHzcY8xtrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA23C624D4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848543369.7514.18202260968378123946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce85d13d1ae3a96dfd7680277baf3c01e800d600bc7c96a239d673b0f18f99d3
Date: Fri, 04 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788485433
