Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0902C13B293
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755368994; cv=none; b=OQKK3nkve0qiGamRtzwcgBrIcICX+2X4U4ZXQXrbI9rPeefue1ZSBp2Wi+XNdAiKIWST8p30zFUMCJzRsKJI5rM8QtdWulHADgzg6VWAIa4aou60kGeQ5/8rlfTfml2DqnOLXsKRtVkO/+hwpFv5OOG8eOGW9zuFWhZRYrkXATk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755368994; c=relaxed/simple;
	bh=XxdURIKnn19idBxKIkf3kuaeaYuPaJ2D+ftYnw4yHSw=;
	h=To:Subject:From:Message-Id:Date; b=ZTPL5biLmOwWZndFcS9Ao3jET427hiHApdHfifXQg2F4kdXDZoW+ZAeyfWG2pCJfDrJq8AuZnpeBOq4pc6W42xEofjZG3fdPAvFyDRZyFu0cuPJ6C7EwFKev7S+Cixfd+wZlxNvLqfKjGZ4z/Ux5JRX2kHDSoNotQhR09owDUzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fapTZoeK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fapTZoeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755368993;
	bh=XxdURIKnn19idBxKIkf3kuaeaYuPaJ2D+ftYnw4yHSw=;
	h=To:Subject:From:Date:From;
	b=fapTZoeKo+KnDQzTFup2GgVFfFK63sb0Cb/+YpO7SMaYi62WBv9SorXVsM5FlheD4
	 vZxj6eL3oat5dX+REiOl4m+FGr8/5l753WllPOmfi5YtUkWoKHfIOPfv4TOImuvX41
	 nOZ6berh9vjeHDcDPrgcckQs7eYNMSveSTk8YQTmVxquBqqyu2f4mcTNZxFDKFiwPv
	 UFv7UGkELKzteKT/8uWNimgbRw+WNtcUBpLHp6S0cZqW3XQN+ZdTgcwpI9S5Z01FzP
	 djHckGaO5DtIBeg66WoV1gYNNPJ8ayQi0Y7myPfvZs1KQJR9ftWda527jHtQ17m5zf
	 tmEpeOVt2CZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7ACA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175536899357.14899.7955767991993514489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d7e745f239123cf73b3861ecd1843e433fd6b86cb233073b9aecd154b4b664
Date: Sat, 16 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755368993
