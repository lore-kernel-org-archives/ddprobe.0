Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6FB2DCBE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748746193; cv=none; b=FOV0Thl6rWpYbDAGlSqQ/Rsw+3r2Ulizkw76nZ0aiNUcMUSRw/VE2P+FIfu9nBLKfMqiAZT2yCOR6CSslfTl/LyDjx5EiM3DsJXjxPHHDDmTFa5H+qd33JZQWmf/ExB+97CVn5kYIf1wQvszgjA87Pn5bMXkcYCWExK54meCBvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748746193; c=relaxed/simple;
	bh=JIlXtzgDDBIA+kD2sl24wGbzaY7N8FH5Rh1AoTq6a3Q=;
	h=To:Subject:From:Message-Id:Date; b=NZeLzIVTI/Sw6UJuHKC2RNOkx9l4c6qzV/yzaYKJUewsQbqFX5J60NQnEFPMR8/8f5ygOdwBQtnImzkBxMcS/G5fOBYB0nWNvdg3XdHimnAJ2KjMB4YIne9lVTT09+QH3O6uW8uW6SuK9ONShJfNnqzFQfXJgnsuu+95PGgnRl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCKTv3Il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCKTv3Il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64D4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748746193;
	bh=JIlXtzgDDBIA+kD2sl24wGbzaY7N8FH5Rh1AoTq6a3Q=;
	h=To:Subject:From:Date:From;
	b=qCKTv3IlAQ/3MJcdW0mV1uORqqXCsJ6U+5Qn5b3WRbUIHgqAwAwN1SK8fDAJAPmD8
	 hXyAPeD0QZCmKmaby8cq48GcJioHgqhLACUIDjLeOoJxrmA+6Fcr+kZkuelRhLDuk0
	 gp5wzuXi9onytJsmwF80W/8L7gB20EkmvuXF3ZSiSceubOAQP97B5EbL/jyLr21jPw
	 CqMmbSIUJNkBvQWsZpzMqKGWITOOwGYIPSNH1l66gmXaKo0WMBV2z/pCzKt8Y+GMAA
	 3Sb99Zrp90BeAhMGXtkZG5jLemSlcqpvKfPU7Emus/VioqDsITDEUpxY09qMU09h96
	 a0f4p3ARAm+zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94163C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874619357.23716.18124659493603186982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa4ab2bd87af14cd8cf4a69a8537a4479d76d706988607c38c764f248bd0e69
Date: Sun, 01 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748746193
