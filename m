Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0764F217F24
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758251996; cv=none; b=d9XDzlAoHzlp4K8BZS4wKqOuWlMsjyU3SGmUUbg7a574U6Guytw2JqvI95xDTmrbY8nEAzH4XNwGFRITw6s+hasik92zMMkjS3d+LiADqaZ70nrRtGOaQzEEXGhehme8v5oKV0TvGToVae7sRTwCG4HCBbUHRWwZXKpvo5gniE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758251996; c=relaxed/simple;
	bh=zewwWKVIw1KZrh6tg+pLzeUuCiGE2NY6Od7zpIA3BRw=;
	h=To:Subject:From:Message-Id:Date; b=hRJfnw0SOV2sR7LfPnJhf+i6qCxR5egEY9GOMGrHL0qwvQfxKc782T3vql/l/hVZf22C6yU4B1wFQdSAgL1NurvePpA9k+Y1NKFYaRw+BUUiGfXW1uw33F0Q9+RVTQ5dziptdIOfmZNhcr4xkpO8Y2adKIva4j5x5BrnrUYGR6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVBnojQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVBnojQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 972BDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758251993;
	bh=zewwWKVIw1KZrh6tg+pLzeUuCiGE2NY6Od7zpIA3BRw=;
	h=To:Subject:From:Date:From;
	b=kVBnojQh3W2W6473k/71hUpLmhfWi0VldVlP85k0BPbLM++vJMPB71o2bTfmeNlo/
	 1VI/20ZPnEN2yXDP+12guOAjOWgKvWaSOpI0STvJQ8bM9Y6tji7xNEUmGAsR6W9n7e
	 QrYYm1r7pftb54GA+4R9Y2WhfN6Yp/KHtJtK0swt0nAmRyYgAo3CEhbBmDFaLVscOa
	 lVHxKfv1toHLV8noiVMJTwx/qwWGRPzOqIIm3plMSGqtl+xr4rTIzdquP8byldLf2v
	 T6WS1DVirX9ubzmrEjg0t97gkTH96OKzygu3WF99L+HLUO2kw8oKQPlLt7IgTiFV5j
	 TH7np7nPS90ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD5CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825199357.5527.6384532164143114198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0781786aeee5f9c648cecaee66a303cf7cacc2ba4773d83e2075ab95899f97
Date: Fri, 19 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758251993
