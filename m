Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074DF35A93B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770032034; cv=none; b=SUKiU+vhGdgQAX9wC6+vHilAv9GXxECcvF2l2cN+8cF/8hIwV40vdXZ6KPbK+a2oGj+vCq5ru3KFpgwzTQ6oEGvp3QKzGvNjiHmKjNvdEdaiFsuW5ffFT4CtZDVY8ZLQUGFydO65burDrCw8QeiUVD/nP8rHhk+XAXRaARhFp3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770032034; c=relaxed/simple;
	bh=lg5jP3ilY5ITmWKxH43wFxtdwYNqGrJENxQWAVfipz8=;
	h=To:Subject:From:Message-Id:Date; b=m4YD7iyw5lvGpflZjn8LlTdESlMjZ+ATDaMzu5tB+/Vg/+mwfx6c5aT3okZ1HfKqj0Pb+QObCmF2c5mzEUhHRCamq915QXbjvvu0ql0qakJnG+C39zmLfp6nMLqD4OXdl3lWu4YdopPG+qkbS85jR2dodWG6vGIKgwLI/cJfvkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM88A93n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM88A93n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58AAC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770032033;
	bh=lg5jP3ilY5ITmWKxH43wFxtdwYNqGrJENxQWAVfipz8=;
	h=To:Subject:From:Date:From;
	b=hM88A93npuRybq8QxVCQ+1hlV2wuaqGo2e4tSEwYH0H07tO0dLK2abe7QYHDOTV4g
	 9bzEpMzY/2IHrvy1i3AXR2zMH/buYKqjYJe0pEvAE2TCKtr2t4jiEOsA+b2Y4iVUFR
	 RuQROvBRIf45oKzX7mC7CHZaMl85bGlwmWv/qgzedCNTlxMv25qUs7NEMlCShaN+em
	 Xa20bMzDNQuvSvzss1FltC/CbQurP2hSQWM1Zgl5ubAv6n0NFX4MyVjo8RsWrPgoM+
	 S/kJxdWS3uK2IhURBsy++vQmdDqBABp5B+ofKnHPMWRJ1p0ve5wgAvpZ2ZTEAYW+y+
	 3ZQclikC4NFPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E9E7315B
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003203359.22206.14010328883668087679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eadfb682d54a1748682cccd3060420baa3f3291f2ba26f50494a2110af2ded1f
Date: Mon, 02 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770032033
