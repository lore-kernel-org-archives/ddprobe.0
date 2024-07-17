Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642254A23
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721176523; cv=none; b=iPCBG/rcq0s1aVqp5NE5CycEdO9xS8RoYwwyKVmdzR3qDcQBfMeUsvhdumgpRjeaCe8lNULT0wZyd9BS2suKv4CsCgayciQqxMMT0fAdyJ0Mb3SbDaBlK1UsVUBJ3mE00I+r4FhiJb7WGCPUgLoxsStQEcic5mZjjsX46tOmVAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721176523; c=relaxed/simple;
	bh=K1VyPILhG7/RcQFq7ZNo+IqGyaZEW8K0i49BD8z3Dyw=;
	h=To:Subject:From:Message-Id:Date; b=nuc6q+VPuWgalKGRy9o05HPXmWIdC+k5eHYr6ga0CYlN5jmO5AQKerrWGPh5kY/5gx72sNrTlSMkU3DEv9bz0XtbyY+hRH3bxWQTivgREV2t1A2XftQ4uQkXtA3R7/tgwO/ebvVwdKw/Ew4T/jIj1QNsNE2ZxUp1Z62aRTt/yVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwoBMzcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwoBMzcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D63C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721176522;
	bh=K1VyPILhG7/RcQFq7ZNo+IqGyaZEW8K0i49BD8z3Dyw=;
	h=To:Subject:From:Date:From;
	b=AwoBMzcWP6MhMRVZ0FeETWx2vn6qWEFwsu7qp8eeGW8p3LfObVTmZtNAAd4nbcNnb
	 qVssdjlhmX5BgFKDUuDLwdMlGCUuZL90Oeb52cLSQ54t110XdWrGuTgOOeNEx3rhvs
	 YWVa5YbInx1pgof7jLfZQWSRK5xX+MAUrpJlosLKQjI1NXzL92UmtD6TDiiu2Cpzsi
	 hAtAUljP8LrE920hi4epI9FMMaIpQz3StoqMazje6Ovng3Rxsd0CpDigydwK2g3C5r
	 THq43WcGe+Sygo+b8WXuRaTgya9sw32fjKv/3wq8ZJpdb2PNYz7126v1pN8VduJ3sw
	 9XOZR02XiFXEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA5CC3DA59
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 00:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117652277.25592.11241779680199322317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af7d0325796403c795aab27908e0b9c182f7a2bdf94ae7263d27287c1b23979
Date: Wed, 17 Jul 2024 00:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721176522
