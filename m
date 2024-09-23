Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E6E101DE
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727113554; cv=none; b=AWWBxxydzgioP2Mg9Aky2h813drzm18goZy3+oS07Z3OGgkbaUurTGAAHp8Ycj6IlpDxgn+k5p1f658GPjJrkwmnVy6HRPsqptDvBXP+f5tx2e6PAnrqh6/68tYXbU5e+3u5kWlqADiSAjC7YrNwte8qqoysFMEgK8/+IX4I430=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727113554; c=relaxed/simple;
	bh=JK43jGXyuk/vfcLDWb6aTf/qJw3LCXsvxat199rmbWQ=;
	h=To:Subject:From:Message-Id:Date; b=dxbPb4jGSwkeTwn42fu3BQN/qJbv6UsHXXqq9emlpHRLiVKFe3jS8LVL3v4PvlF8teuSBaB546rwdyHDNF5eCtVpUJgzH5/YtSrLtyK7TrUxnN3BF/wKahp+mYrV45GmdN7ogfL8obCILvaOxxF2C+3Cu9Ph0538dnJiYk69U/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=No6S0tjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="No6S0tjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81C0C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727113553;
	bh=JK43jGXyuk/vfcLDWb6aTf/qJw3LCXsvxat199rmbWQ=;
	h=To:Subject:From:Date:From;
	b=No6S0tjrKpgupW0TDii4X2MEZO9ZIYueCU5pW06WcxsLklgJlLc8bJSuEqjuM7MPd
	 ypWoFST4rJaOmB+EoBJ72ECL+YPZs3CBjgLzlPyXx8ir8QadlDfdSxrogL+N/LsLQF
	 FWWvsA+bxTKiK+iTao4eDxPMLigqNA0wfOH4M371oLcM2JOIolVNHdh1nVQJWe8eys
	 aIA9CQ/PW/SJ7BtqdteQwi0tpqGh70J4JzJwjFBc30p9/GU6wi1CEu9ciD097IL7ic
	 ugiGJuwExcDUH67lUwSJCYKCZB3MqftBzoOiNqLzlOj1fo0lJYqD7wVr+HwGoxHt5u
	 n1ar4+MGq7m0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28E5CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711355362.7696.5677064891266921729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b0c9b49c2a4d854ab313cfbe43d1c2bda0cb619a5620bed67e2ac0ac616d64
Date: Mon, 23 Sep 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727113553
