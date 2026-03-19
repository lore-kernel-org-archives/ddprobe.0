Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C4936404F
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773903294; cv=none; b=bzhu2Gdivmh6rMmxpjKSeobQA1X6vZgNJ5ArvGxTKxapO+D+hD2fFbC5NHx3qA0g4BUENvg2q6HKn3sLxc0ZJW/Y+PNf/X4nwFU+cV6ExsXdzjFLqqvf0GMhrFyfrLWkFEmxjT12TqqXDmlssWWZJivM2u3Gk3uSEjHSIgCMaMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773903294; c=relaxed/simple;
	bh=0u/raB2me2PB9D/Y+EYfZG+KKNUPC+sF9OqvEarWjAM=;
	h=To:Subject:From:Message-Id:Date; b=fd15udtJecPnlYgAZLZ0hJuxldej48AIwc2Mhn1byhZynr8GAOB+mxRsjKYV2TcjzHY29G3Wlj16+zt+jhdjcjrjyTRsk2oME0guFUEc64xvECBuos2qzLdgqYrTOuEZRAHRQkAyoo9lRSbExw/weghIl1CktTuyFjQD8wYYVSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfkANmsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfkANmsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D67AC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773903293;
	bh=0u/raB2me2PB9D/Y+EYfZG+KKNUPC+sF9OqvEarWjAM=;
	h=To:Subject:From:Date:From;
	b=AfkANmslBa7TgSWHbtXOAzIGRGRdzHFXUKRzRZ+69YuLH1U4gCeKSz4vhugyYcnX5
	 p6FQi8E3JVwEIcj1+aMpcIqD2C/G6LstLauIn6C7fZzh9dJx6pan738O1MsifdfqEQ
	 0ouuGn+YPhF9XtMoe0tqzoaSPt+fQX3j6v4GXB2Lv33UfsTuSKpL0nDmiLdTji3eud
	 +OzH83WZp7OuQjZxwwBOTDMobBZdXMQnXXEGH7yO0k0Q9uOFYA3WXicyesB4obeY7V
	 jDQm7xX6LUQg/KpzT2ERI9FgAt1bUGybbVP70s2qgJ2vNvMbPjpZkCe5HRgR71ymuc
	 G9BdGetPDigpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCD1075267
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390329357.30535.2748345942523511026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365db2e8c25340e7511a00e7443676785cdcbe84df17f400ca7e10df3d30bfe3
Date: Thu, 19 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773903293
