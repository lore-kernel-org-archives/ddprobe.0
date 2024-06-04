Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4372D38B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717468523; cv=none; b=bQefFPxIDnQ8jgg+p2mq0jr382jNUG4Qra3HbF71AY2hcto5zym0ETnHo2JSjLcg0ATtEfoR1JYRSM+m8bil4TC24wLjVQJTVnmEYSbiQfQwJCrRuIDfRmyxgiFQYoHtb5d7aPxRBRBLE0AKU8/bujWDurs707yyYfj0xcaR0y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717468523; c=relaxed/simple;
	bh=xh5JraAl4lzpo7LO63W02LffqP6citIeaogDUatMrPI=;
	h=To:Subject:From:Message-Id:Date; b=XmGV4w+2PoH7VZl7ixea7vsI4MTeLEByxwN4culTs37D9Rr45yG32LRdNWFasLinT0nv3dfZzx6456k8VKAGkwwJ3J5p1LjTN9lWvEJOjXjVf1gD5eU1GiRFqISqA+1vf0tYDQMcfMTXv3NGaeR+C2OkFdEIoaIWCw6Ug/O9/1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W87V8eFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W87V8eFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF343C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717468522;
	bh=xh5JraAl4lzpo7LO63W02LffqP6citIeaogDUatMrPI=;
	h=To:Subject:From:Date:From;
	b=W87V8eFvzAcUrDJnQSd2yK4nwjo+5TtWpyjg32sGS4U0KVjLKOSvBDV6KpAatGsPJ
	 g0madzoPdiv4Ty4fBExaV86MGY420GAdgka8YdKhbaE+Jw0vDR313OvYYQ3W0OgYaI
	 UnRgyvJXiKQLWgqJrabBb9bMtlV6A35QLQjM3ogWch6whHvUGLl9n5PRPrYsLmh5r7
	 iBsrQ0Y3bObjaRf5aUFC/Z8YkJfaHi0FDfkSHKRVNp9cgJyABKrKl/H4eOJp/FDNbz
	 qTl7cda7AjjPKdPPLmqggEYgeamLAVotgLgdEQ0oW0v1vSKYk8WDTGQMVRxXUiUoVZ
	 B3QX3ZTHHD54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5F2C25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746852276.15212.17071533498860054794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a20aa0d6ddad3a51d62bc8b10481a1c83d6f72e774002329523e6df56f6b10
Date: Tue, 04 Jun 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717468522
