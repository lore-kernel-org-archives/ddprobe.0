Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EB730C361
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785297634; cv=none; b=lepJ0LTGKGKGnP+wTuFlJc57I21p5bpWycP2VdSWz9Z5opJuMwyZdedKsAey9NHel6oS5mO7OI9hfhau7FpbNAP5Vv2spGkTjePwC3c3ehIsGvUCNNt8Glq9aZ+mQn43bKspkeqN3Sq91RfpNvAYJzboVG0OSlz8mNItt6rao+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785297634; c=relaxed/simple;
	bh=pdGKBHagCB45xA9MNzGEMOj4k0KGYcIC4k0CvytbWG4=;
	h=To:Subject:From:Message-Id:Date; b=dEf/4C/zSieWKkZmA+9poYRWxCunWlv/7j8kdSoJtLPmoChWQmSM9i58mVWlLy5Cd2pEZDJjqVUDtkpRDJPRIqiWQgYeoin46BRWyVfufMjists7S9ffEmywyzijF65D1sA8gNCsyS+8gjXxQVpk4YZgm17MyR+ovz/hMYAy7Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqeDA1Ac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqeDA1Ac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EC4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785297633;
	bh=pdGKBHagCB45xA9MNzGEMOj4k0KGYcIC4k0CvytbWG4=;
	h=To:Subject:From:Date:From;
	b=eqeDA1AcYgIS+aB/S5YIFD4YbBI/XjR8LWDC+bLYrMQl2tc9Br+oQm3mz1/SWB777
	 7+CJoOFbtMejPI1OC5WrEnnHCwScuB5qVZgWB/NV0XQjTfkRIZa1CVQYkeN18k/9Vp
	 QgwJLiyq8PVfJdMn64bmKGCDNezlltacbDZb7F+LDRsFTcmJxSS97ns19qr8zdBjuV
	 EuSDhWAlGH6suW6DkSdqMlxCFVcVnN97gMRS/inf4TEoohJ1agcyD9EOcLjW/gME0x
	 vtSoZ64Db6cOdbE9rwR7bAEUKnBBR8cepkJnmwOotGPhVSq8azoLJbUoPaNnCwHs2Q
	 p+jN3GAwUvibQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE54FC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529763368.3906.1822238811655321000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc7f19e871586d2d61f9817f2f0e9448101728cd3f8f7f04ab4600456e005cc
Date: Wed, 29 Jul 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785297633
