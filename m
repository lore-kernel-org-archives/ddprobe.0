Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25151248F51
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747033794; cv=none; b=ngZ8hgobIcOJkoznVlHaeJ0clggeh3tuWmCwO4Vk4DkXD7W+c6IHRyZS4B1U30+4ACTUQEPNKqtyovKngY2uV4huX8KXd3Zg5dN8NlFJwgH+EaDmpR7C5IuCksOmy06YOJciFFAW+suZnQYjF4k8NSAldhwTCQwTvVgCurCewxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747033794; c=relaxed/simple;
	bh=DeSDAIJq55ZkW4K1Yq082e6ezy6LJ8dRrViQyC99WB0=;
	h=To:Subject:From:Message-Id:Date; b=qSjVq4czyIXo1qtFqDvoM7J8crbz4XyraV5+vqAqpnuSeYhfdtfp5iELroS6+cIvFF/IYKCGojFGdfyQS3uryBu7yr6Z69svx3QnHPZhVWqCLzh9OqyhxxAIPht1Bc0HC2JzvZJSeyhhHJBb8MUAawglWapzddREo1asTRhM9mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRxRhA0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRxRhA0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D347C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747033793;
	bh=DeSDAIJq55ZkW4K1Yq082e6ezy6LJ8dRrViQyC99WB0=;
	h=To:Subject:From:Date:From;
	b=lRxRhA0SutJXupJ9qKrN34oIT83REoghscu1cQhOxuh2TC2AcM7+HeCh+dWTAmLUE
	 kKeH4lHaTsrO4CC4c5VJY9EKyrvDs/w2lgmC4sCf4yYCZQfZ/LhVBxf+BIkc1SDplt
	 czJqls84fq1j3RVI2qNv1wHuUjx2uCdS1nJqaSE9ZO8iN2DPalH+IWbgW7TH2WVF4l
	 ixGUgdPlKRevwDti2Oh/Bkw/xghW0Xan3RdkkG1s2EcgQ+vtJ95KVc6sfWsHfz7QJV
	 wJ/XXrGHK/Csz175WhpgJht0C5avTR8Vnnc746C7VgCrrAovDKoXGDJ6qNE6Zgfwga
	 WY96TWzem+u9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F723C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703379357.1678.13838400642225481835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cb8cc2b3a8631a91a7bdffe2abdb92e060ddea4c63be46e3bd3bc3692fbe98
Date: Mon, 12 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747033793
