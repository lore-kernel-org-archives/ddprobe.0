Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44A33EBF06
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771041894; cv=none; b=fz6Vh137NUigc7LiYR3vLdrA/UQatlAT0SHCjMMlXIpWTk+YMViyFyOrk3jFYagvCSTYZoo8OzShAFs2zSeSCcE4sZpyaut6vK4y+uCJiE2gS09ZM4kxk7WxLCtehDJPA882Pqk9PeKPv5oJvHfrNzhIwUEIkQxd/OugQhOCC0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771041894; c=relaxed/simple;
	bh=/zgsk5dWZ7lWnJuKGqzXOuXXzCxFzphTmdgJQWBwxXc=;
	h=To:Subject:From:Message-Id:Date; b=Itx+a8hChEfDVeqFxu5mBTKQIN7sw6V32LGU8YBAJjBcvJsErgpbNe9Dq/jg4tGYkMcoz6cpMP0isvfyXG6c2YyKUl1f2vmhH29PbRaEjc0YYfePsSVGIiKqPjJNTZ4L70WHVvgoGAI0WRcz4wGL1Qw0RQLrSLIV07VUkH7vR0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rs6mpQYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rs6mpQYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE71FC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771041893;
	bh=/zgsk5dWZ7lWnJuKGqzXOuXXzCxFzphTmdgJQWBwxXc=;
	h=To:Subject:From:Date:From;
	b=rs6mpQYOAocvJa3TLD8w7AG9lgnieyxli4ppTZKpMBJj00BDlwR4GwUfH29Kbap2n
	 2ZFo30thYgPLMYQi3fheirqr7wyVNiG4fX9aVdsumvxKXuNQpjC0gcAMbweRcOo2Wv
	 ++ULG1Sw2ZcDCmh10S0V1X61t2kdsDq1Hj0bpPHIDrM4l8pXpUWhQTCzlbwcPsBg8n
	 iBQ4C4DS83sR7Lt/Ooxu4tw7+RyoR06i51b8drVWNd+cVW2921LLd+KjVn4oJgaFTf
	 hNEccroSw/+xgOOQXJyWL8dz/jaS9le9jBGHanznPiJn+7MnuRdQ+ZRxTNui0+LYdr
	 FankgknNQ76Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DB3EF99FA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104189363.30194.15570366294293766951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fcbbbd3c0e77be6ceb589da33bb889cb4ecf592c52ea0b3a4d5674c726cf5b
Date: Sat, 14 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771041893
