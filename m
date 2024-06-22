Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BDF10A0E
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719027143; cv=none; b=kqTiNmoUtlVGObUcSEkKYWf++LehEWu+FnAebA9tf5gsp/VeLEoWH2iViYMIy1JXS/F+vnM0BmaF8+UTwIYdMPxDMusoCZhsaqDFhB2MLOlbyk9KgCXHRSHEID4uAA1o8Vhn+caJ+QoQRjOKMZAVPPd6xFr5eu/pLcJr8q+GxoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719027143; c=relaxed/simple;
	bh=JdArcKqsscspviPWKkAqWcGuImLVLGV9G/eS5vpJJMc=;
	h=To:Subject:From:Message-Id:Date; b=DuRo/Kv4zUlCG1lQBNJE5Dwf2gKfHM/aSRiu9zmXL88tlLnPN4IFwagZJcZrEdWqf6ssjepq1BCOjB1Vv2t9KmhcOd4Qrb0U6z+8eNvGH+3DvYyX0oRnAKQ95hiKYwGEfnLvt4JYce0DWlsJ87Jk2skegikImhVxWk57yxtrdnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyAyjlht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyAyjlht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7CAC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719027142;
	bh=JdArcKqsscspviPWKkAqWcGuImLVLGV9G/eS5vpJJMc=;
	h=To:Subject:From:Date:From;
	b=fyAyjlhtCAAQwAMUxA2I8vq35OSWXqB/7MN6ZgXoigjJK4NpCRT/WVPaPOhxfwuGN
	 QLUWytJwNr9oN5isYqCPGsKMVp2gC+Sx8sl0ELLmfOsORKlUap2L56piol25/S5Aic
	 B+M6fZ3t8L7RbgCvpIESMRjyZsx3T3x2vMCVS3ZPhaJC40g++PLibfFNSdEaprsw8G
	 AKOti88zBv6x9P9YLXZNPmvmh2GLZGGxv1OWp3YHRhgre7T4Nn/zBDxZpmjNuDi3sj
	 2yJ5rbniznt3ZSAMJmV5LVaVW/l2xheP4yvy0wWS0jMCgKpewj/HtJMKPvIgSH1sfe
	 xnwFkG/9zLugg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C438DC27C78
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902714278.16316.4321954082762745320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7f4615dc5987365d8e5d17ed6a97b580e5de9c52f1e965a8165711f634ca3c
Date: Sat, 22 Jun 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719027142
