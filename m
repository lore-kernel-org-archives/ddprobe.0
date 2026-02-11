Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627D7153598
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770820494; cv=none; b=bMTmwPK6A1f78RKJXYpl2r9XgB0fP/MK+RJtSJEK4e/Xe5WDVml4NEul1hVsxe6yc8yz9PxhrFCBWPY0LZ0pLSjGi/Qnl4t/5Lsz+9I7ZZTL4xGLWN52oRGHQ35r2kvdjoipqSHwiNc+xPCAPngeJWoZeuISQ4YXGatYaSpXSmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770820494; c=relaxed/simple;
	bh=+fE5G7bQ/aMaDboEXYLUFHyKZSCvWr9EyrMURJRus5o=;
	h=To:Subject:From:Message-Id:Date; b=EGZbceW24mJksV8xK43Nd2ZJOzLKpleqB5UAxvK/VEJdq/qE+TzdKPezJlyKDhhl8hc14PVlNi3piQ2hxlHvjRtElYr0UW0o+h4dhg5Yr9H+lw2PvQrhhw5vh7WdwVh7x7q32oChi8ZW6jTpewE7z6owwcnavlDvr3AGqlY3EyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7DdBxYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7DdBxYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFB9CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770820494;
	bh=+fE5G7bQ/aMaDboEXYLUFHyKZSCvWr9EyrMURJRus5o=;
	h=To:Subject:From:Date:From;
	b=R7DdBxYe1TfoDjAjJoRzjTDbh4HTVxlvC8KBlcjvAIPXwyYz4KFsYvGEL2mT5d9K5
	 jTSwa9I3M+BuoSYM+1hAGQzKYVBzPBkL6wLcgCugbOstWE4AgLgN9oyBee6ZJMt6JB
	 99QenhfQP1tbjUeEKWx2A+toZWKW3d6Rtlo2Xh9HPTjDLoYKNLAfxUfkjBGHTkPQGV
	 xuGavGUv9fp7YC4xN2mwX34t2FH7WHhIatZLOYfFY9QrpwO4GCK2kUF1r0JoXwj/J9
	 nd7HzzmBEvz8hRm8O5M8xQXCV5HnpT+WtiqoI6lvF3YulvP8hnbR+tzMlxMzXf67Y8
	 n4HoRmEQFK+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD493E9E312
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082049373.19940.6578337863423921157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff2cb304058e29eef9044b4b2d63d9297684bb6de90fe58a3a2ecf224b7a51c
Date: Wed, 11 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770820493
