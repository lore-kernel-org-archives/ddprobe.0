Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B5B27FB3A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784426914; cv=none; b=sQHb3adF56bgbznZg/GOg0pDsPK5hXnd56IGAhZPtoskFX50aRPy3Bs6kJxW0Iu4xqfPYGtdbvuIYVwxZXJ/3MjkHX/fpfQbOCLCOm5aJJ1BZZwEYQkcpPxrxJtG/XrHOTA0DN2WSuOhSFJ4rF/1JgrO77QHomSDyIMqrC9dqjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784426914; c=relaxed/simple;
	bh=Oa5PSgQmPCSVifs7fYbRivAnSHl94KqNkpTt0hOOkeA=;
	h=To:Subject:From:Message-Id:Date; b=Rpr59lX4/0DlFUw4Z1PGJsnvdvC5EquiRop7bSmSG0eooY8L5CwLQCJAessUO6yGvspXZbT/TwJ2LLt5OQzywOfGqmVVl6/60z/kBo3xrh9pbAD/NV+MRm3lFI00XWex8JMYjoRrL10pOHbDZlFw5chD1MY7CKgFUOhF0n4Lx3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6MMkfTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6MMkfTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1D2C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784426913;
	bh=Oa5PSgQmPCSVifs7fYbRivAnSHl94KqNkpTt0hOOkeA=;
	h=To:Subject:From:Date:From;
	b=R6MMkfTv/P2WA9Knl6HB/zBXDWwj7svF/G6NOJez8gRBg9Pg0OeTCcOzgQeS0CQ97
	 IoAgCER4P391Oar61F7XL9NTDo3tdyXOnuAZn5GmJYHBujf9yriRgBhOqVpCLCT8xa
	 eGCRX7c1UVnn/TuTRF7827fMGnZGVnnP+KNESmkS8EgBG4h4mU6pbg9unqswoxwnYN
	 Y5fTXhLstuLqYHj76UcrxDPfZ/WQlJsQQjrJamI92aJA/bbCQ5zzE8TL53xp6FPehs
	 w6TmqcmtscSOYJAu6wpkLEkbqUaPlw6GAj8VKqHGb2iBG1L/Z0AZbxbMER10D0sKIq
	 aW2FKp4/iiLCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE60C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442691370.22361.5896705359606655086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85d686f073e6548cb61e53fdc60f6850db69e95fc9369210b09167566840cdba
Date: Sun, 19 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784426913
