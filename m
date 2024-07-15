Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB8461FFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721082323; cv=none; b=Cb6EuUbjIL4UBtzOmNafh0ruZEnCf91VXqyx8LtIbC/CzJulAnBZy44nPV219rjv8K/Pb6qY5q++lZ7/cvu9GHa4BBUVuTGzz91Bzj7pC8V0Uqh9wGlvK7EVZROv3Q6le/uGsYTWbayX9JTzhH62Z3vEDLTpOlZh9IEdkQ8cSi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721082323; c=relaxed/simple;
	bh=ZlkM+FEHdTI1mqM7S5kteGZAbpd4sxbPNTxeEtamgUM=;
	h=To:Subject:From:Message-Id:Date; b=TAC8Xh673mTTm2c7he+fh3EQnAUMW6SedggzuXxbGHw21ZHM8RDaCA4Q3dT9+lOLudzcZ+6MTOXRC4LiYKyWFCRx03rQh4XGTJyf5SQjzvpJnNMmn3303EubC6lX1NLCpkaUeBLTypgYCXhXtixAau+EvNwEZiwNLkcWz6LDDEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjBy9jG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjBy9jG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCF4C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721082322;
	bh=ZlkM+FEHdTI1mqM7S5kteGZAbpd4sxbPNTxeEtamgUM=;
	h=To:Subject:From:Date:From;
	b=BjBy9jG9ffMVV2Iq5geP/IvVpTJ1mCPJgWMq6W+24R3kJ59ghPTgsi4e3A5GHipNz
	 FBhrMnLpWy0Unw3lOiiABtZQz7je7Uv89ckSDzFyQGyyRDdYa4LRBVq1hp9UGBRvVc
	 M2iVl4b7lsZMRriKQLPzOts+cbXy2L7obOQoGU2Y3eihppDkLwSxrXfSbTGG60dczp
	 lQdMOeK1VPFu2f0VUCPvqc9xDfrelMLzUmb3pT13UNNKbLfXbkTK+PwTRTrWM6WUAC
	 tmfjLcMw2NrZWMGYz5ccTGT1dnx8hzkpPvsHZn0xkeIobPxESG0WLjZEgoEhWy9b/B
	 1gLk9jwkZHZxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4431C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172108232276.15058.1392071403282050083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95dcd468672edbd8aeb015274345b7495244c73ca4fe030ff857d91e80cb5106
Date: Mon, 15 Jul 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721082322
