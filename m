Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1711B24729A
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769862234; cv=none; b=GLH6IWrSbjxdHdE7nHpJjk4DZvl7WQ7MYiXVOq8zLyTu3zU3Kmq+wH2KaLnS9opBETPse0Wjx+gtCHHtp7Gnum1+gJ20MN40Y7IdugAkYGeN+epMuPX3m1Z7SWgkiO4zDK4QcyISR/UqwqWBkTizPrkLLgi6GPgK+qiHVCFsVOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769862234; c=relaxed/simple;
	bh=+QFZlG6hCIZ+8KniOs3nX1AR+18bsgwD/lUuQYjKxtQ=;
	h=To:Subject:From:Message-Id:Date; b=DxLvBAuCPvSsL8SebMhqLBHeFDbTTulQ2JtWNKVmRnZf0Ln1qzp5JU0+V9tL2J9xK8NRtyK1pEn/bwXYwkgkiccjclK20P5sJ91nkrmke/ZSXPRK6O/I5tRTo8n3SnNW3PhWXAFV1q34UOqmwkH3YEu12ax1m05ocg/QIaewUSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3boVfHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3boVfHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3359C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769862233;
	bh=+QFZlG6hCIZ+8KniOs3nX1AR+18bsgwD/lUuQYjKxtQ=;
	h=To:Subject:From:Date:From;
	b=R3boVfHOoTN/pVSUcuvKUN2L0/dahVPipR3VYkI1loVq/KoZTv4LEevcrkZdr0+/N
	 XzkcLmpP0UbjDrh0lr+Xu/tbB6I+X+qqJm7x7oQ5jc9IAH2QsJ/UjsA5kMTQ4iyBwb
	 elnOFJsB74JTiZyf460qWB54oT/ryD6TqjKOjoHCUU+T9SsEfCOdNv+XH4gI3Ip1NT
	 YM7vnGclJtZBEH+JkVxg1as7pZJ16yiamN/Ecid5oNa3gbSubHX9i0UalljbgJHb1l
	 iTzMrtzqESsSE40wJQ1vcAnL7ys08BIbSbD7x+ALz0W0fZEbR7rRworCe9FJGAg4aB
	 FMUO6k/78QUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A2D79768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986223358.2389.4970821786084573247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8769adf8d6d12fc5604440abca0c2dc4ee85fb748a2d68d6c9ecedc02426053e
Date: Sat, 31 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769862233
