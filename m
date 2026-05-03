Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4771D1DED5B
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777781254; cv=none; b=TbZFcK66iWfWL92yAQodpY3qxsBodcb+epWCtgazHj50qojmEdotR1pfX7PTkXMNd0ZeSNt/s2GwwcN1bub9NzM1tOV0r7Eu8EQEuxtfpXozzFoEjoVquaHxakzyWEzCylzsGvCbpfGaqn1llNo5hRCi6NheapkiV42YRy/FlUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777781254; c=relaxed/simple;
	bh=KxAZSRBHJu8TEvzHyRs/eEnSQPJToE5mblM0rwn7e9U=;
	h=To:Subject:From:Message-Id:Date; b=ajUqKKvEIS2Oe6V+5apoyKljq3BhCtdLGhWvvWolrOj7GV4gNpn6MgTpBCFHLvxGimXp5IP40ciQZnmiYoIaTeOrbL9UoHFF9bZh872u+OyAZzHurIRbZpsOFhPzQoMRA2nXgujO+KzcoPA6/lgGNowlJ0WQlRBrz5Ra8Xgq+SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loKQblNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loKQblNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12D8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777781253;
	bh=KxAZSRBHJu8TEvzHyRs/eEnSQPJToE5mblM0rwn7e9U=;
	h=To:Subject:From:Date:From;
	b=loKQblNs8k3J/eF9g1bKLeaua7RjWaUudVo0O9t0nHaTtbIQop4g09/8F4cX//rMl
	 G5fMGOf6PQRfy6WkiskEMMEkOFZtRhBlz1OAylpt/i2Z0XTcYgcXndTX//UxRZhVGV
	 sPTK/XT/tDjQlE4AGR6mx7XZ6QNYpYQ/LQ5hQJxjO6vQBoNlY2b7zmXXrzV7MS6MSG
	 6gFXupUwBFriMWJim0ciL8Z5r2PBlu+e1XvEZze9g8JdUdKnIm3QN+TrBwkZ+IHuXN
	 nGIMVxi34hYFH0K7ZYsjOAp7BCVAr4beMhyBPpvA8EV1I8VKVJL6l7BVw0Oc19CqDz
	 9kVTY+4/Lbhhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC69AFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778125368.3121.9089826831748337748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ae41a48e9d15221694aa821d142ef29194ba0d560ef7651b3f2e9983eac7c8
Date: Sun, 03 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777781253
