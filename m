Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1D231858
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764105774; cv=none; b=b2nDFiV8lbYez66aooxEzFVWcpkRlJzKIAafQfkNcpaCQlr3CNBdBUyWM4Nbfqg455oMDE90t1W4Twwiv1jTmCDObDWHkvC4n74LehoOPKGpAt6til+xiq4HV8fiBJcRcQ94WP9Xg0dpMNa1U2CcnMaq9oHFiEQNw4bLogJ9yUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764105774; c=relaxed/simple;
	bh=If8YzhWrfy8rCQVQvYWRbbdVzhJutdLJMXaV/7qSj8g=;
	h=To:Subject:From:Message-Id:Date; b=kDaanzYrNtTQScGMQvTpAnqcvqPqYUzLO7ZYMKRpQQf0U6BnqUrraOrVAq6RkrSg5xO8bpbv+K0Q5EitTdpX8QpfYmI03rAqFotfPHkSAObLKI7z4WBttyztiLUTrErr4Dngd89ua2Mb63hOK/yr4kkI9hpOVzhRjf/Pi+WzAvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEO2gjxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEO2gjxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91ADC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764105773;
	bh=If8YzhWrfy8rCQVQvYWRbbdVzhJutdLJMXaV/7qSj8g=;
	h=To:Subject:From:Date:From;
	b=WEO2gjxKnlq1rjASJl1GW+SkgeZlqKFAqE1gTg/PApDCXZWvRV1dD5z/xndOcfXSa
	 E2Odvqf3Iq8qsZTN0uCtM2lIE5y/R6xnAzOBn3dzLaWpMbGceWYXv3KIdV3BrJIQHL
	 jul8m4Y/+NNX1MujeDpPVTF4ZddG7jX9e9u+rYQPDybDiiVH9fE4Cg/4dkEN/Vwquv
	 IRH1p5aS/kmFisqAvfOlMZ5hrnA+EdSMrgw1i3kYw2f9kIcT3rf0FUHleVxcKNdZrb
	 bUG9HVb1yiPqYsoRwRZokeGTz+XQVR8bfOZwtJKQxcXh3YxzPLeW+MgOhDiQN7gRKy
	 jTAty/eOy0+eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C9D0EE18
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410577358.19826.3566129463937724712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed3ae51c3deb3bb59db718c6e7c8b7cfb28e6924133a3ea3368a0faa4af65f5
Date: Tue, 25 Nov 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764105773
