Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6EB22B8C2
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753714194; cv=none; b=ovN1STMToltOdu6g0yPwGCzSa6TO1zf4W8ZeBgMwvyYpYkUA3Y01ge/8m/UcyF4ugug8mPPG7GBOUGYqfdW37+HVLPDSQv2hj7/nWefTjTSqGDaEl3zTGDHTiuyjrq4BRfmVLeAwyNtl+0UsNwCV99WC2nradMqZ5z9wT56p2SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753714194; c=relaxed/simple;
	bh=lcUuZIDMbWjKTLbRpdh3wq88EoUKvgkRk5SWCiqsMWQ=;
	h=To:Subject:From:Message-Id:Date; b=pWSn0nSwilW499dz5WCIIumxjYR5KcidjMtbYVLkJdYZ7B0Pqxi0i/9aFw+yOPO7/ALTmu4IK6CV5Zz8utYNlP45VuWEwEouRgIZN8qlcizJGjhW6di9TFbXnZCWwbsTvaInodbbn2KRgL/D8xVBfwgbkdgch4oWYvXqjEja34c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/iz4tWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/iz4tWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B27C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753714193;
	bh=lcUuZIDMbWjKTLbRpdh3wq88EoUKvgkRk5SWCiqsMWQ=;
	h=To:Subject:From:Date:From;
	b=c/iz4tWf+gkuT6f60JacyBuL1amKZfTL/LXjGanOO+SSwUI+jXcYoAD/L584NBxI7
	 2POi3/+s/gG0plqtHt1s7tWRGWDtkSKbRhn6VHkw3x4N+qxJFJ1RjW2XkChCx50EHx
	 yjTvYBtL+5h2j6rtqrcUdW89m/Y/ShrVYo2D+dLYmB7ZRaiWfZwoQtyk2iF3tfGRU6
	 MD4hL8RbsKnnAJV1HHzxJRQDAzXLYPv1OtO5RzmnuMFr+o64vtordzAMSoyb91pvFF
	 zsnbKH8RiJeLVQ45lMhw1x53vYFzLigW2JwoyVFFYuzIOccKcbT1eeRwqdjfs7peLz
	 SI1+h4jt2uD3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C78C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371419358.7300.9657850094579294823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d416c0318c3aac60bf29a778f1e9a062cdc5188254bc0cfc221b04663e57d993
Date: Mon, 28 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753714193
