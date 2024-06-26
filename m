Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0DF1755A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719413603; cv=none; b=RzhypXAI6jKr3fAiG0kAa3ynUOPjqGsNwcrLGehS+9EtvEHLfzoRrvBKrB+ArQ+dNxF7OdAeEVdSBbjHUoBwsxdM0Kj0Pp4+5biWPez69nn8lZO2uWNOJKBmk/e5jhxMlSC+8CfZednrdKbWQKy53dGUIV6w4rJzWIx74dcWUM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719413603; c=relaxed/simple;
	bh=XUnmwGBJOXmFq3hAyuKaWOLxV47XOHprl1aUX/lnOec=;
	h=To:Subject:From:Message-Id:Date; b=EMQ1q/cgsctplyn9Sn/YDjNHvoVUMlw7gE6/vJSz9SJiCWMccRkmPOEmbTHHvglEkBXpVW4xXx5bK5djHIel7f2f1Z3M+rNs7bAQBs6/qYcofPEChOJFNhhc2QWLtV2lKrqenXZxXL3Nn1sWhyu8DHggpjZqOQMUnYxzYD8eM9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgLdbSsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgLdbSsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27DDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719413602;
	bh=XUnmwGBJOXmFq3hAyuKaWOLxV47XOHprl1aUX/lnOec=;
	h=To:Subject:From:Date:From;
	b=KgLdbSscc2RoHE3LzroVR5H0Bnzqzfk+QxbyQcbWZFiefOagGOu63L2MlbON5CiB5
	 SB2VEep2B2LYpGO8qHyAfDFmv5yrNmY5xT9EfaTGvBAhd21UMBkXJvtY94Gy8ioQz9
	 6LOkGy8Kxy8a2J5NUl2m4KblgvVY0nkap4bXOU3ZT+Z4mLCnxWgH3FaLaGkwpj2sth
	 NTG0IIQr7yliRLxDuda2VAdMjVqbCNOlUu/kCVFyWNrGkBSumCvFvsiEKrjG4El2kW
	 ajyw+iD9bdcXkyfTMBqjudts5XInADVygDl+Q+rXlZGUecapoL2cQxmVF4BlnIQJum
	 0up8WUEZpfx8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1692C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941360278.29130.7517508841717004677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc0c32c003dc274dc5325b64615c4826a5a7faa52122d377da9bea4ea88652c
Date: Wed, 26 Jun 2024 14:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719413602
