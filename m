Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2861A348C4B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780889074; cv=none; b=nT3tbgmGAUMftxzLFzeXw0G0p75bHdueHN5HqwI0RX05KrbHpITrAuVolv5R9lAkBfbsU+sB01LgTIHjtrjIKDyAkRPpnnBFjo5V1fkksfSGkYWlpJgfpCHQFcqQamGWEr1ClQXagTCyIcWoqy4FNqsbqn+yR63dKA0DZxi5Ues=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780889074; c=relaxed/simple;
	bh=mqZlfD/WRywxfljN2x6LklGhloV/jgne02LR3czGCwg=;
	h=To:Subject:From:Message-Id:Date; b=jbEjK4WYRvkjBrv2et1GmXdGsMS6gAmyg8UffX3tlgWAtsC1K3HN6s+ebEHoNYDyimN/TLpf9AI5p0rlKieqd1ENLFmIgeaRhgmeAtV+5/VCEMIO9r3SIQPMoccmqg4n+LskZnvRAOMpisYf1szDpB46Et4KPyXIppVyE4aR6hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1Wfzlaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1Wfzlaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73DCC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780889073;
	bh=mqZlfD/WRywxfljN2x6LklGhloV/jgne02LR3czGCwg=;
	h=To:Subject:From:Date:From;
	b=K1WfzlawQPGJguqENRCkj018KzsivK0TtHEFSMFdDeF1IwUF8EnVr08lFnnV50uZ3
	 xh8iFoEv6S8eMMOKhUbQKsOT8qut/BcVonTeI266HgzRUrAcCaNRzTewglSsHivuvN
	 JISyCW0XKZThTNJD5kfIBd5uNz54utBf3lzxoGKaA6lVGfAQV2bYsTynmOUF1L9SgW
	 IzLnQoOssmeK/Og9Dy+DnPjYqofiqnyMFU3kpytl0pD5rN3XHcECCD4u17jOx7Px6N
	 Xy2Nf5/KySpqN/ca9f2o2sU7DOz08L6OrGdahkpsKB0ufstFneloE70Mb3NWvT5oVz
	 CTHzAqO1Pl9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9075CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088907371.26849.4435986136203739463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80682bdfd450dcea40fa76ae8d487dab503c5720e79f9a40b17696d0ef691eba
Date: Mon, 08 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780889073
