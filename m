Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9471F5E6
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747202994; cv=none; b=k+RSHqkc0o2BJyq/8e2856pBZdsBIABDI+jSK9IRI5tPmhGy9nba0bzG7+Z781LljcEZiURAj81jUdTxzoSjZywWDm/in5xnHlSIlec/IiEIZ7kHCp0KBHJKb3qxnIgnYwPhD2tC9fB/pyWCBuwxuxa+9CCVHH9WP+FVRQQtqD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747202994; c=relaxed/simple;
	bh=RB97BFN0EKxoC0UdrJHa87TvDf+tKlcTls5bxu5Hxvg=;
	h=To:Subject:From:Message-Id:Date; b=nPOZGDrEcpn+pCstPxHCiEK59WV/NZ8U0IIdb6gVYVIra3rUouvitA8tEOws/fVM7MsnpuzZ394jM2J3639I3pEJmOjm7zmWIhmbAKW9IUuoh/xNiS6IhinTjqj5MHftY9BAgniMIdYb1MYjKlZhcaXzI3MU6BII9Z1MYuvEDyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlv+IVSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlv+IVSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778DC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747202993;
	bh=RB97BFN0EKxoC0UdrJHa87TvDf+tKlcTls5bxu5Hxvg=;
	h=To:Subject:From:Date:From;
	b=rlv+IVSVZ6u5mLdphbFuGMjCe1O9/mTn8SwWZH6+cljbBfwvTH1dBegsb5fJwQ0/D
	 SSGuQQjYmt0xm3Gyx6gmL9lQhaGmpckMoY0kjzACIfdRKofUMHdwZR18JU9OX2jk2L
	 HXjJRGFjFgp+COjmou4Evuzm5amyG6WyJFafdpEgZSRncaR/DkDoMn4h0hdh9g9y5g
	 slS49kMfETp4swgWwFlI/JSb//3wc/D+JZLjEt1xUN41gxhrDJqPDrzZGIrM3phzQo
	 /MFR0zHOon1ygsU6xx0HmXhwFmzNWMpFloNeeGeA5KMFXa0pYWdzxg5ZH8No/AGfGY
	 DsP60q7Th1b0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94672C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720299357.10526.6636089342162080181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea9ebd14f554f4d6fdfc5c204613b9c83a27b82c13cdcad0c7921def63695b1
Date: Wed, 14 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747202993
