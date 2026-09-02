Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EACA1E98EF
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788318634; cv=none; b=PcemR3ZqjKOqWye63HADuL2PRCy6m9j3/BoyrgkdJuYdOqLIRJMc7r5XCc2kgh3B1DdTI53CpiyoQAFycoUUyRS+Txu7sruMcJW1kaJ2TdSE3O33zRQs28Sd5vc46C29zhMA/07o9+ism9IqjyrwozbpGJ3C5JM1ma/RG/vXbRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788318634; c=relaxed/simple;
	bh=CLHgEVLbKOvNQhyubc5BraP7iul5mma2n4a7EtM/znA=;
	h=To:Subject:From:Message-Id:Date; b=blZDZBLO8ouNMkPxglTcTtgZVJDj2NUu1QMf4rA0qaDu5x9WoHt3YWu3OAD2wXwxbyB+7s5PpJcbtFMCNzTnk5F4n2+SvMnJeeWtsfQQwiGp+yrR6Wxfq+WnxcHPViAhWqwtjJPqoUkojqUJStOOzG22QfyxEYafGeNQyAqRf6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmgFdX/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmgFdX/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC59C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788318633;
	bh=CLHgEVLbKOvNQhyubc5BraP7iul5mma2n4a7EtM/znA=;
	h=To:Subject:From:Date:From;
	b=PmgFdX/4oCAck5bBPIimCHhQBE9uOxBLIRvc8mIpDxJFJ1vVICwTRFkYghCPLx/wf
	 cNPVwh3XQQxe170Ykaa4VTdlENuJNSY5r8shtGVFWL2sNeFQZeeA+im8xK/Pz2Lkdf
	 GLWVX3QcVZkHRTuhKcpT6XDtG1MjwBKK6JtLwGG4VpYZOQt5oYIVgP6xpNRh/0D0Il
	 +ci7vTdyginlBW0929leMdN/5DdHN6nRDJELEahVZB5mJn4L6t8ZrFZ0oo2DfS/nw8
	 zNJQ40rNCDAJQDsiE/bh/QZTH5GyzRIgnE+FkI52Zpq0t5SBIjIi2jjw5K8YRS1bpk
	 CKMe5YCTfcUIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3B0C624D0
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831863369.7558.11676716776203151987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e8042c071463013eb1367e4d06cf1b8508aea2d774233b7f3d86b092978062
Date: Wed, 02 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788318633
