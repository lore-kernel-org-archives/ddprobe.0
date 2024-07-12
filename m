Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813BF1BC3C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720825763; cv=none; b=OpFNgcvwLoMd2FaZgioC11qE7cmB5Axvd7Rl7X2R1kYZCo4/v2nRUmpMfJNAy5u2k1MjMAHmBzsdwBZUnW6cryBnTybDjn6eHpRZ24wNn5AsWAyRjAPolWnT9418VLQKeiLEgSDImw5zZBnLbgyQwENbpP2gvGlsrIbWQ/BtiiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720825763; c=relaxed/simple;
	bh=KjCAtYGrkyyYuE6YPiTVVrRhhyrFbIfunVDo7JO/qbg=;
	h=To:Subject:From:Message-Id:Date; b=ikRtKOhM6T4KEKZLNxbkThQzn8Quo2lZEht5UtY+O1/LfEzGc1fO/eY0Iufs078ZMSKGK9qpibqrncfobz/sGaBN6SAAAILiFANqnUdS84zGgm50rLI9QD9bYGXQ60P+0eOZkzi/2QoDmS0B+SpH0qi5gSyV+rqkjvOoh5KJDis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giUE6skR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giUE6skR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E693FC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720825762;
	bh=KjCAtYGrkyyYuE6YPiTVVrRhhyrFbIfunVDo7JO/qbg=;
	h=To:Subject:From:Date:From;
	b=giUE6skR8m5qipzs43uNEbURBKtExkwl4+JXkzZPJd9NQf8ahgsJk0T/9wf4m1ks9
	 M9GTrUTm5kCFtID68yK+BM9wH2T0427NYEglCim1osyEfZjUdjVgdEli0gwaY1KOXU
	 GwjXmtJJpuV6kXbH+M5CXDPErMk+AD8kqa+RnUEo5qzm74NshS96ZqDTz/tP4x/Zq3
	 6E0GJb4/oWyOqO0OwcK42LQuazceddoA0byehNIlHUxe3rVdWf+luJstx3mup/Su6W
	 0DhlO7V4EsenZhucc21XQEo+TOn7h+ZLYQMWfrIO1/rkUjxz9I81lF8DcJoJ9VFVg5
	 CP0Oj+mTUyc+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E58C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 23:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082576278.7454.293071471584775878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd32f418384c0ba536e1d76077a1cc0e34b8b9b438cee9f1a86d215a9065cf67
Date: Fri, 12 Jul 2024 23:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720825762
