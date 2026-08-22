Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F8639A04D
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787385034; cv=none; b=RvgJ/DkR+MKSEBF4DVwfaLq4/1RyOWYz7+kcsv6LMF23zOYltyy7LyyEElLHnHH7tl72IGmou9KkpBziaGiLybUg+w6f8kohyal75hxglyuX165SqJFKi9nE9H+9qFEw+B/P0bCh95Pkn89sqa+uZdra70/Jwl8p/DdIw7W/ehQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787385034; c=relaxed/simple;
	bh=ai7DYMybo6imJJvGSK7dl3/ad5y/m32Mcij7QyzMk+g=;
	h=To:Subject:From:Message-Id:Date; b=Z/BR6prcszn7C4B84aQ8mW046jDxUMaxtZa7zD72+kpAc3em1LTq5ZNc7kwFcCxJhex7rBi2yXKiL+Z2i0Kip6ys/DGc9TBHgYOPSIY2i++kUnALiltjmfvz0aZwUEK22UqpgoiXmxXpOL0CoK7Vz2F7pA76upuPWSt0ItZ7Kho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpiXMJKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpiXMJKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C8EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787385033;
	bh=ai7DYMybo6imJJvGSK7dl3/ad5y/m32Mcij7QyzMk+g=;
	h=To:Subject:From:Date:From;
	b=bpiXMJKsIeE+NLfnpaJmZtwUZnOYi6m6QJRxUjAfDkQHGrsxzorhPNCRkypiK79Yc
	 WghJQsdOEV5xulovAf/4cxXpPtp8HFrbEk9urmO1jj56eSMybLp8+Wm2ReO9fX+Axk
	 zKROTDiTObNcK9xh+xqxqCn1AnZ7oXZg4S7J75SqMT5+k7NeELyctJ8NXIBGHzoDn2
	 gc05abkRsQXyOi1onHlLVDw2a7aOZ8V+Cc2vKFCx4hV1ACdRyaO8KPsN+C+xsNitZi
	 5A/qalWdgzbTmcBWWUDu7Iys7KZi/AofedqveXEoE6hNbdkAh/nH4t0FHYT8kEZBMv
	 pu2pD5bMKnBgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC5EC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738503369.30742.2297506569524656506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c324dc68a113f7761ba08c9ac02e8d8f3f78705a1bad5594a3c8f67e23f52e44
Date: Sat, 22 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787385033
