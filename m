Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B27C23BF8F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766856234; cv=none; b=NMBUrEYpjE8h9TCOFsrpMvGoAdgBrb9R/1OL0iZkpwvVK/bf/QPUU+gKp8nEGWdURSqENJwVgo6TXYqfBlQLMe9nrnP5t1Kf0XUx2cJ8kIDFeKNfgkXwYDYH3HlWjEAcbo5bKcxvyMjz7lo90skErSLfXDE6QjHNbiBo3sdG5eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766856234; c=relaxed/simple;
	bh=PjrYh8uy8vxToJczPSYdhTtzrxLLh7NxloD9iKVVHlI=;
	h=To:Subject:From:Message-Id:Date; b=ANMsSh+4+VyWCCmBk9J0HUeJyzoCuvKgWBnhGPgLJta+YqKN1RaZwys7e/+wuWTS9zatMyxlxY28DYhdJL8yLZLJqkT73THJfPe3+/pkrsXP5VdIKg5oIWoA7t2F0Yvkk9zdnMCKX5e+6m3uGkSmfbcdhWlISIJzUb2LpUdU/nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X15JBMiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X15JBMiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5E3C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766856233;
	bh=PjrYh8uy8vxToJczPSYdhTtzrxLLh7NxloD9iKVVHlI=;
	h=To:Subject:From:Date:From;
	b=X15JBMiVDBMRLPRtmkno2kYIDQzkSHP6YhJmjQG+R90d/UtAL+PwXwDIxgpwEx1WL
	 udcxPOSmdTPfZVOJnafVNXN658mNu9lRq9gIGjm975rzcWZxckKCKEZLvh+KjverhH
	 VtBy+ApUq6uXyo7nr+YtsLWP31xgTb1ruhxDjEWN50BAOQYy7XDldUotGKo/aD+bG0
	 x6nGHOslNYdQhb3SF4f6lOPQO5lE8hLW4qphTF1ZC19qRZnV1A223P4nOseyZShoxq
	 oZQwoxU3ClsJeDPxw5FJwQvdGs4bIuPVfEEzALokVMNazxlO0M7mWDf+G0BHgiLAmc
	 FtDyfnEa9mJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F1E92714
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685623359.16667.12678549575330816626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef64ef57c2f9eb0e49a8dab5a3c59002e9242961c2047ddf3d5f9b02a31695b8
Date: Sat, 27 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766856233
