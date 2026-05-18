Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D653405C5F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779065434; cv=none; b=uhpCSrjtGv/ZjYorjKU3bZOzWVibGqreegxEjCxug/dO1n/8jnXvkmkdKG6qMKLHofJyhjtUFfMhlQMBY+v2Q5t7+JqqMckkFVQMd/YpsCsxZInTEcjHqLB61s2OKmPqczloGiYrGZZJRKf727Bi+vu4WBB0fSymlADNsUoiK4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779065434; c=relaxed/simple;
	bh=eyXrJShvQ9HmDq04jCiNqnQn1WegNFBnGJycB4KrZ7s=;
	h=To:Subject:From:Message-Id:Date; b=kTclAcp+xXnm9Umx5XUZL4av/AwNi0hUG6zBYWFQeTbQjisqH8OBJKZBiD+234xCS+XvxU/WaVTfgRs4DsY6olhFbQKTNlYD4yfis87cx8btXVF2w7oGetzRPN2V8iJgsWOq/KVp9TgCt+qPpRGO+yb+admIvSeep8WCZIpsfwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqS0y0nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqS0y0nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0E5C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779065433;
	bh=eyXrJShvQ9HmDq04jCiNqnQn1WegNFBnGJycB4KrZ7s=;
	h=To:Subject:From:Date:From;
	b=PqS0y0nmVwT/3mdCJUb1ymX0yPQ/bUlld05mlAYOmtKotbJxln1cu3M2Q/b3nyy9S
	 V88zr3McIc/BqDDAybCqzPwzN/2TU7BR+JxMQOWdHBQULphL+VOl3efzp1uBi7sRlv
	 IxPjG8LM/lX+N5r/E0XTAsnNFrAO9Yqz9BlhGLuPJk+7dSc6IUZbS21jJ4V4NSiQ3f
	 kwP2R98M8J2qlTU/Ym+KFtcqIOxyLAGit5rkuVEDCl+mqgHwDv6Yqtl+oGUC9BreNL
	 RZX8I46MmfxnJBTTscQDDAZa3FZmDaT5JO+amfNcCOmY3RAolnZT6t1enbGOgGbLMg
	 xwQcLGvtyk6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A56CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906543368.4579.5014164105464358914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5acaac58710028499b70f951acb9fe5672c773fef1b94edc14176394eea58f6
Date: Mon, 18 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779065433
