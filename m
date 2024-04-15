Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6AB360
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 02:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713148763; cv=none; b=epIRMfVRb0tz8hIwNn1tqqbcN9xEG0VIYNMn2XiBfXlxCs9TjpPgCfNgL07UvaP24sNeW3fTZX4w8PupYIUkypWUmtJvZZ5k7wlDgcgdzCOl5z+QsfiHZIYtc7U5squ6RZeFqFMgK4PjZ134vNyp1TkLGIbdh3zG15CVPoh4MQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713148763; c=relaxed/simple;
	bh=X6l2yJ5n9yBIPw4CwIUQVjAyAqNeYQB/URlcwUcoy60=;
	h=To:Subject:From:Message-Id:Date; b=YHXpVLybJTo7ozZvQW0H58EoDkzAGtE1paRdG3PKPZ9yiYGJR7u5atPdxfnZrDyvIfCtcJ28Eavh/lwxnUtW0AbY82GAtZL6VbJxUJx4oRwmyeM0xVUwMAx39UFduhllFd7WTl8zzXbTAogudVRQg7n4bBvcQ5000sk/NE7iL8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQRKxipj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQRKxipj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6173C072AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 02:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713148762;
	bh=X6l2yJ5n9yBIPw4CwIUQVjAyAqNeYQB/URlcwUcoy60=;
	h=To:Subject:From:Date:From;
	b=LQRKxipjVUMBFcuFNo1VciPpcMoi2+eC/skLkpziYgPnf6goddXV5UcISfx7I/skK
	 tW/xcK7SJuJ/wGrhXhMxjxukz1U9IjYJ6F5f8pU85wgj6Orh+GtHtF5aQJcMQC128A
	 lC8qKmQU1Xinxd3scXN0KFgB8mfQm97jAQ1cHlL4GTAbRIIg09yAn1o/+2xEOBwkFi
	 d0ie0ObYjw/7gLeR3DSKsfVTLiiDTDadH0Tgl59RgF2LsNFQ+zjWGXruOkdUAGT22N
	 HMYsUh1i6ewArAj1Bk6XAO4LrwCo72xRQZKOH63tDrk1YFhWD43W2abp++lKaOesBd
	 jI9AilsiClSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECA8C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 02:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171314876275.30759.12094951398230284051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75b4b34e25ba1514c68483ccfc76cedcf028b8d011148ffbc12e33fe3e2570c
Date: Mon, 15 Apr 2024 02:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713148762
