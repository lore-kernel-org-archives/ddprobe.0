Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D133328B61
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763136594; cv=none; b=R9FuEmqFfxrA3Ci94XCKg7b3Xy9x04rjHzIkDQsT+RSrnrgt3CQ6+REm+u4DByfJ/WXbJJtI4Qqa1Qfr93piT9lgLTzVkIp4ymWYS2zuNWMvMs5O84ssBsi5m637uJF0UCPgJNA8Vd3sskN4H7nQ0eHlbL75BDLj3y9/aq0ht0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763136594; c=relaxed/simple;
	bh=oGf66NT5bd3HcoiPDrrxKIbKviXkF3oV2Q5qm97/HZY=;
	h=To:Subject:From:Message-Id:Date; b=hv60yLLudakBvbaJF6JsImhBcTVKH3/bKBmFcQ6lazqCtP2GtUf5wElztKH80ld6CfwEN0uNW9z+Clgv7JhmPSsGng8KpNk1v/gN1b5uxnfWjK0+VA5MNe6CE3p9vmJnzsVoyaktaT0itHj8n1UD8+j9AfXMXWm0DwzPonN6FUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mpd6jXyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mpd6jXyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6030C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763136593;
	bh=oGf66NT5bd3HcoiPDrrxKIbKviXkF3oV2Q5qm97/HZY=;
	h=To:Subject:From:Date:From;
	b=Mpd6jXybS5hNN74muKZUoJlbn/Z10+908mAqnbQtQRSXkYUPqzksvIl44YG2jb4Mc
	 AIuV3y33R9eX+X74dBWVfO4vt83LpIKui9gNjJuwgzTFde4AJtp/WjRyALo9x7COim
	 chkmC/G9kZQKny9smdEEmD5uHV/C5T3Woxyr++2r0uR/XbAnnz/TurJ8hTpVv9sxjw
	 i4z04Kgxjy475TJttK06DWHDuvG6QY9qWVQjXHji7/NX2QTB1sMXPqitDh7gqSgGt3
	 Mias6+vrd6tRVRyt/A03+HdehJjWn20CUdq0JP5snj/+dnFfItI+66BKnAPr8+o2ZQ
	 11T8zeLl4p1hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985A5CE8D4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313659360.20746.14656189720878770713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabd367c6c236428a77fe1b727d14a3a2d2501046e8e1274c5df2b55ec4796b1
Date: Fri, 14 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763136593
