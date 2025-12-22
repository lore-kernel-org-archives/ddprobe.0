Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A7232BF47
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398434; cv=none; b=pdvgp8oQu/F6ppUV8a7H3/Ue8JjQYKXxZcsP9aov81JVzThvPw7HqTxH1k2u/7sMgRuUBw5qfWhBIObHXF5PmvTf2YE0SiOYl2kDZeteeeQ7Ha1o2sT/zvFiP03QWFeV+3y5PN7CCeRLbJ++GQjeO79Br2BbeivpWZL7fbg/P8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398434; c=relaxed/simple;
	bh=adBFWWwrCW3Bemo2rf/Fh61f7hbiO7KADz1H9xZg8vQ=;
	h=To:Subject:From:Message-Id:Date; b=FgMubKflJxcn4AUkywR+zgQ924LV4O84u7TbdReGC6tO9NjkuNallr8o7zst4th66IdJ4KJXwNKQGczJ5blBJtGkETqPSgkerNduYYEChPYcioOQlqpYgIy5WTilUR5Zg/7+TWDJv7waHbS3D1nvJn7TQoE6JW6ulWmquJtHtaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpC+s4bT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpC+s4bT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1876C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766398433;
	bh=adBFWWwrCW3Bemo2rf/Fh61f7hbiO7KADz1H9xZg8vQ=;
	h=To:Subject:From:Date:From;
	b=KpC+s4bTrEga5QS8cxGSJsh3enFJWR6dHFwLYUbLATn3BMdQ3AqbKG9PIvP+xUBAR
	 in2W0AGF7v2lIf6hagJhgbwRtIdxTWepW+2payB9fOWE4ig0Q13WlbmhjeUPzqX6J4
	 I200mhHMhgmjFgQNns5sxSdGQHZg3ivTZyRN+4wdyGn0poMun/zZY7kDSluADDWfcU
	 NdR3D5znsnt0BN+1m7OJlCkvY1pWqYi/yxZLA2hzpYrDmn1k77KwWHXA+Ktwvd3tmG
	 YLgOVS+F2+G7eyf1CGZioq4QilZlBjOQts8Ws1tth8K1un2YWCCjqhSzKMJJixPytC
	 /Kb8zVOv6TyLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD38D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639843358.27381.3235350946261131210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f440c77a42feee6a5e948640969746ca2064d8dbffc2ff97037aaa7113c1ea1
Date: Mon, 22 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766398433
