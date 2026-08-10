Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A8138F254
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786338034; cv=none; b=QziukHohC2rEzGQ8ifU7Rf+nnYJVDSOuzrrlkRtMgjZCBEUtL/XuaHXh0pqpQvGze2BkmdtI0PpACUr3y8ONNDpLK7mSZZddhBWKOgzStHxM0P9t/cIS0qselFLurgXTCHJg5eWLyvdntFxNeyDXlPf+ylvzb1AT3SPRjmMwUUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786338034; c=relaxed/simple;
	bh=H3bq7Hv+zjTo2pYOIuYGKf/tO1cV5tzZ4C3eUZcpKpM=;
	h=To:Subject:From:Message-Id:Date; b=PYDRL6pllkOWtFRAZYT3//cnHzXzVTZWtVLcOeC0Lq2d1jXFWp4HZ8OlSaAeGQONH0smeCjChDq52Y0WypyVVfzASdyJUA7rMGJSvonSWoEklsXog8WzlrMO83nYsIBqlGBG6yaZNUPjX3wNTEOuPlk7Ch/IqWYklofKcJ6vHC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzY+r3jL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzY+r3jL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFADBC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786338033;
	bh=H3bq7Hv+zjTo2pYOIuYGKf/tO1cV5tzZ4C3eUZcpKpM=;
	h=To:Subject:From:Date:From;
	b=LzY+r3jLtLVN+SNtwAoKmt9rcgrUO4+bkr9Y63uorgl0mYm+lpEfGvWy/hI0ql1wH
	 84TUscE0az+nFvr1RkKyYjtrVu+x70wqrrw1gvJvqPHEfqzGe9FPwlw435WotuzqbF
	 pWnwsEzO7ts7GwMvFX2hhKsie/1Alg1f2Ow3essYdXcdgxahIU3m0QyX/PNkTIt6cp
	 YQVTl3IJuW1oPhDnvN1YfZJYA8QEkYlO9NlnQXtgkAHyI+odbJEhzBIs9F+e4kFpDm
	 u+VngdNVVQ/J7ASa1O9MHjNBz1WOcbkIH9QbPtyn+KdWizbXAglaH4p1hwSdGts+QU
	 E0/SQ8bKaH3GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA345C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633803375.7932.11973477163372054202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e780b4a91229217c49341cbc2ef3ff8d411af72c3ade2c6c1e1446f5ac8d78b3
Date: Mon, 10 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786338033
