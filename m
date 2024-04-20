Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596C518AE0
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713648623; cv=none; b=J+uhovvAKS+g/94EoYmaReCLiKSKJUup2hF0UwRJNZBgXGbP0FXzV0lX3NSCynhEy0I/vGKD7LiqqDuC5RzYF7SVU2yGYpV5wO0mpT4TTeKWo5U3jnDtzU1otx+R7xLDRIOplBSrxwRk8mftexauva0YL2RPXxUtPugvZ2ftFew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713648623; c=relaxed/simple;
	bh=MkmU4iqJwzfUJDJFdi9lxGoR6VOfc8hLPrzQfr5AtiA=;
	h=To:Subject:From:Message-Id:Date; b=G2MZQ/2CFRP2ToqdH1t20MjYSod1xJAi6mGDyBy9y//trBjFhgBgwX2nVpF926XLHGmz/9wJrOjT8QZDeuSfM4MPblyEaAg/t/DI4X0LkyLKKmkGpNp9rELCPfjbAfNqPcki7U11zh7KvlUteM4xY3220bAlGAeUzUZcL0Tw/9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGbiceF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGbiceF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED396C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713648623;
	bh=MkmU4iqJwzfUJDJFdi9lxGoR6VOfc8hLPrzQfr5AtiA=;
	h=To:Subject:From:Date:From;
	b=NGbiceF5fQkCp5yK1dtBdl5BWKLKn3e9g4uJLg96kjRTEh0BrcBI+6bG+Iy22ys8U
	 28WGJZIeff4zasXP4uvFEwmOMqN/igMO73/qxZ/JoeDsKmwDr0e57GkQsJMEQkHuuF
	 PT87niDvZAQge1vfs130rbgQXIQZbkb/nTOUKUgeNN6TyvJr7ulSpmmiHdKi3I1sZT
	 3gqOBhGR+6Nn1v/fuk/visXYINqtiFYJ++hXWHOq6q6QUyGsR8a1sJe+h5Nd2v+a3Q
	 8bzebjqAA2Q11m5a3EhO3fT0m47lPrIye8na2iJTvDm6Fzlp7/I14VywcdVnWoq1qB
	 ei80PjDfydM3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD21BC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364862281.20480.4659385222742482271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ec2028daa227e2d288b1532550085f1cfc7621a179f28325c828819bb8fb87
Date: Sat, 20 Apr 2024 21:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713648622
