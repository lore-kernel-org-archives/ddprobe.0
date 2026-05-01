Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3502037EFFE
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777677454; cv=none; b=hPio7+tUnGShoA1VB0N6fPKCZsW8Zh0CR8aTEAX54KAmhWxxGsWtQ1Q9hcQcaiuKHAoemhdKDbDi858x7PxlY8RpIT+QDSxG+Cq5skccK/QS2ssFWFyEHe9hx2nBct6ZyOq9ehEdzKAysD7tNmapS5HN3mJPJfUKBuUw74H7Nwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777677454; c=relaxed/simple;
	bh=wdFvwAQCmw7rTzeQ2t1NGMKxgKna8D3JrmpYgFX0hEE=;
	h=To:Subject:From:Message-Id:Date; b=lgJ77OUec/o2WsGv2Ih0ykC645udLC2jjqJBiMxVzKXp0OuhAt6q1iQO+B0kikuZyYwAfVprSOgbjVpkhmTY9Npxaz5dXI2ffLKDVR3jOnXldnCQa2XwLmRgfhtCJL2l7bUBvGeJ+QWiC/R6GSw1vy24Ujp4RPiwaUaOLw9KJLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njSNDXRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njSNDXRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FF0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777677453;
	bh=wdFvwAQCmw7rTzeQ2t1NGMKxgKna8D3JrmpYgFX0hEE=;
	h=To:Subject:From:Date:From;
	b=njSNDXREhFC7Wo96pPnwhEpHn0m42uHVr+hHEtXWh2hXcd154XviQf5gdv35vQMBN
	 nM/p4n8WP20Wb0eJ9IqwUWUykYAlbQXIfq3rDebE2Xid5TNOSJc8jt9droM/cmxQsI
	 qtaHo1NAaPUYJXgKcQ1kMJJuKWKGSFhck9Zf88sdbk/I6kNGhDBZzjEIalH5AGq8KV
	 wmySo/fZAnqWwUdkmwmUVllangBId+LpNZSmz2xDp5qYXsAqHcsBTpCPFqCN7WxW91
	 BG/ikVrNZ12rPD2bBXKrXXjJNJc4ZOZmE+Ym4ulK2eyKG55AH5iQt2lARpxqn4Opt9
	 lgjRnQ96nDP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6047CD3427
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767745371.6488.374779091139253480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abcdd22c2dab8bcfa40311cbb6aa3d7d625176a3bf2f819dbec0a5bbad34ee2d
Date: Fri, 01 May 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777677453
