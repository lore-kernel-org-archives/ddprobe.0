Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A113AD11
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734492954; cv=none; b=MBILtYGmxb18qk1obuP9VFHHmRY5kHA5LapIc8aIrKdd0sRaDsXTEDQc0UnqaJjaTC4XRXKlfEFshIOyHG0jpPyBd5eI5wmURp3ZXQj7wcJfeJUsVKjgHrEEE7PeOFQJZM2+dsCV50FpGC5TfYuRVmuXlLc25rkeRXq6G7chLa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734492954; c=relaxed/simple;
	bh=yJT9cu1CVvWwQm1GtDtBdpvk9jcks3ygjGDlFGPPVxc=;
	h=To:Subject:From:Message-Id:Date; b=Te9V7ZYiJTVEsDsf/Rv9D+C5f7V5uZ6VpSYZsbhlYIPcG1i0lg3Smzk6mP5dYTI+FwC6nFrTVU2IL8pv4aQe4cLMlzV5puOQ5jXKcjYGhxSaV/7DTB3Lzh0hCSXyex/3DCctsCq8C6sAAlo2bOJ4uKapzTCBE2LOC/HUMQZGbFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZDq8rB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZDq8rB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA16BC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734492953;
	bh=yJT9cu1CVvWwQm1GtDtBdpvk9jcks3ygjGDlFGPPVxc=;
	h=To:Subject:From:Date:From;
	b=LZDq8rB4Q0ulavCDI17TwStsFjh2M7R+jBKtZ3Xu5GwhIineil+U99RI+/QFzUP55
	 1ZRKXXKkvEnZQ52iOOQQnaYW+AIXTsBxEQtLIHqhQHhME1xCG5rwus0w9NQhEpvei6
	 6bTpgVTjuceZWJU3qwt+vHbY2bJ//kgnEm+G6sdA1O3qzUdqAmSIHLSsMJhVphM+tP
	 KFkr8PdVEI1zvOyA0j4T27VgFQ6NivGygiZVy4ioNLuSgKXoLWsWcFFc15eKiE9AyR
	 HvHQXe9bYmdmXM7ARwtDoljdKwqHqOtbX0wokmtBlbIxLXm+Z3wU0mProu/7RRA0Rx
	 Lj+gybIJw+NHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0C4E77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173449295359.30500.5210021705148150095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5d229df56b2b1d9ad6bdf047883d959024af6f2b1a1949d2a906cacd608741
Date: Wed, 18 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734492953
