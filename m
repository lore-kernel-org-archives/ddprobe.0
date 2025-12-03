Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F32D13A258
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764722574; cv=none; b=AwBM8JXd3ePJDOaVbEBtFhD6btIUZCU84DcInwCcZGN1Bongyslo2vNHrHx22jWqyPKQP0sGlnWfGi5CgQN23NuAqiLyQ5WM4T90RiLDje9Fawx8XxbekXOEep7qygP6bRf7GSp3NP3Wz4QFrF4F6RtEcanNqM4rs7IQDVr4Pbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764722574; c=relaxed/simple;
	bh=nwFx+UMpsosnROYHu/wBldOpDI9fADJ23boVwHf+CpU=;
	h=To:Subject:From:Message-Id:Date; b=C8WywGBTCyNq71SaPI8N4gdkkhBFEfFzOo1KTYE7lEUjaeQX5U84OkBriX8PlFXGz0FI95OqcUoQOmHXiWHjtU+bxItJhlztGsFE+dARmmtemwb5QhSo2f+G5M6anIK3p0IAEJmYXy6nOY6Ql77sZHJCNUdwK+d/NYdiCrblUAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHcbworP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHcbworP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8244C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764722573;
	bh=nwFx+UMpsosnROYHu/wBldOpDI9fADJ23boVwHf+CpU=;
	h=To:Subject:From:Date:From;
	b=vHcbworP7c6ydx6j1Dmhhe3W1w/TUhi7Xnm3+SLoct+V6X5nlRl6R0rW00OOctUVx
	 Zx8w4uXUNJRvp+HfQo+sAUjKYBQEZidFHop42CzL1TbesVpl0j4bG1ZmAiKSCq6NT8
	 cCZOlAhTZYcQyrGyEBEUradvDm5slNtammI8JJPP4/vC5i/Pe155DW8uk3dGWYC3X6
	 TmfL0SlC3trujWK9gqJnBnZatREnAmetlPTZynZmXXzjKqI6xb81P/UvTPqKGEWJNC
	 Vt4CUiQY5nMVoyqE6fCwK3+b95YxINo34NjOGVipO1pQW2xqkOmRavdPOepmy5Q5Kg
	 6FKzVk8Ejf3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D1D1268B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472257358.14887.13519451446661265120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347cd379d929cc82ad9784e532a171f6b81c7368be53c43ffe1718221524bd80
Date: Wed, 03 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764722573
