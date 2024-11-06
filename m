Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D765A1DE2A1
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730936153; cv=none; b=OD3F84Rr4zSqhq8kDFpa75SIzKw3cu/KDjJ82pMXTHSYdQuGyFtf1UhfiQcFl12xG0wRQlLTfz6iENMuab5QJ8BvXS8u6Oo9AbRh7QvRP1AUY7pmRJU6+mQxq5nlCI10peHdGRntCABGaY9kZxat+trA2vLGefpaJkN0O5ZtPkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730936153; c=relaxed/simple;
	bh=hmOuesOIL/eRYlm6H2OizW3Q+pCroAApObREiJoAkvo=;
	h=To:Subject:From:Message-Id:Date; b=khFmGCcqaZ+hYkFqhv2BNwSFNBfczyw5LeMamgQIYDgyBFkwjeqdgJuXGqLWck896s0FreRUJyQyeFCnQ2HRQQtkU/Miulc+g5S6SUcLlHn61ad3MnXbrwXpZIZ38pxXR5E7c0jLxat1Xk58PhaGPVIyQBzwuF1m4sBRQ/B/wYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUwn9Op1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUwn9Op1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB68C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730936153;
	bh=hmOuesOIL/eRYlm6H2OizW3Q+pCroAApObREiJoAkvo=;
	h=To:Subject:From:Date:From;
	b=bUwn9Op1B5FpZIN2S040mpootmsBrRxRg3joJwpObc3rkxKqktjs45D8dQaK/bAbV
	 lJ28QbeI/wUdEIOpb9iC9WDO0F68UGAkZPVKheD00UZz/iGJ8MZ6moKdgj/FOJdqyb
	 ZKvgIfmAde7TGoApzjFOFm2XYPrHJIbA8D1akSiePHtqsrZcfZ8ZAK1v2faIkpp4rj
	 UtrmS8nZnRZx/KVc16IdyBaCYmoTCjmr39WdyYZXVBAmGVV0PQHJZMLbke9sVdq6Z6
	 sB5m0Zgu3tv9som0EAqUhx6ayip7fK86wd+ll1qSJxchan0QHNcbnLONCBvW3UOJmk
	 NEnPlunoYwmWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EED59F7F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173093615358.15959.2698881929544418385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c0c10b6688682c1485447283e2331bcf9434a5a4f509455501d709b4bfc36a
Date: Wed, 06 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730936153
