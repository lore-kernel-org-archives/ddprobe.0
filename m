Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A1317571
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715403743; cv=none; b=KCcNr/CatmBBqo1gpwC1AtGNrHR9oTSbAHzSy0supiin6L3Hn6PIStf1hjK8JqPu7rlJCCNRoTqhPuKJMiu7ivuv+E9JP06idtWI5cxwA17HHkAYMyRWqbvw9vVOBxv39lYcGBroVfCWLu3n6klDGCs8/g5ev0VcUaeStlA5Sz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715403743; c=relaxed/simple;
	bh=kguifSqWjybXg2D+hMGthB07xL3ONLOrPCtRAXeygWA=;
	h=To:Subject:From:Message-Id:Date; b=EhjLWwgHjUMF+lWra6DAn+9dNQA7HlpMDM2ZTHsU35Wft9msgRdvQYvdICoRYB9pcdI+phQbgmMDUN7YvLs4DpLvkoTQqjLT/xLOIluWlBwfc7uk/h01sOxk0MWrIQA264bsDHeGFls37YHWt0DLmhmwzsBF+ldsnvN1UpyL+xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUK5Vqq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUK5Vqq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78D9C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715403742;
	bh=kguifSqWjybXg2D+hMGthB07xL3ONLOrPCtRAXeygWA=;
	h=To:Subject:From:Date:From;
	b=CUK5Vqq/MLWBlT/eDEmPzeOXsmpb4dFriQ7ioc5ZZmLC5Wj+7dD6YLpf7LeeVbdBW
	 mVibgEJG90Hp0IS/ftxOsZHI43nONFxWtNcF0/UkpcB4eRp3mT8zxrpSY2i3Wq/GeX
	 c+a99eGbka/Tz9ZicutEZvckVHFs2R33FefvJfRpGKaWW7ZPnBcD0pVOi+1Vxk0ppZ
	 X51ORNxkTJV8ucTtNdY0XoLIKRU1CAbgkZMpWytVddvGZPbrf3r8fWLv3DI1yZiB71
	 2RjOXmEYl5anOBCSh7lgRvIKBe5tXeu17yJNicWW3D+mbB9UYfUNx5luy4KvGab7tv
	 F7WE0wleLN4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20ABC25B4F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171540374275.31439.11085224853485026655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cb275933e344c7e64646710e6a1b345937196eea68abf9c62ac3409b6e6375
Date: Sat, 11 May 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715403742
