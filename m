Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3053B215C62
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730307354; cv=none; b=BMkppyCP+zK/pyKw4QDpKMSWYIAMPIiA113TZW+yyDl/mQi5yy2k6VHm9c78U1Y+tOwif6gc9tlReEphuiwwZRVP2rZxblT8qY3dgKgt8q6afqcu7hOtENKdYmLhTbDlDq15Df4Jmgu/Z4H/mUpWiJfE3i+ur5jY0mMsr7i1tdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730307354; c=relaxed/simple;
	bh=qpJ2cYkf7cAVKsldzFT3+D88rOyY5H/Kfkaepy/dWNc=;
	h=To:Subject:From:Message-Id:Date; b=YFrYB9lwKiyYZbAnN52OwsTIT0FQ/6LSEgNZXY4pK2vxVqwzbIXTwdSp1l9qWQT4beB0rFu8FnnkufO0AHVafgwoPEtjo6osxYwp8HCGKkTWO/anUpEoRYYaIeXG2WtBs6sR95y53qZ7WY3N0Agfl4Q0FKtuwSJBkZqHxfk8YIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxqZdr4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxqZdr4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A257BC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730307353;
	bh=qpJ2cYkf7cAVKsldzFT3+D88rOyY5H/Kfkaepy/dWNc=;
	h=To:Subject:From:Date:From;
	b=GxqZdr4oJiluZx775o7Pj0Hbvkyg8IOyOLDx98WLVeH7HdyD0w7T+ANyKT3sulB9A
	 Pq1ew/VNUNDNjuJZyWK8F1FaVomRuIxDgVY4868ZVb/SSoQJpIHW6DtA9mNMJsVlhf
	 WcxIddkQT6/e/2dtGCJ0m/1pE33eFk+/5SsExnTFaYQglZjkyHa49iKM4ktbe7bWYa
	 MeGIg+ZhhwM/se/wM9/JNVVwMdHTP8MRsxDJmXMwHaY/uc3eE61Wmnh1++/WG0QJu6
	 uPIoTN47+26osyndoXW22RT0DrSNAOpzgul967yDFYDHzOLT1fng+OtkGBF5guVAab
	 vVLR9y/emGNtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BAD6B6B3
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173030735359.29644.15151662031614386664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cdf20873fb12a896de2603bed621fe8466579be55cff85dee3e3a628c1a567
Date: Wed, 30 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730307353
