Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B4934E760
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781114194; cv=none; b=DpXCH7nP0nwxJ8WXV8Vt5D/s2YaedH9JTS5siekD6K32qAfhHh0byl3k3TUB2ASzKuexEZLTnlAKnCtNybpGVezVPO4/p1YFLrQYQoq00bdQx/Er4VDIf+IQnF4O+t5ADwmBCsB4ipnOaL7xw45gTa/r569d2sORv/QjWtKkxOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781114194; c=relaxed/simple;
	bh=jVjB4y/otRDUbkJCGbwofSclKB48ah1nLnaQjMJzjxw=;
	h=To:Subject:From:Message-Id:Date; b=YqDKeFDrhgsLcVGyYFDlPQ6p/R6V0to0gGTVr9rw0dWgQ/mMF4+tsmLH5rzhB9HkG/LM2CF+DAZ/q8hf0/FSo29/+khVjE1nTGnzCYYKDBcPKD6PSMInEVSk6c2088fsSIY3SFCqRh7Aq/Rbrs31MPs41xMpHLbJyFXM6A/W8qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeOZuwNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeOZuwNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5CBC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781114193;
	bh=jVjB4y/otRDUbkJCGbwofSclKB48ah1nLnaQjMJzjxw=;
	h=To:Subject:From:Date:From;
	b=LeOZuwNhNtQWeW8zDJRDB+Wz1yW2LfGKNyBhEK6xNjvvTZ9OR0ySgGqWjO9ISUweZ
	 Rrk7AJCYIskTwujwQScTiKPAOwo50ZpiKmraRaOBwgNKvpAQyYETpwEEia08UY1CcI
	 L6OWRAsITYJ8yYYMWXvc3B+ZZIfUFFSvukAGrMWVUtvh0PXOiZ25p2aocvCMnLI2nC
	 Jv1LQVksnAf0gSh9du97PVEKxR782fxBzzzi5KRr3PH6GEGRqki3uJxRBr5ZAGCtAb
	 H4/ZLWDeufYKCDOSo6K1CSG2MAZ9rThRdborvEgRKFjdnESSzooh55pqWjvZ//cB0W
	 YvHgcQAvF/6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E2CD8C90
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111419368.23878.15105103664891764764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc69860c844e31cd25ca967eea90051c1fd1ea0fda8482003d5e97c40c72c2a9
Date: Wed, 10 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781114193
