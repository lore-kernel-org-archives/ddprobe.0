Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146F53C13E7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775733334; cv=none; b=r10phk7wZd4IjBsL0Tf6JXi3gkrdsLMDlnYohWREncVluNYY3cFwp8HD7CNZjBAQkRZ0CkU8Y7bvm4lpwde6xifU7RtReJOcrrBTlbfhO5QcgStdb3wwnOuPYhQKulxXrE2Zgo2ppvPYUSZWfy7rT9JkfPrDEKGC4eLsvLaNF+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775733334; c=relaxed/simple;
	bh=PihZ+XlcGafCfUkeztKBZ373elWhGcPgmIRJzpzTFlE=;
	h=To:Subject:From:Message-Id:Date; b=ERUxTryS5NAs0xFtYrE2ttUOceFRsDAPx8RkFS3J60ik+AqGpSxkn7uIdY0Pxh6YX9CC4LzcMPPKlLibZn2OsR22sWTKI2BLJjW1/AnUj07/4165/oS+vgSFykXrOl8zjhAIFsW863xU0hifhf1hcXhAeHjiSZXIUOoYihz5ugU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU+AOwzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU+AOwzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB236C2BC87
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775733333;
	bh=PihZ+XlcGafCfUkeztKBZ373elWhGcPgmIRJzpzTFlE=;
	h=To:Subject:From:Date:From;
	b=TU+AOwzfLj6phuacJLv7HBIe4jFWhB5Nr9gldoSX+mgnfX+nEJielkdJ5xE41lQ9v
	 jbfwQ+9g4CNWk1gwnzsbexRhYFS2ptWj26ZU5MNBUwNk8+97wWk7NTpS2SqP+29i6v
	 XE1FLlQ58Fkh3dJe1+Fe1LGkA7hZkkY1gpJ12AGsyAOYdQ8xW/7M9RDMQN2hdwdZHk
	 WuEMV8bbe4XTQ50FdqdLssxcHvOL54DVF8rc0iqEbkOaNRaUJzTyUZIlGS0cz0xC+l
	 k38Yp+z8r/oTKNSm49uroh6KwvlQdWMxR6hQjt4Tgp4LCqlbz4jxzD+IJBSj9flkR7
	 3MQVZBW0D00xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB932EA3C23
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573333369.20238.1475671776661481755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27cf3ae6b44df43af071b890d4de870546af65c0267a952f9454b39df46368f5
Date: Thu, 09 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775733333
