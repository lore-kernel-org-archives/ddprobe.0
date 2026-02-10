Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E213EBF24
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770729835; cv=none; b=JPkxA9pt2DDZBuQcHhux5OnTetA26+/X7U+GMl5TW3grlmf1B/EeNuGrQ5VklDm/I8q6EFujvHq4ecjh2KeX4tP0VDdjN3xJI/CAfxKgDGTCbyet9Qa45PdR86aqx6KNKcyBxsdXjwaHbeGQmZvNzrf3G1ghtRRWelVcaRpyL9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770729835; c=relaxed/simple;
	bh=ZQ7MdxRg3Hrq2ZLPlOM12pvWCVpRfPszZuCqJcbp6eg=;
	h=To:Subject:From:Message-Id:Date; b=N+oASx85XJrVvjZRmZcArBrOHnwbg+WjzIqERH/FBikKVf9cdFWlkvPuJptWvUWXGqb4UckUzv15YGtQKe/phgUkPXK6pjZ+cSLrNOS5ZG+c2k5zLaSJbjqi0evxzAYAMYgf3LIptCv2OZk1n5SfL9sYVLfE1w1Cto8IXIRIK7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+QCs6qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+QCs6qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD261C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770729834;
	bh=ZQ7MdxRg3Hrq2ZLPlOM12pvWCVpRfPszZuCqJcbp6eg=;
	h=To:Subject:From:Date:From;
	b=l+QCs6qrORDJF5xWk0ij4wxqO55U0w3q0RoPs0Con144xNz4RxbCJrxNiIC9IvSeX
	 tf+QeECbL0oQdWTfa7MZUVI6FRDwiQHqUiXJnxZOm6t7OVu1HGdvcZyY1Ysm4hkXWr
	 RUx6VR7th1MHB0DSwGo3hw4OeGg3EYUwWzYs678fJRXnEoN9m0XH30sMf8eUi5h3Vp
	 +fojdlj4KlOygDt4s95QaxkQBti+b/SSqOcMCRX4VfKTL9+RJDxpUf4RhwiAcPezum
	 AumadA/K2uKvNZ4wTJp+6IvZmfw8gzzBN8T7Jr0eXvmmLK5TPCSYm9qjwwp4iKgSjU
	 CfaMlExLp0jsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D9FEA8114
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072983367.2110.1657965147833382610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55352fe9a1bd3bca300f0b0977213a4fe72837912b0e9025360ade06695c33c5
Date: Tue, 10 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770729833
