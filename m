Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE6763D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738926954; cv=none; b=M8wN7trLVL0bGnTz+zft3uMztemtIH/tu9bM90I+SJTFhmtNL3HyTI24oxDMf9lHVwQYv8Cre9Vy+YlyyRlUZ4Otc74kvEKXDbAuahVVt+IYGPlIn8UVZ20OessaCnMqORb0Hx1xpDW5yskecE3ACaXctYA4dOEYI4lgIHNrQ1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738926954; c=relaxed/simple;
	bh=xAt8J++5niWFqAxouwcTwtf2P6EiGxfbztQzyUPM7hY=;
	h=To:Subject:From:Message-Id:Date; b=CwACvgST/bVjJCAG28lIIcqqA4JrqqMIvwORE73EGe961I+fSAPkmZEr1qaRhH2aB4mALkVyiOfjcFXWolCIwQOWK2n5kbkmuJgaasq34xX+67z+Bk9KNHvLPPD/WNAEaQWvA06zmiz7FVy7NDwH68UZuPfPJf3zgUDyh81j2+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcseJWS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcseJWS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C26C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738926953;
	bh=xAt8J++5niWFqAxouwcTwtf2P6EiGxfbztQzyUPM7hY=;
	h=To:Subject:From:Date:From;
	b=kcseJWS4/FANZTUeZo2o1qvKF0tJnfjqY+lw9HYxssUZeafCffIf5P9WNShiAcpq+
	 SKO5MuBvThtZTq61CoonqmZhXtis9wmkVh0RNhsylEhXy+RNNRuVkbql+Agk/4ycZZ
	 GPiwrbKOHH6x4RcfWNpON9gQuyMt0PSWd5R9sKy5QfLxIIA96IshEHwuwmzJ2RoD80
	 n9T4c3bz5cUiZNLcP0KHOJmeKb9XDOFPW4Kl5UbNaBamvj3fL4qiuGYYF/m/zhELZo
	 gVvtje1ZKAxxGFeQBtd9SMw9yYC24hPhPq9SgvenXW3OYMBiqDOaKEtyTmCqtrUwuQ
	 AfwmNON5aom1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD07C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892695362.7513.8176703840999148513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a9393d7a6a3968a94888b7e1d4c662b373fff87cd0e3013bbfc883e85a902d
Date: Fri, 07 Feb 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738926953
