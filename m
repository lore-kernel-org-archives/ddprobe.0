Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3982A417BF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784551114; cv=none; b=plFCc2Xcl8D1Bgr+RXhLuWevLizg8JH3sN+uF/MnopaRtPUwTVY6LAW/mVb1uI7cGDOzQIrJ+oKtGQ7zlXGQ2SfxvmKhX7V4cHaVqwOiCYRyh4jtk8UD3v3vWzBC7KcIPSSpjw8fZQysi1OnVUm1cFaUza4CQgd9sS/T/CTJMkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784551114; c=relaxed/simple;
	bh=7W5ZPHZq9leL/L9vgqxuHH2HcFBL0/WteiateDG/l2Q=;
	h=To:Subject:From:Message-Id:Date; b=YjIDNAjezOsRa1GdzIkldyfaIYbTjdtzgvgOU6EWgnp7ZoNvadX2jT8lLRrcgnQcrEbl+nGHn4TzntiKGxrMv1vS9n3QKc4c8YRbVug0fzL1HYeNWIH6ibMa9MwXp0aOilpLnIHTKvg4XjWK7bWtXkBohwLcRKz1r+d8S59eUpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El7ml7T1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El7ml7T1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65FEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784551113;
	bh=7W5ZPHZq9leL/L9vgqxuHH2HcFBL0/WteiateDG/l2Q=;
	h=To:Subject:From:Date:From;
	b=El7ml7T1dq4f6u7vQTpvDfumXJmGV39oM5rgnMApL1cN715Vrz+s34wwXfEo959rl
	 UUxfyoiLusRJparFR7PTZfKvdnkHOC27UuKCwvUJE4NDplyzBqaVn5FBrui3+kHRhJ
	 BwoUEb9N1/fyC9z1rUZmznuXEuhfAmgMALXfOn/FR0nPco8wU5kexOYgt2Oj80zR0W
	 sPTfijhwD0VRozGMbvWkmz/NIN2iHpsO1hgO6Ibd9chXiIJob9zx6S+vZzGmjd+gni
	 AwmwDzlVeo/EHtgpSpl0WApz1oUEQGKh/tcD0wF2PG/Wp/lIXJSRGspfh9dKzkOQOB
	 koqoI33sEVyGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29EAC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455111372.17860.6672571153827896122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed3dc3254f3e8199faa52815db5ec2cec55b3be21f86665e8f93df5697f6240
Date: Mon, 20 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784551113
