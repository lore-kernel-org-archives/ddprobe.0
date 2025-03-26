Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF6C137930
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743021594; cv=none; b=ZVyqAKh1SkaBF9KdX4aABFL5VN/ho8C1VJMGSpShUlzOX3vTAuLwqr+dYAPrD1XSjBU2jrCDXcPHKJzt7TrhUJ2OouUdZj15ar0Epk3MR7d6IpLVphwz+RGyDi9NM7xd6gQKcJRBL4nyw7+HFEwoHX+iFN6UTTU7LDAQBw+wTgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743021594; c=relaxed/simple;
	bh=ziOPvoT2oH4tmA5MOIVUHd5boUiiJPWY3R9lg1lVjNA=;
	h=To:Subject:From:Message-Id:Date; b=hZuGSxYkP1Phm3eihHfPnUExt6+xVbI49BQbJPZXAJYHWCDZ8bPPoOQzPe1kp8NwZtcerWknBHK/qdTfgdqE3r0DGb+resU3+mw/CvO4MbGcZdigVESe0s3EUJVvhSfaWA4Fa5LJZchCrnTLREcwu0fWnDXIPonZF11o7cd6jRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUIKRf0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUIKRf0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2E6C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743021593;
	bh=ziOPvoT2oH4tmA5MOIVUHd5boUiiJPWY3R9lg1lVjNA=;
	h=To:Subject:From:Date:From;
	b=EUIKRf0fUhWr5bfKVpc8L0qvzZkxIOZijjTyUHWHygyr7y0VsigLONCPjKq6D3u4Q
	 0yWnVFVPQauFUpUSIvXLnFEIH63U0mlTFSGSBWtV87t2Ut3mSHj4xKJp8gyQmXagJr
	 S+YArDyexHwhtsVzDnuZLuGFxbKLrAXNp7q7wSQ1wpRgoj/eRAsz4vGNqr0lPTvf+T
	 95hpbDVgh1a7NQNZgbItVzMi1AryQJzQD/nVOIXq7AwjV1s9/0qsARtIOIOXxPpaZY
	 kNdEBwYabTm5If9T/KMdlkwzGEPgWwBfILofs50ZyRnde/DguUoQhaMfbWxYfHGoRa
	 fsyx9lYYave/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6DC3600E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302159359.11763.6519108481543990013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108ecbd958b0243468bda4b80694c68277b802c1fdca6843aaab6b27bab97fa8
Date: Wed, 26 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743021593
