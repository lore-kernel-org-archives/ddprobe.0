Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C17502B1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734080154; cv=none; b=dNjkWB8fWpdL6VWibEiu7jcqc1E/lwfXvTcOLdubdnMHwpqKSoZKZsn1JztGwjsN4sXp5fajzAX5lt1UdYk50r+z3GbYFJXAoZc5q4JxFWLwd8x1WtMHbALikyhahKny7EL08j+bLQgLViBOH6G1MCiC8IEGhPkIxTy1ndv/VdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734080154; c=relaxed/simple;
	bh=fkBDhLSdPwU/sg0KXvdhnhM2DQJvJiEJZuf7PjSh3Oc=;
	h=To:Subject:From:Message-Id:Date; b=k78YhrQ/X6F3lc/xI275NWC6/3+U0oungLqqMWO2eKXDNvCqNWI3O0XAVakRcsoy7zr9MU/AGxq7115j1g2EXI1mFGrh5ouIKSfLBf1N3x3hqGVnjL6dDyzrwNG6QT80fjFjSL9WOI6EK+LBJgshhf/MsqnKByIg979ggDw1lD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpFzJkcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpFzJkcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40F7C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734080153;
	bh=fkBDhLSdPwU/sg0KXvdhnhM2DQJvJiEJZuf7PjSh3Oc=;
	h=To:Subject:From:Date:From;
	b=gpFzJkcI8qbhy/W1DMhvzJOOejUnuufzHEG729ejlInCh0TwodToaBZP5kFY+X3Sx
	 EKY1ztL3Wf8vDfoOZrN5yQ40ZR+Ktf8Vn+CV/JVvIdQuVMSZwECjkBZg7nKZ6qXQhL
	 LjkWdgBwLmmTfkO5tC6JhBr+3SIT7ibuk2yqjE8EFIzL4Xf0otQ5ano7cBMlwIA5bs
	 2XXxYyTGNLOQykW2HQvJOtKhFIoeVmZNjdM6eDo265USkHUnUaL9NrUz0fts03D2pk
	 X8A/HP6qgJv+3LxA9VBo6yGwF+1QgwTtSQ1Nba6bV1qlf6XLosL89iRuivV6AwCgao
	 KGUwBjRCtXydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EA0E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408015364.15388.8183161173091475689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e46548ba0627170e5ccd972f2a8dc33be2e5abf4365f444cea9455180c55004
Date: Fri, 13 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734080153
