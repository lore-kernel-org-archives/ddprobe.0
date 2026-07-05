Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A35912D1F1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783293514; cv=none; b=ihL4hgvNd6z/iD+MJJuibBOw/nLZR32g40LVcuE3VL9ys7t+j/urwsvy/KDjwOj4Kv6Ki+CSJ3TZq+Zl5r3h72mjFDezKkQu99BsCzZiIUpWN0Rm+wvZg5V1X2YyMzygUZPnOJx/RceJGIwm+argvVz9T7SjAbXBfYAKD/9ewJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783293514; c=relaxed/simple;
	bh=eTYgv6QKGBZjoejIbQPRzFPThEYvks/gjs6aEed912c=;
	h=To:Subject:From:Message-Id:Date; b=Y+uzOfNih+9w1AKFN5m4uEO7KJWWC78Bg/tb/GYNNwCw8HvlbwLeoXlZhvexQNnpXdg5Z1zItO1tlnKdLY3h7VqNhdoAZhcLe+5Z0pU6UR4tRdSUJ2RZ142W3+MaFTOge/I2mU4dbyXMVYu+lY63U7EXfY5wp5VpcZdUH3iUpAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmS/O1H7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmS/O1H7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E75C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783293513;
	bh=eTYgv6QKGBZjoejIbQPRzFPThEYvks/gjs6aEed912c=;
	h=To:Subject:From:Date:From;
	b=qmS/O1H7xuTWoVjaGi4v+OzddaHOyewVG20/dzLBPtHmPwFZ1BdY9cbryzZfVZWgU
	 414qa8jp1Kelz95PPl7aAMhVHDNeNR593RqStgxy06WYPecmSsPzV9ntDvhC5AZqgM
	 4h/Caa+y53X1KAiq0LJ1cpE9kiUBxAWRsxOeaGyMlTIh6d7pX6dWr084VAlzX+UEP7
	 x7T5RE6r0XsGof7Q0Q0SNqteFTmKjdOXktnw6IhogEecqvx10wbWRW5nA/rY0Uqt3s
	 RBVC1JbIzIhqCXVYvjKiarbcYaOG6bxrHawiZOmENoN6oVLDIIqwnDl/z5zqlqlbjZ
	 4bRlyvM+wKDaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF767C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329351368.20000.13500345583181578930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d300e126e06169ceb282343349609b2f9de55a1de7d6855b142b1a1ea66e7dc5
Date: Sun, 05 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783293513
