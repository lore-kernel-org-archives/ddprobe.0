Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FA216D326
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715339543; cv=none; b=KPAsa1z/DRrIfD3BpqLczb+fnSQp4prkzpqDYXe5cEj5GccpJfdpj0rHOOsZGiTYusW7VqLSB4BTkNknHmUuQcrcUutvDbRcyZ2OU8kfjKNNH+9Z65j+ghWoLfE4FMhhVVBl4MvomgJ+n5wFdjKn/YagvgshbjW40fBJCMJ7q9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715339543; c=relaxed/simple;
	bh=iCTAiPamG3a+GcJSywVMsRlInQ9m9v96iUxEDbfUsAo=;
	h=To:Subject:From:Message-Id:Date; b=Uq9Fprpx7uGJDY+dQ0XhUqGQuzqZNCo+ZizkKhJSvvjU4rTjBwnF5c1rIPQ+XTYa7DtYIv4KnkH7S8RhP2ShuBGswsHRbej/IztHNcCBvkEs2u5JUqmSDwhFvhvFu0QXa6nwHZ031G4VnpOv1KLqIXRLDsNoLfqqn5JBHVqwXOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COSOJnUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COSOJnUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00AB3C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715339543;
	bh=iCTAiPamG3a+GcJSywVMsRlInQ9m9v96iUxEDbfUsAo=;
	h=To:Subject:From:Date:From;
	b=COSOJnUnGrSWZrM9rO3TGhMtoAvNsFJyErOIzeBjcEEDQjY95UO2g/K3cIj5Oqz+S
	 wUj7WWBnMeCVwh831lkjYRKDIOGCc9h0LPdhwwdBnPxVor4wNtKyVxaUwNZSv9CKwf
	 GT1LqO8SxTXSBcOlgvlTWCrvTOytmRsRZL7uiYnYbIjBSvJR2GW28b4IGgV3pVFdej
	 RtdkVbXXKqYznJZxOd8SyCuysXHmekQ7CObY10N3SmF7jELAlK4LUB1Wr4k5Mp9xXH
	 bXJmXHu7eC+jq8ahoD8AOQaN+5UzwvxAFDZcs1Z+JV2bSfwAW7eo4t5X81UV7Wzstk
	 6R8pm4k24lj0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8A93C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533954287.4582.15685294609763189638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98da1490789b864688a0bb162d0c8cb4b0d62a04b411e65c78c8260f2ef19e5a
Date: Fri, 10 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715339542
