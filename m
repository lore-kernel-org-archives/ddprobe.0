Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A8F610B
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747528794; cv=none; b=uFkFezcRnTOebf3DLsk7qQNVo13zFGrzGY2tQWB3sQYk2XKV4EVZ+wL1/f7qU663MiRC2M1P6GmS8alzEYV4Yh+Y84yL/b5TqtGU1gU+zlHLEvJd3ocwEiMqBHgpGpfWxqasJH8LctPWfJfFLmHZvEwY7aJei1r4LQgaTOatLXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747528794; c=relaxed/simple;
	bh=oSY965RWbq3sJfNk2cuYLI1gCzxQ+eXaSnv9DeUjdTo=;
	h=To:Subject:From:Message-Id:Date; b=UlKGiG3/q4ymD5DrBCAqT88GCL2ix1QWNphhZnDRn7g0HMXvLRwQFJ3kVKIP1JP6UWFF6FZJE+68uDSUz+z8fEL0meyAtrFlq6UdQHIhJTvFQx8b5YVdKb1no/T3C3tt2GoVj07yrUje5Ht0JKL1vCbFu6XtdQNHemQbmzhi7S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0ae/hcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0ae/hcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F2DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747528793;
	bh=oSY965RWbq3sJfNk2cuYLI1gCzxQ+eXaSnv9DeUjdTo=;
	h=To:Subject:From:Date:From;
	b=f0ae/hcbGZ0OBbtALircqmQD5MbxDb4ipzd3spmuodJZmNybwXNVytE1yOGT3sFnr
	 MB9wal/Rxav8UjX1aRiu4+AWC9SXGjAZG2gK9L2u3pLJUhSdlhydgSXC5KDzmxATgD
	 lfxLsMPGKxdmH84H737IX4Jpx9g0KGvV3reFP3rR4rworSJFd0lDwCD83/iEfOLKto
	 D+EFP84+mdZT4uJkL/okLgaCXSeFdTyseLpy1PyUzeDC+qgRPTcDZCZ6BibGHN3aFJ
	 yyrBWGhoa65+75E5y2t5IisKe5ASiSa6lfuCO/VlYHGGww9kVKayIyd9UoFfMFEvqM
	 0h7qnLd/9ak4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517FC2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752879357.12606.16603057610836473339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20b7515671f15da953733f66c0f53ac45706a0428a6d04ad2603b5fcddaff7f
Date: Sun, 18 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747528793
