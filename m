Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F1B4519A3
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791804634; cv=none; b=jIuGnPnHvDB1H9CZBjUpK+GbpCq1VQfELYmc7cxOFDpHndjwq2iKBhZtyU57V9aDpvV6qdNfW6KEvnCgtFB90Y/sIiM/ZYiXd88VA/CFrrCjcZKOqS+Po1O25sMbuq9Hf1tWwisI4IRcBIum+LOOXIWdbfNoEI217BiMLX72XqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791804634; c=relaxed/simple;
	bh=mMifdp9qUlL9dhTvRctdjPNQ0E+FKXLYEXVWMoNU5ZQ=;
	h=To:Subject:From:Message-Id:Date; b=eSeflX3vcCOA50o31AsNpD3vno2MbTw9BOZ7mxcNXljhPbvDbsk/VbyPtY+QG3yenx/nQbwD52iZQNGTH1u9rYvegzeEEXnHW6nx0rh4LFqnBD60CE30IYhoyPmaBdaY3iRohgkFymUcKNlYTAZj4n5yMTsn5Xjciol0iJplZrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAgLtXB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAgLtXB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB23C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791804633;
	bh=mMifdp9qUlL9dhTvRctdjPNQ0E+FKXLYEXVWMoNU5ZQ=;
	h=To:Subject:From:Date:From;
	b=aAgLtXB0iToBB7bp/Tbv9ioMShIxbS2drPRmZ7qRTYeKr3bBsg1nCYtWZ8NWc7LgI
	 POAPXPp7Q2XethHahHOJJMoT8ChpSvE5u7Cldei0J/vyZIQSGb0MxTRji6JPvcOwX+
	 9IrU7zywVx7UnsfNUHnhlyoaRB4EIFgyJH2Mgoq/ZNmaFxvbNlIAdPID9xVZzttFVH
	 FschSvnzmweBZmlPJSf0priHYLwF0jlebjwUtSWc2SFfjo3TVkeg5uPDJ8Lhjd8uSj
	 f+3lN6Y2aP/UlBuUt3urnC6kKgdH03lQx1cacT7RyYIglSNjgSYoc8urmEnhakT0J1
	 is+iQcDwGZLvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B8CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180463368.23769.17612429677479845673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a40622d327351756b3a764b0050792e9b4e2b755aabe4b2f4860e35e6aec9d
Date: Mon, 12 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791804633
