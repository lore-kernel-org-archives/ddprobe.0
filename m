Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3087828F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725729954; cv=none; b=h5eBBvCDVd2WDcXrK2ULyZgcUCojUwTJEi1XspHk+RUZm0/8A5sL3op7hSU+8XS0miAtpm2DXXR6i0yz4z/P/7Ph4PubuR/sYKVada4aIQUA8m3bS9EbswNQlMh5GFsl0Q9nKNPpoJZ2dZJ5lrx2kYcN7TcUFz7m+1TixApFeNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725729954; c=relaxed/simple;
	bh=5lTw7HYOXnpJYkdlEhzcQaHU9cmhhR3D0pFX24z1ds4=;
	h=To:Subject:From:Message-Id:Date; b=DcjNDQZQopQpMzx2AQ2BrpluNnzHdH03tXZwtBhbkaQWp2/6hFtovwZJ8FtJ13A8/EP7G0M0YlAxcqHKs9xtQ/7flAg+ygA33u7XAcCD4PH7YBPcchbpDjrrn8IMNJH06tR0a4PvKXVApjaCaSHz7qT7+nJqZGYc1EsHRDukDzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQXCVYQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQXCVYQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB682C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725729953;
	bh=5lTw7HYOXnpJYkdlEhzcQaHU9cmhhR3D0pFX24z1ds4=;
	h=To:Subject:From:Date:From;
	b=NQXCVYQaTbWPWtLyLYx4B5pKZKQCku09wm664Xn5R/oxd0Z+1fr4550saM9Thx++R
	 gYGTGoUI2/jOQY8OQkuWg4ny19KwiuSqRYMsv+iLbNHCloAkzA1mnJlKu1kl2Vb0uz
	 i5YCNE5DehP+kIi3Vd0mjaIDluiG1Vll+Qsv1wD0nWFCNHkHFI8fenqLyhwI8iqhOy
	 BW8RGTqRuIb3rklIc/FM+adEe5S13dGrOHpGhQPI8wXTJcVNVQBKLHGnrT0S2EQ9at
	 uJzNYx9mWtKMa3KwgtqPbsP4W2fKOfzqSTHuDMdx7L9t0KgJwHU6VxbKI9vrduurc4
	 Edq2TqBGQ0zOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABBFEB64CD
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172572995359.16674.6291138145093069844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2710c331f4942796b8c7ddce229ddc31770db4fd8bfe4e0a182bf7e70f11dbd5
Date: Sat, 07 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725729953
