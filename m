Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279291AAC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733538954; cv=none; b=rClWj+7NQVIGCkZKDvG3o6P+kQpPg2nLsthS2glSbU4anai4go1mdck691gVrWqlE+nyhAcWfgfL2kmKZP6WCIph9IgE96UXFKqioPashn2/qdFtb4yGeD/2qs0yr73sj9zlQsrJX+BH+sQK7DCa1Q3CHgqyAG4w/EIWN/Iqdtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733538954; c=relaxed/simple;
	bh=7OZ3wesnRI9t1k3pkGL440YOxU2E6Pl8CHh7nFhxDPk=;
	h=To:Subject:From:Message-Id:Date; b=YkSjlBRNDgt3B1jOJGlSbQL53LYF7+i35FsCT72PwFI7flFOd6ie+A9L7yjU7H9FdbTiyhS/CgTxF6cPWYLzRthhreQBweLGWjNHMWW/vg3RCHl9Svveea76Z/qwFsc2kvmoG8cSM7AvQFBw9qH166XFmoRCA6pXQkmbx9L5cm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBUbVCSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBUbVCSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB767C4CEDC
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733538953;
	bh=7OZ3wesnRI9t1k3pkGL440YOxU2E6Pl8CHh7nFhxDPk=;
	h=To:Subject:From:Date:From;
	b=kBUbVCSDwj6HzfgVsGkK0zt1s0xbSBPDWQ5qJjvk0algZvCMpn+5+GPAE1J7Hmn+/
	 qog7X4AY/3035bN5dldxiHFarUZL7B1mzddN86dPiFSHvFOfzRxGARiWs/w56shg+s
	 OC2XDhur92m0FEK4AnWLCQnH7QtaKcrbQxYhAPy4pc5P95vA0fvLMQX59S3AC+xlpF
	 aUjmMChFv2D/YP7DAOqfJXk4zvqzXJpCh0cpZlBSndCOeuBaWrMgUD8MEd9vaugZQN
	 XXPjSHt/eAw1D5Vc3XZDcYbor7rIyu5Q1k6oXFKKxBZ/EUm4I7LVePDemz4enRwZi5
	 B6T7sETyfA6Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96234E77173
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173353895358.12601.8832333471538940501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e661691a3243deaa64e158c0580d0ebe56311bdf24287d8c39b107e4b3ddfa7a
Date: Sat, 07 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733538953
