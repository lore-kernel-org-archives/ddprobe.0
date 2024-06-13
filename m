Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470E112EBD6
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718258303; cv=none; b=DDpUdqcwU7d97C4fsurQy0zSgHQ56sTU2Vw9UAidUU3vuKun7HG0UXqoMS+0oPNcODI5PwDkc8aSVvTbIrYkzkSm2bwPR5FanCCOIcxvT25FqEohU28aR1EO9ndLgoDnBVQVYV0ul0+k/HZPDYzS+Jz9R30jUBcU1sHxgiB5XSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718258303; c=relaxed/simple;
	bh=1p5xTvSYrf7KRD2u3VeSRPKj+QzumAxNUOakAAo3kYs=;
	h=To:Subject:From:Message-Id:Date; b=OIiFePRY6nnPt5j9+Bb1j7x1C4VDk0nhEKGHCmMfOLCoy/pGRKt9J6581ulzzk6Vld7CniMa+a9rxNzDNaMc/Zj2GHXek4eNVj0gfYYhVemq7wy9uQV3PAJcCu2RA5G+jHRK0/Ml7pzvjeqCLejRjPcOLsTPA5acQFzsM1VMEWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cybuXsgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cybuXsgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6FB2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718258302;
	bh=1p5xTvSYrf7KRD2u3VeSRPKj+QzumAxNUOakAAo3kYs=;
	h=To:Subject:From:Date:From;
	b=cybuXsgQ6y5ljMPrs5n6iaykQfu39FvziWprAakSbN5Aiyv0XGOqDSKdmtFGDXfZ6
	 buvKZcfs8z9++E5lZXzcP5N02L5WVaO/SIdX91TmKaZ67Ttd4YkY3l0kDD62NylETo
	 vZYFNhq/PW8XQ4Pel4IjJIbeiJp8CfzsMz+0iFSPvMyQ2qW7ckJg0wXwx2RO8hecuz
	 VyN65HSP03l23h9En0JBi6QaA2F+lQOIEcmD2a1HHFD9wV5mHdBgVuipHvC1U/WkVa
	 ahrE88hXMd5ctW2n9Jq8fHUcts9jsFW29k+2Nfie/q+HziaoHrL4lvM96vxVPvBfvw
	 ok4Ua5oE7Bs6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A51C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 05:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825830284.1847.5046601177032153371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0be6bf496baba53f5d0eb4214512f105247a6a2ea93d72dfc223d6eafa39088
Date: Thu, 13 Jun 2024 05:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718258302
