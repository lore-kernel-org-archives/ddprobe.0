Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7332A24728F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781797594; cv=none; b=rSkFvCSE9OAUoG42cFKFQs8pb8PMuraxsj7fzjI4IxoHJntoeK05vhOsfNXkITZq3t7n0RzM9mnsf7pQ/73WRCTMwxI33iis5G4DIj14zzv8YON64s3gwF1CzDUT822vWDoNGUaL4rxCBf0h7fCINkysekKUNwFlwCJ16tKJtFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781797594; c=relaxed/simple;
	bh=kLYkrcynE5f4rn3WEOwdEuQJRWYNJvk/xRFye8Q4wYI=;
	h=To:Subject:From:Message-Id:Date; b=IFiiYI4RVSLqOJa4QqSxzKaaENgn6rjg7aUlQ/frJNKWYBbyHBaSqJ/aEfLP/e5M7qkE4QYlxm8PXZdWpmHgK3hBxjEXvtc0ZbQSJMGSR4lQ3TQxkhqlCW/UxQcNrHGpoMnLGw/iMPvaNyip8l1jcFfVh8snrOgu0Z3L8JMoSgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkBeKl2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkBeKl2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA4BC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781797594;
	bh=kLYkrcynE5f4rn3WEOwdEuQJRWYNJvk/xRFye8Q4wYI=;
	h=To:Subject:From:Date:From;
	b=DkBeKl2iG46sg9yBzY9BDLVhtXy6jg5Yh+4YvhpowhAzwHCZ56WOoGEGvbzBGmSH2
	 MuuMs55TnAcVgC4jLQ5dug9AvO8NkagvzMF03TTBHA07n9UoYHmO4bylQIJ5GU7bqZ
	 P8lkqoja7D4XBS3a7qLQU4GT0tu6r8uBwS+DtzSjBKBCLf/aMOUlfzQ9zNFVYHOHZ5
	 kN2D/63zXvpZ+/ruDHNRa0zGyXCKUnese4y4ZSewmGOG1wvGK9+hPm5Rqcw8lrj/YR
	 +8U+xPcx/STDhZWv4fruCmxAmooqmVlQKRZPbIZu8C9h2sJd893Pny2qgCjkmGGlub
	 4IxvQ9LDEA+Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22CACD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179759371.28094.11303747755949673705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0e9773bb1effaed04a34917c2ba7f5da5e998a8328fa484160346e45f26a67
Date: Thu, 18 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781797593
