Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3529A372B26
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786346434; cv=none; b=O89S9dWP4VAJfbarZf2br8rOWR1podOIxkVKvP5rSk8uR7v3b9C0MLc4h34uJ61hB37C8nMHYPKHS8H+jJrYWSI4ij4ndmd5H0hiIRwZO5oAX5WpOffv1wBeuQ5B/yMQdZcvxIv7ZymX3pGnWwM0OZtrcSwg16mra63u09v95/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786346434; c=relaxed/simple;
	bh=6Q/cbsASzy9rsNguGZmFmxPJXINveiAXRz1gVrr9bu0=;
	h=To:Subject:From:Message-Id:Date; b=MysmMe3ZQ+PJNeepo5O5aUEsQoQ4HyVIkr3x2EbTmG1E9QNQf5TT2AidWBSAJGTI9fxK/NVxJN3SyJCAbHLsh3TKM3bSwImI41SkfS8qxUuPGycsWWP4pVvXK9O/cjeKyxrFUvLf/M8CBaYU1r4+co2FV+P7x7/EY6OFWzv+WDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvM8hFyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvM8hFyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8072C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786346433;
	bh=6Q/cbsASzy9rsNguGZmFmxPJXINveiAXRz1gVrr9bu0=;
	h=To:Subject:From:Date:From;
	b=uvM8hFyUkJOEzT3L5pa3Ymf9C1VHc9Ea3Fzrt2RSyLdTUvtf9vxlkea4L9VZBK21l
	 h4A76RFpRoahRW1L2GH30ju8LEH7PbOlCHuDLtZ+QYSbeJUvl4ATYoyvus0/nRygLc
	 YYu0Koe9VSJZO5n0kGI8cT/dWfAheYmLcIK++R5xwN0qVWxsWFuwDzoDqU7PubS9me
	 ttEwO9WupBqz9fUD36svFk894HBxvkujz3W8hB6s36O5o5TTPi672OECKWBwCRlTlx
	 SOheqriU9UJqTcOBFb91R0oU+nPZlbpk4IUiQJYByC8sGvZ9j/Wc2hY5qusC6LmkgU
	 UEiZ+5pA9gIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC109C5AC82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634643369.2378.12839170513892380533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f595def16992f729cc981856e8bead56897e58cb75caa946941821554a6ac498
Date: Mon, 10 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786346433
