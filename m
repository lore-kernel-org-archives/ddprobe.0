Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D3175A66
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777837654; cv=none; b=iNmeYXRQwY+YspJ/hz4mGZbjDWS+BV2gZbaWkhwXtHqvDNw9JI/x7W51F0ngGkGiggf0r7MmMyTSgLksdmwPBkKJNnF2DXVYUFOnideEikkWc/1Wo4F6j65FLbuMRO8UP1QwBUBSdBoS+zWtoLGdGEpO/QjUn3Guz5K99NyJnMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777837654; c=relaxed/simple;
	bh=Ne/NjACmfb1mudRPhbfgh0EkaKaiflhnTXWyis/Gxlw=;
	h=To:Subject:From:Message-Id:Date; b=AO8kDWw9cUW8u84sJXE6ZTvu1g7x61pt29DqnkROzKp75zW5sotGW4+RQ0tHhuEqvfk6atxEBnLDYKUwHEHH30ZgVyEs6HHu2+FZGFQj5nbINpReUbMxZM40/XNH6+fks+NCWe9Zms8JmVhZ2WCu0bn9IsMDKYzNvZSk6J5RIf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppy6oh3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppy6oh3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EA0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777837653;
	bh=Ne/NjACmfb1mudRPhbfgh0EkaKaiflhnTXWyis/Gxlw=;
	h=To:Subject:From:Date:From;
	b=ppy6oh3XAkf59JSUPCmaZBRD68CwOgVceKxXPpRqChahIHHCKqs9RCDLY+5AUkCkT
	 NoKBiSM+c6FRBBPtbT73Xs+c4aW2LdGuraMw6QxPnx/dmAB99hUj6OfyR+Nl33cqt+
	 d02cz0iqPMuFNP4/mh2VWpAvb8ecDKdnD7nGBVeI+7ps3oN07DYDLYAZLLjI+mSAOJ
	 QZh5wai0WaV1rvhzG5qRAgLbl2eo3nTow/W96iKK5CSobV/7fMQ8slppl1MJrl9wwP
	 dUvaeeh7XX7ikyzCkYMuaneYQta5bT3roXQrB4rC4EkUELT2pY0eQzTeHCg5rjGTYo
	 8BChowuTWCsOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6B8CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783765368.23582.12847954606820376126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9eb40bae6b0fe83e3890cb287012f4c1c6c6f680da93c2671930fd0ce1d380
Date: Sun, 03 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777837653
