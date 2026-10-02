Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC2E38D3EE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790977234; cv=none; b=cjdTdbIyQ9CPP4TvUq5syQBavdyDf64gVM6Igth4bkzZksGYTz0k/39bnS4FA2+E9f18UGtbjteZpxoaitUnisYrLBiskx/EaH0++TaoXHtfUTE15o5V4B086eBWWOrHMsAcbz9MafRfPQUgy0XGCeDMK+jZUYU72TIgRmWsMK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790977234; c=relaxed/simple;
	bh=XPY6Ivc15E+puW6R3ilcF+NNkpxUQINMJtYYyS5OGUw=;
	h=To:Subject:From:Message-Id:Date; b=ZAQmuQDiXaaXYYiJRg+T2+0kFNl/hC+oyohARos8c7mcGbxEjW86aKGEgVOuyqmcKvbAPtr0oWRMfy6ke+4IN4Z3AiH3QxXRAn9jQWh0tIQntHeeI3aQ+Y3i7euBSyN70gzGUeH3iR3tRmdrZWruPA8w7S25Bnv40MrAiutDtn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRCJJdns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRCJJdns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9BCC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790977233;
	bh=XPY6Ivc15E+puW6R3ilcF+NNkpxUQINMJtYYyS5OGUw=;
	h=To:Subject:From:Date:From;
	b=SRCJJdnsGLsIbOkXKQuSY1IU41oXNkUzmr5LqeWOBKz2ZIWm+mLbux6ekhHoW41Of
	 1paOaUNAlWpCZMDDdKZVDL0QZamJk/JTwrr8xiaLOaWUj43BfecxgnIzcty9lpPbbL
	 3oezKaoinh12jtd9GyJYf8i/YKj34u8PS/0A2Vq9LgLFLNFD8C+iFxXfrhd2Ubj4YW
	 IofdqHqa4Hr3C9dyRR5/q8oAlL/go7oY81abWq+ykDHnZ4ifvhwcm7IC/iSddxWdu3
	 3Uh6TNCXGNhKjq49argPBZjrAXLAeBGV/FEnBZ7LAo69YCLGRMUtf/ATU7JlYrGoCh
	 OnnhQ8WkJCPXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD26CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097723369.27965.15298340248590732778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e40db4eb15428a639fa71d119e1e62cc01f159ca24c170eeef0b23e40c6b83
Date: Fri, 02 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790977233
