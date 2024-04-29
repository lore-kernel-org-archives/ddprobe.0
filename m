Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8577F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714353743; cv=none; b=kGgJrCv5lLwjRzfOPlF+qnIXEgr6+ryuZGThgxnLgEW2xFxsCH9EF3SIlgBWprl25B8NpKCa2I8aXsfVRM8qYWbMjaASmnubGYIObPhKbdSRzVuHhYD1fz0jsEZxkTlR7dyIqvn1ZAnx2R7QXyBH6NNm0FtBlmK0H+5VLyIlumg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714353743; c=relaxed/simple;
	bh=35Ffbzv9jkbtx5kqgJOoP4WQYLEf4wcYkzJkqFqARoI=;
	h=To:Subject:From:Message-Id:Date; b=JDFKQsUDjbO0ixh9cOIXHI3ndpXRqzmnQ2bGpqrIMV6sbWO6DmELjTaRBLX838d6I6JwMy1+dmlBuNNQrnyBESZWCTWWcx1kQbMYY07PEgVsYikth9t2ajzMOXW/HRw+kTx5JvaomDKjalnbUPi77hbtXC3wNRhf+2YT6zZ4NGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bggUYOZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bggUYOZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A2AC113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714353742;
	bh=35Ffbzv9jkbtx5kqgJOoP4WQYLEf4wcYkzJkqFqARoI=;
	h=To:Subject:From:Date:From;
	b=bggUYOZvRJAKsx/HrOsW3kfxpi2rnSnitYwG+xUj+3tMT00ZzhbNcKl3LoyR3y/9r
	 wi7Ucg5lPT5TgturxuvP9ndyaB5Tc6ltG3zA574Eq1WgDdKFJ8m514374p3/svH1sM
	 w2eL7GOjdH5hZL6I9Pb8dmI4VsBCJUqWxyg6gwH71DIb2YMxvR2+uYdbGYtIGIJGz4
	 W+4v8u9O3OkS+NGARWLysDte8zr4Adg1k8VOuY+iipmOjEx7+UaJsmz2al69X8+vWY
	 XzmNqvqLzWHfPrkf1H8WrcvFLH1P+hHXVKkgaOyJRCgtRWR+4kZ1r60F2nA0OLF8tC
	 zt75OcH4SGHRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2B4C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435374280.7194.12671516239511969419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b42211fcb155241bc214ec115ca9def426f999876d374197e013d9468ac7f0
Date: Mon, 29 Apr 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714353742
