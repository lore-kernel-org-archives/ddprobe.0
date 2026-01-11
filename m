Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17582225415
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768155834; cv=none; b=Iq8rIbbF0WMP92btB4J8LoYKDBVqyzKNStLyTxnYsvazP7Ac93PtqH5Z+UOn2gqjAZJLY7y4ZqyAmDdrp1X0ti+EbUSYd3SVTUK26l7IC1qjrOdJmCs/cvPnQ/3MTPsqcjSS8mBhInBi/BiA3CsfJVx2gwiPTs8VGqyJ/f+Md3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768155834; c=relaxed/simple;
	bh=oIgqtCNvMTS1UXkYJE0w0K09IU8KMfshSExUq5WSV78=;
	h=To:Subject:From:Message-Id:Date; b=Dkvm+DvnwRkWOREesLU+MpvBlZFJQ8U7jS9++GEdm43sXoORpjXMIbgr1eWqIvnlEWUQ1I3ewZv+1diJmfilqnCwDB/GtrDFo737HqOQ/OAAew6I7u/1XDYJgO4h5CLceB0Dk9lH/nN2SpWhG+xxXxVMUQQaGy1J9UjL/ZVSQoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuWPxwNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuWPxwNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71EEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768155833;
	bh=oIgqtCNvMTS1UXkYJE0w0K09IU8KMfshSExUq5WSV78=;
	h=To:Subject:From:Date:From;
	b=HuWPxwNcft29Mp9433Lj81ubPlyayzSanCrqaRzcEmoAeWZcO9r21dNc8Ryb7gZ/t
	 K0JH0WdJPHD58WOxdrPJaEw3sFazkgI7T9EQejzi8u2ea3hcKgnx+JxNtqbkeRbON+
	 11fhJWbD4VJiN4XjfvtjoX4uetupEtz5bk+ern451Hu1Z3WCR+3rN+Uope2xlHfAwU
	 Z37pD6Mc7T4sPtwc2LxnTe5mt/XXOTZDTp1k5BypmpsfTV3xGUYFI8mb5H5R+BlUNB
	 Hdo0mDeoIsWj1YVwo95McriL/G6lviQebb1muTcZi5WYsVu0jJYPvwQoEpzQTya9EQ
	 eNQs2FAa4oRww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95623D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815583358.24174.1585055171984725910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea6bdb5081a88f503d5cf367dd2d07ceda7d76912cae98a1041fe73a59c333f
Date: Sun, 11 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768155833
