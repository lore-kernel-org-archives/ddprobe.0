Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648D45D8F0
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740385134; cv=none; b=cwsq3tXBWgMP7GG31RioAfXhv7FitDrIwdn+i3zs/b3vxZJNbGxFyDd5BgM5EQFGh4ADQv2biJl48PCo9mZ4/16nX4QlyX4fcfr/A4PUHTiZN3Ap8WMC49gOiWyxxjikODi8w9XN2gysqRn5vPH2JEEppmoBff35wiQ0C9raSZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740385134; c=relaxed/simple;
	bh=w/g1BR0W4LQ0sHVIxKqaj7vOoxmDpv575lM7T36N7/g=;
	h=To:Subject:From:Message-Id:Date; b=s70Gmt2WibovPeKN+U4DeBNbFz4VZ7v7JjFPoJBQcvZqkyvw+X378MRGMy5+JqAZs9GP5ynI0iTgMbLVZESUH9E8+Ty6x7b686LlfwozB7wMd8sE7vyiVdG59lpyJ4pwbKnvYh0OlRs4v+Gxoy26tNz5jvBN3r1zMNH9muqhXOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3JrE3cA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3JrE3cA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE3C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740385133;
	bh=w/g1BR0W4LQ0sHVIxKqaj7vOoxmDpv575lM7T36N7/g=;
	h=To:Subject:From:Date:From;
	b=C3JrE3cAzZ1rFnd6gzAQlNmXT/HJCTxG6tq2bm9OOLlWf2sJFbIZBCbIH0chXwbmE
	 GKGSUtVKSYIaGlQDs7YSJNlHHjObib5hvE277liYmxMz/VWCXo6rPMvB89gin97uhK
	 gze33edYbBsI/CEIQyILcidvZQCGcg+5zFVU38/ydrfy/sGCXSHkSeeyl1QE+RnHbE
	 myuQNhxArspM6cUm7Y00asQtf0GKhP+1Scv4bXYI8tbIz3UL2sJXXE3q0DXvhtZcmo
	 h656O5AOqmAy/Cok4jK6pPGwF5YXmV5l/RaLuHQgMykAXq1C1Z8A2zm1oN7hZgrmgf
	 IyH5YyZqid32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F9DC021B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174038513359.21570.1697480036539813648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec5f6762acc88570ac21b8e6235e6788671f800e0eebdc06f99f312fdf428711
Date: Mon, 24 Feb 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740385133
