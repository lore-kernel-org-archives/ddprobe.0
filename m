Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6907616078F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718988145; cv=none; b=Z4ir9UtY2b61A12zbAh5TwdlMBE63Ss872BGbMOlkQ55jC/9C/vKfwHlqAUgrl47CfA8cv99+IoYQNkRAovsqQn6Cr8E/CsKMg1h1Sk5uHffFBKvcUAAdBTfesqpZtv7ZO0VBiOX5Xqo9X1B3bFx9lGF0YliaF4mXyybEGsoKN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718988145; c=relaxed/simple;
	bh=RnpfafmE/D/vZa7w/2e0pl78RQU7h9kpSz9wKj+y9b4=;
	h=To:Subject:From:Message-Id:Date; b=NgH59VhAwhju/r9Yv7WB29y97rzLpVxEMlZB/xz5l2but2joDm+LVnvQXJemuq/+CyTnnmLvkWyROS9AETUs7aV+oreIaZmKkRWySn3s0qLI26kTWvgVjWWqKWFFJt0F2nwsre4IVUr8j8Fk7rzG3LUCSeVhTuAWwfqQhwOIbsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGJtw7xV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGJtw7xV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEC52C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718988143;
	bh=RnpfafmE/D/vZa7w/2e0pl78RQU7h9kpSz9wKj+y9b4=;
	h=To:Subject:From:Date:From;
	b=aGJtw7xVx1+2j0He3ZrgSFBtO7iJEcBKcTBPG8WOOxvmw9c3wOo4nH058ouewI8bM
	 AcJlaaX53IKQplKY/Hf3oYq7oBDHWrRHJk96OhOZtPRtjT7nQMRrorPcyQxf2GtxG/
	 ryv8rKEN3jEqShPnlH2J912m7JIdIJlv/ES1VWMTkS7gznHZ4RWAoNiZQAR1aT96GH
	 5P8Ah0WNhC7dBBc/i7oDRyzJ4NUYVUb5WccmHdal/aTnWt+OvpVXuAEldyToTtN+pw
	 SPBukjd+kY5S8qoLlXAhoN9OVdM0+4uVTtEMBg2pVw4aP7A5cKspljN+zZltMEe50Y
	 z4Jx8CUN9cXrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF452C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898814280.5003.14525232517841390375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb4425d7e602f7ebdc64226c3e75d888f2ce91c947d904c5f6546287584f1f4
Date: Fri, 21 Jun 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718988142
