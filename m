Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3716E1862
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782757114; cv=none; b=pXQEuVWyAMAKMkkhjCp9Slh4097ETuMjevoneG0xtFlKvZMJzzLjZzQh7kB7qEQ33vQPY5HZAQgM5BKj1B6B7gvanulzv/fb/LMPNrRuZ0zV1WYmElfQ2DMHY5mQO8qLr4W7a8iZvCa/7en0TlFSlAHbbaP+TiKr35Us5vcYqJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782757114; c=relaxed/simple;
	bh=R01u1JhGbRtNA2tJoLr3zyqUR1m3Y/CXOPAJ4ZOYO9U=;
	h=To:Subject:From:Message-Id:Date; b=TjoDyDWieuM1NsxztWPEZiBRerGI4QkO8t6j+apGw6/lxPDG7hc8TbuqFZMuoN4/hZS4B5vppOLRlP3dGaQ45b+bgA8FmrFwFrT3iUfvl6lMbwvofgIyUa9hdeZhQ8xg7D2gRJXWr1nWLFPMi/anK3nf0Hwo1dSDVdw9A6QigsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rckz9iqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rckz9iqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6330C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782757113;
	bh=R01u1JhGbRtNA2tJoLr3zyqUR1m3Y/CXOPAJ4ZOYO9U=;
	h=To:Subject:From:Date:From;
	b=Rckz9iqFs2NjgFvKaNhmyJ7MqMtH+h+xjQqKHxR5NR0aG/N3axMVxy8iF5S3uxgmY
	 nFzAcd6SoPxN2KLTy1MWvRfqUfCB1MiwoXm3NpumsWJQGgqOx6lV6GStUwcsjxtNrQ
	 08/0TSnDoVbTfSYbPFhIsx7hyKYYZCZqu5PsuGevs2FuuyuLII5KZasq+Q2lJIeuf+
	 RiLdMAgSpDODPGpBBym799JrfcjYEn8zGdZUEvzaQN8nVinVuWaQmAeASJECcao++u
	 y3pwEWoUEE4OnvgzwdLgb3sMY57LeuDS+Feek2yOrE3rwYkbBpDhk4DMMk5YjBSCNO
	 M2mqNh2pVAL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB0AC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275711369.3232.92212474248551061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12160c3023f672c6f13e890cf14f02308aa1695e485e8cbeaa36ee140debae25
Date: Mon, 29 Jun 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782757113
