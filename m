Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216871C3C1F
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770512034; cv=none; b=fMl4rZhJPP13ymTiKLgDQkQVhP3Bd/1svnMMmn4qUBKCOAX6ZAzom/o+S96GKPN9EYwe+2AqtjCW46sR1IgiLioqPGHmMQxnm2fzfRhkMC+yAm76OYGNrFTt3up9mjUurOJZr7XW7GTo6NG/XZQTgLJF14JIkZLh2Ssm1bZJ4IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770512034; c=relaxed/simple;
	bh=jxQTdh0AXNptEDK8tDATsDbkfaUtffx1rWwOg+qoqxk=;
	h=To:Subject:From:Message-Id:Date; b=CppMKP8MT/CZlRoqg3UtizG8wK7i10d/3Fe8p7aZ5eXDCpTx+bIK1RIGhC/1xBBFkK29v7ZhLx4mIVjOU8ygRUDOK/xKEyL8yLS/4s9i2iEsQMPax6Uh9wb4eKQvOIjGu3eT8OUZFMa7RU+PtS+hmdosOaLa0IMM6ZalMA3Hmwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ollxpXuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ollxpXuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF9DC116D0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770512033;
	bh=jxQTdh0AXNptEDK8tDATsDbkfaUtffx1rWwOg+qoqxk=;
	h=To:Subject:From:Date:From;
	b=ollxpXuyrnDqnnS/kh24ntIlcNZ4K4r3laNE6iCbJyFEwfaOB4lCFF134mBVU4yiX
	 /W3Z/lMJozcDvSWJu/snc3MGols+OhmvZVZiQ9LgJ+uR1ssEMf32z8xH0fYPBgRjgO
	 LpaD+ZsYtkEcuU7+ZA4NaZmIGGID+0KCyqOKLq0G2dNBiRwnLD3+0Gf1xYlC/r6/aX
	 RRagR+dr7Q59QPwIhoP2LjAV9hrNkV4jFFXrIzR23DiuUH1aESAorfygiiRM5AEmVa
	 CECHEGIKO7sqVjewDSom5DMfCe1Oyi8YR6BZH7vJIRToAZ+yK1fRHSNEsjreCd2GOV
	 vhJ7ioxEbXDNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C6E9129C
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177051203358.29771.15191862126930302446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c358e98a58d5e8e7245baa3958832a27fa46d6ca6a207041425cdb750c17d6
Date: Sun, 08 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770512033
