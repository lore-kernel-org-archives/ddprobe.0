Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CC74156DA
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791108034; cv=none; b=gedJ3maf/KJI6HnuM3qeCmkfgvO6FOzINDCEEliv++5UcyaNW7DEwVIIzLjK+t7KQxaJxeOhvhbaTinLvFdHa+2UbwC/UB5TvFa6d/yaJP4HN11kk11Oy6C8c04gdTYfR/4ZezG8RFmrnKek0Keo018RGZVJ2Onoh0uL4A8qkyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791108034; c=relaxed/simple;
	bh=9oUP8A/gYdVOWKf06dVZla7UHsU3gh+cWozufeTw7lY=;
	h=To:Subject:From:Message-Id:Date; b=PzTFY6//Au6YYZdS8xb2DpJGiSRnQgY4OeBdaAgtmrTqcVylKzfvVYHhI0EzJoZQZCYZbyfc6x+Tdun/SWn4SxP10HOCANIEACyrot3f4WEgobf+50sSvuhcH3Ng2e5Iaq0FAGacqzMTxMqNQSsg3abBHDEyjF9IojFWpQAO0aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncyOhZpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncyOhZpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD19C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791108033;
	bh=9oUP8A/gYdVOWKf06dVZla7UHsU3gh+cWozufeTw7lY=;
	h=To:Subject:From:Date:From;
	b=ncyOhZpDBJuawE5JbZqshZxRocwCZR/Ht3gI25NFEbmJLk81/zId+9UKh6GUtTmba
	 rf40iLr/iszeB1Pq0DT+oC9Nln1U4i5iijeSi8/I/hgKzOoGaBMY+YvYq48pHBvU51
	 952LgIf7BFgZ2otq7ovcSQg9xGZAnx8WbtouK6oKUqBI3r1e/Z/Ut7Lgil0jLTnnXb
	 Yg8JfDnp+GhF+oXd+vHULSbM2eKy21x9t7Idthay3AGyvXxj5vfW2moBOYepcVoYnR
	 BKZ5DajJQJorK/Vy4/1VWXzDhWqY0opyQPI/fXw+Pp5+RuITNCHpcEmXYIvicpabUi
	 Ls2U0QHNds83g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1F2CA5FEC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110803369.5638.12139337407852691317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5307abcf5b92f9531e6dd56247e5b207539140a9f3d87e5d9495e5c27784a3b3
Date: Sun, 04 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791108033
