Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5940DCA4E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780791274; cv=none; b=tDSbKZjN9/RmXjMlkcqCCNrmA6R9himmfnz2T8nC1lD6jt5q5uMb3LhZNppG15jqiD45VVxfaV/hZJTGLzsBR5LyhOr9RQhSxYJ33KZgve05kSni9f5z2RVTBcTQCVynKbXPBYyyTGmx6dctVrN64unPH2CYZ976iZuT4W/pL+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780791274; c=relaxed/simple;
	bh=BDmUUmNLAudOelh20WqlN7pV4a4CTBWEpqNI79ZnTB4=;
	h=To:Subject:From:Message-Id:Date; b=dRaJp1A1aPr16B1CSZt2W9LflSgJzd31jThEz8lLHagZlKrNtw/CP79IzCmN70JETQ95BsRObSSrqvUKIqcYr5XPw12jKXOwIyW+zMJJfAN2o/orna5YotXufY2ior9anF8eJ7BnR5L0rPGCRROilO8ZQWb1JJGdEL4MH3C0uas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj0F0U2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj0F0U2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCDE6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780791273;
	bh=BDmUUmNLAudOelh20WqlN7pV4a4CTBWEpqNI79ZnTB4=;
	h=To:Subject:From:Date:From;
	b=bj0F0U2VDGUc81dZsNDg0oEVf0Umw6YbaNhTwGEUeO9ya3bR3B8prQXDlbwCIQKs5
	 +Y9YjVWcZ1ZgI+osH91sHL/7aIoEXqlUKdnzFeNGYJEHqCb5nyA/CNm6c38rZ7YeGt
	 34yfWaRWWw/PAto597xxGpwYHN9CoPz6BEyH0/m+IrVpNoxGnIt8PUWqyBI54yNjUy
	 B5k68ODZVy+mfEuFoi92P7khSYQZDjjk29aLrGBO1hGRrAGyeStJlxnwDarsCv7OHM
	 5YUzsabPCh3fJCC08/ABuHbNjUYaQrUMLd7yrQ5+vpq8SM7UfOrlN/if5PQL1gOP91
	 Cjivv8WxMux+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8D8CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079127373.31232.8657100476310434109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f798442f4e77cd8b467218fe889fb9e1f40fb4967f474f6770a28f444e1f6eba
Date: Sun, 07 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780791273
