Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180BD2857F0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762825194; cv=none; b=Rh2Ax6lkgbR8z9W8PD6cYIeNDydFe4DjM9+UOLAuxi8f3FM/TQ8q8+uuvyLy7NgNTUZIp2g4cuimXLR3ghJnDY9zJ9n++9rItUZ/EEH6LoFDb0OLghXxCyOqXsRFBgjgC60JjzhyA4cA9Ns7gD1DQ5z0arc7p6ui2NErUcqFYZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762825194; c=relaxed/simple;
	bh=JP0lvyAri9X2rUB1y5dO2YoyZzyEFGfN+Bu2hUzlUH8=;
	h=To:Subject:From:Message-Id:Date; b=K5j2TIoBII+Qa64Cdbsed6BjxFZjAb3dxtjayp4vkPUs2KTr2yoGOFYTq6sErMAO9U5H9JcUIu36aYmccmqS/D2n0iSa5T+3L6QT7ijsppjRmWHbgM9pVN5+kUf9gIrByHXOSxnFvIfnxhIbenANPLib1he6Honk6dACRJoKqBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6WlbUg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6WlbUg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BE4C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762825193;
	bh=JP0lvyAri9X2rUB1y5dO2YoyZzyEFGfN+Bu2hUzlUH8=;
	h=To:Subject:From:Date:From;
	b=U6WlbUg5jx+Y+Ql3bTDc0yfijgffVkmE5DNAUzaThGLHBkdsMuZCT0FivYBSLt9bl
	 c/qIU568RgpnXq2AgJjXG85I19ReOyncHDHjGaAJ3lQRHG1imMMjDhm1PNaCrTWgft
	 hAggbKRqTOYwT9HtO2Sd+L1dnDYayc10s9r32+Q6NT7u6Y/hQ8xpl892pNens/S95v
	 bPtBfhRzHqWT1IoRlTPuF7jw0AlSGat6ZBQ2ND2TDo/OWfWOxUBh1rjlAO5L1tnIB4
	 fzOcBGNh3gLBDRHx0drCoFk4MNbXz0DQ7EXrw0dI6u5qifjgWJQ021g5Ylz3Tx2Fl5
	 xk903EI5Dn/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9598ECCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282519360.29988.17616636839590306110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822e39ba330ba2171598c3bbe1eafafa1b3441bc516b00b5b976df8df1f6d1e6
Date: Tue, 11 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762825193
