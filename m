Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EB834C806
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786329034; cv=none; b=psLu4LWyLPEZ7a+bJY721QxKEd7nUoK1o4UM2aYF43bT7xDeOC1IzCAt1/nADaeu3NwdBIfL9iW4yflm31P65vq/D8oFHxvMVs5hvr8HYI0zoHOYaFX08kla3zIfLGk3N95pco3L8QyKyWHzTo6vKDmNQOpBkzJarAw7jIoEONw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786329034; c=relaxed/simple;
	bh=aS5lk7pjzrF9KgNFR3/d6lvawtkclO7sT93vHLdWCZw=;
	h=To:Subject:From:Message-Id:Date; b=IWECVJSMWyyFeL+LcvzZn7+ut0+cRh9XWZNmEfngpk3MHGbVdf73+tixVzY+KR2S+gIzswCutRk8A5vtNI0yFFnbCdgGk3JOcix7HvV2x7w3ZqHXZ+17x6J4qg+J1UxxKrIMKjMPEb0506IyFBWs/sJnsfSkXtYSqSA0d1U+bgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s02NS/6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s02NS/6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FDAC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786329033;
	bh=aS5lk7pjzrF9KgNFR3/d6lvawtkclO7sT93vHLdWCZw=;
	h=To:Subject:From:Date:From;
	b=s02NS/6sZRWNdqiLUaT2AapIWbM8pEsarCe1FNlSFd9cZt4C4AG1d2NB8nhKmz3ng
	 tpCD3BbwFajMvBXX/HP6lZP4mpTuuNVquDmeRuv7+vbgSvq8fTI6U880bxspQEnSB7
	 nNKnuhLDDI6oNQ6Dq+EMCP0ZP/7ibg0Y9WkoEC/6UPBVUcbwsV9BIS5oAnWtWIDuju
	 6s1BBtCNss0U2FEZrR+0Kdny4fQcSRGuXpxsNRbGG0z8voognhgWeO6Qs1qmJgzIhm
	 KhDDJeOYHP1gi/2Yqm8cUv3GeBMmSEXLpjOaMoWU9lDaMzGxPJlz9+W1qSGbsP5Luu
	 7updidwVMVwlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32BCC5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632903369.16087.1132710915096549868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1818bc0ccca505f6f6a1a86018d8d641b18423ef74b68b99f8baf656ebad60b9
Date: Mon, 10 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786329033
