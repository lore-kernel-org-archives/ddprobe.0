Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AF14D6C4F
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792350034; cv=none; b=NsuPlgU2zWLM8cw7FQu/jMthpQ+l8c28DyVQq6NPVT5Lbg0TZFkt75dSVO0ke9kGIV2H4RkvwyiRRyNIk23ZILgx4SgjNVEXB4Tizsdiws/K72dL7zsjKarOHIBGXb1BHdSoJcJGeRlUPJH+JHp57fulvCJPEAcJu4yCDy3DZT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792350034; c=relaxed/simple;
	bh=lL6I7U4J6FYVkS8+/NmLpz4cCmTuYnELv2rO/XJ+yBw=;
	h=To:Subject:From:Message-Id:Date; b=Rglc01mQdlJ5lXJ9p1qwoT4BkvjU0Ntc44FrIvVr7xVbUuOzmFtJkROLawnz4f9725KvW7wcu7A9AVvfuaumykG1ti+CHYLQS1jcbXmiZ0CMM2N11bAEipALttYfqcENvTnhlHeTseEYaIzQlrCn0/U4TACub+sdWC/DmxFuEOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVbJjPYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVbJjPYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1286C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792350033;
	bh=lL6I7U4J6FYVkS8+/NmLpz4cCmTuYnELv2rO/XJ+yBw=;
	h=To:Subject:From:Date:From;
	b=tVbJjPYwf5wJZPLrt7VGRMxxA8NAuiBM1pR5fhgIYQHYFTOtnqKh/sKblTLoG59rU
	 rLvVJtqUfvBUMwxQ4gQ///9f9tKGd7fGccA7WOoIoGnPxBqHvDBzdWLyepZcBoeE/A
	 mHcR/reQI92UGy5g81i4wiRgF7kMsCXEehPSUVq4LNpBlSdIuyJD3XgrOLzsEM6cUN
	 vG3U8tAtmzwvsvxgBRcbuSxffuBJ9vqLB3zp62mcHEiRv/Ez27QG3DaGjEtB4UdjKh
	 SwgAJlj7TUvbRuOIa83TaBTWe2PQTUkYp0+/UT4Zqc/VKxqf0ZvXaMd9FxsqRFaucz
	 z1BVA0lNc9XBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFDCCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235003368.9202.1801109659288711704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604d57bdf475e3ee8cdbc598288adc5e00e295b5d5fc864df69d41042c6cb9e0
Date: Sun, 18 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792350033
