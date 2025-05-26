Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D4E1B423D
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748302795; cv=none; b=aOrrtcAPIEUfMyPGOgNZFw6lyy3/iMBVj3wRUTPBMqcp3WDL6Wzx8h2X7+v3ANHglTPeIZmqC2UgKhzM59p2fuvioL9MDQpsQmnAXf0yP7aOjDcuNM0m6JazfRIx0W06Klvr1/wyIPFIeM5h5j7bxD4FCk9UHyeY6CrP20vx4wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748302795; c=relaxed/simple;
	bh=7Beolva18Ss59aAjrp+bTEoW3MKDGKH5NrfnXr225HQ=;
	h=To:Subject:From:Message-Id:Date; b=LB0zRO2fhuWbkzFwgwlkzGlBrImj5zPv/jgu5mdExG/zebJYQDZH4JgE7emv32dH2ICu3KPumFUM5tG3xaSttdzlmy/TtLvon5QWDE/4gZYKpOZJfQbs5rmjLPTATneG9hJE/v6K83fopWImDEyQ8ltKV+OqLTZV+jSuFfgFyW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flq/+iWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flq/+iWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6889C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748302793;
	bh=7Beolva18Ss59aAjrp+bTEoW3MKDGKH5NrfnXr225HQ=;
	h=To:Subject:From:Date:From;
	b=flq/+iWtNSQxNZ/52XhecpkLh8X4ph+2WFM2Kdl47Z0E/nVWBWtzaB7P6Auo24LKP
	 ft6dVjU9w2F+yyHhgdhM6BM3vQ6PjFyJkzqYqvdaTyGOGvtFka2hvs2Sr7+sHNR6zW
	 xhDl2b05Mh4c/lqCYzA4ZEOpRNbzqVQvf6JuWqGByVxL19Ch2/NhbtFSWWXa1KocI6
	 EKc4fH6o90KZKk/5l6Cz0Kh/CwiSPo404rxys6ub/tZG/P6GRHFdmtuZeb5LFLPGAr
	 0eHW5wDdZcfADmQSmziDO56aebU2g/fKYfl7lI6fqMvID6Hd3WyYNphjQ3koM9dCia
	 1R0tAovaCfbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94581C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830279357.21447.4895779461045533615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 088b6a2afcd087be12d9262729df05b8b84105d84571ed66f61f7ea3b72d362c
Date: Mon, 26 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748302793
