Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EEF194AFB
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731196553; cv=none; b=GoKJ1MIzKxuKhzehufc6Py3UV4bO01MqM5lFTUhkJmoUlvr+CZhRjK34fJt9uGhwdPA5ta3DLywmK+KdSOcbhIHymB92N4WITnZ2y3ByPt+iUCm/ghZN0VC+GfDOsu+cI+YQr/Sk/TNT59DtOp6lNkryjHSCTsfBHNvTwgigI4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731196553; c=relaxed/simple;
	bh=4Vk8BIjKEbyX8c0FPzU0eU7JGqvu7V3hWtKLKnNKnDA=;
	h=To:Subject:From:Message-Id:Date; b=GC6jJKGUos2NKRWHvFGf11M8q9aS7s6tumElQuUSCOTxxcKfPl8zBug1CBtS8eLSOlPM8VngJyDB55TH3eF9qs4cR2kpJN+HUC4pNtzBOO4vtoOi59fkoJgXIFjpMz+poJK264g9Rz6qNAdQOQqZKquwkxfdUKa5HDOwhjsWMdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ao3EWVu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ao3EWVu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD63C4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731196553;
	bh=4Vk8BIjKEbyX8c0FPzU0eU7JGqvu7V3hWtKLKnNKnDA=;
	h=To:Subject:From:Date:From;
	b=ao3EWVu4GsXtMcS/stMX4RL6ZLkOPM8nxs6sMsVvoxT4OEDNmjcgFvzYwzygDpLNg
	 bg3PhKptnR3+8lH/m8mSxMLRZ/0v5QcMkBVsJdb5Zg0bi8tARfVT9UiLfSG5BebPrz
	 p/9RH+D17D8ChY77sbHLXgCJZGxnFRfpHxKx7xQIPJaNSJbuXBlUT9sfsxkxrn0Oah
	 sn6OpKmkNK8JKSCoZQNOUuEMN38NEY4UmSU11rSyhZdW498yV/oLjttmbJsgTuraX6
	 x/lQ/nN/BpwycPeTb54/+GmrCMnS2iIoOsGDZCJ5btu3ZUQ+Wv46vZFSL3K86GYSW6
	 SfYm2RHWLVKFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99137D5E38A
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173119655359.26314.5480609806400857236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982dde6d52fb48a5e8d35df5a91d1bdbb04cdd177c5fe9e0cbcea76fd4667f4c
Date: Sat, 09 Nov 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731196553
