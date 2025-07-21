Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239935383
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753111194; cv=none; b=iHJQgP8TtmbLBNj2CkUBfjW4odgFWhVu8medeqQrRI0tMWV6CkOmsyqRaLkPIUXMvHMuTA8yN44TyEwIfB4Sx3zIjEspCfaPkODj83W5uHFC9AsYRnbxxPyuoxQnhy1FVCtySFzwlH2P9bPyx9uHI1HO5+4XN5mwvfNR8p1Ks9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753111194; c=relaxed/simple;
	bh=Ru0Qzy69kqi7DhVK6YReNXTY/6ZhSNABISeuXQhFY24=;
	h=To:Subject:From:Message-Id:Date; b=M3XL/E5/YvGV0aeWAQMHBsx+PBB1hvaPakjVnJ/1wp7Eov9C0oi1fygPx1HH+973nKtc8UIXTPQeLygcI5f1TvE7J53/kg6IKbdRvQUF9X64nZjfDm+V7BQpErU2q1o2rTZX4+Oz15MN3ub8P9A8aSZ4fb+sRQ7U6QzE9kf6tWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EU9E7c6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EU9E7c6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FBAC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753111193;
	bh=Ru0Qzy69kqi7DhVK6YReNXTY/6ZhSNABISeuXQhFY24=;
	h=To:Subject:From:Date:From;
	b=EU9E7c6xwAby2lslGNPdXOZ6CMO5JlXPv7FWXXy/p443hGKw8Mrw6NJEfENhQ+6dC
	 pDQHx0rjRjqw+bPpC9BPBf1tkCJfQ0DxHupYrmOgDESdT6dTRnQOZwEtQeLbgEphsD
	 1x5PV24iyuiIzfo5TQxTy0oAAUlb9x4b0N+ratt2fERiB7f3WGD1zrko4BybnKgZ2U
	 vvY9K9nChLcJxst6rMnFFOF4U9Qd6YdQr8MEs7PmVm1IGuKWdidxe0REcdDk2f/5no
	 kQNgGEoU4EXzMaOjy5M8Trgd+/RNRkMYgttAzKlfDpB63+vjEG9KPDDJ5cFFW0niMz
	 lIdlvGZwJ+J0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92813C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311119359.30149.654235159241078451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf530954acfe8cda70ef205cb9d4e3dd217e2f2caea94da8625f10a7df7ae6f
Date: Mon, 21 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753111193
