Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6E2101EC
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706950697; cv=none; b=HEHBtF3wya2neVljsLoDBqmPEZxetciUMt0zwLBAGf04arZh03tabJVxAivLxwfNRLnBSdf3fXQzNhNhwLAPivOG2ydXtLmnEZktFqfKiRyiERmSxPGbyuqte0LYJRwSxpieGUpJhWHZbCE6OriiQsSjrt9c9jcE2rcl8SIGfRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706950697; c=relaxed/simple;
	bh=GFMKrC9DJrRxhQEtZcjTj5rdUqXVoEhh/GRb5Pi9Lno=;
	h=To:Subject:From:Message-Id:Date; b=pmiWqr445fnqeqUth/WJYZFo+Nwbk2u4WJTZ2gW2p0c1c82UQdM4EkzY6iWwaJjszayAv4j3ftiPqzPxMcu5aW7sitEJl4MlUw527nJzQFa8uzYpyzgtRhEvMRxYr+KmmBwfaVMWo+qo5Ta020nZJGcJRLNw0OsbgfRYZx+5fLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeqbqMDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeqbqMDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79897C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706950696;
	bh=GFMKrC9DJrRxhQEtZcjTj5rdUqXVoEhh/GRb5Pi9Lno=;
	h=To:Subject:From:Date:From;
	b=eeqbqMDZyRISZ4LHUPBGZZv/11LxchMpq/Y6vVH6KlN0kKL5Bbc3sGUlWZNj74hfu
	 Qtqycwo7VNE/EDh0/CV2zm+pOS7ItijBBlcndio6CejHFhrnqaLxHat6BQjPS+QQc7
	 L69M0c29lH6IzEtwsYmn72tYSeXSYKVmnvvCXytF3dmfgioyYVU0mM6KhzGsILqv63
	 QwJeoNdUsBEys2MkvBR2wuoIZUFGXK+LPvamEtc6qFF6IjFK8m2BhTFiIrtLa4+RMx
	 xYQ3WzXsxOsaVvNta5HxFrE9B6OcT0u/6uUT7lZ0IlMKr/n0M+RVW0pzveC86zZrrM
	 iIR0td6lRinOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F58BC4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170695069638.27041.7480883324399855071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7afca5119c498a15cf457f870eb440f3150f36288f0cc31af9b61f1e0823a0cf
Date: Sat, 03 Feb 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706950696
