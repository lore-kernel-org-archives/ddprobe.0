Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4081B175A70
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780596274; cv=none; b=tJQgrId77AljFJC+bn76k0JaQDY70yQQpGkO16/kyH/vTMKWXwbLULb7N02DsfqXgx6rGXdtNhdCd73fWxHAqbe9uTaPXxgEXVRAv75D9O+3vWsKt1kl0E4QZExeSpaSUIQW+h9gb5dxBDJh1A+umSV52ASXsjwlqlcRrlDy2Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780596274; c=relaxed/simple;
	bh=2roz/NGU0/KCUvjW0Mqe/C06RKzS6f3DU0dyszZVWmA=;
	h=To:Subject:From:Message-Id:Date; b=Ww0+w17H9jkcNF/jDJXdqWCZcZMuzdEWqjHn9bY38kZixW/uEASsK7pHuFKBmN60N+P5wFMwKOK65uGDcNNsTFFx9wufv1R/tYycx8/soIpolUJTChybuCZIQ62H3BMdjHfqNMUR9GddYWyzuiGebU/K2FqfeD5m51Ganc6PRZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZv5cmQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZv5cmQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB0DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780596273;
	bh=2roz/NGU0/KCUvjW0Mqe/C06RKzS6f3DU0dyszZVWmA=;
	h=To:Subject:From:Date:From;
	b=eZv5cmQdCnRSHWYCrVjeL02ghqKK6IQ1UyC06meeDtjqXGh2uMPPR+vYDgimjw5F6
	 0yuNKoC6WcfwA8zrdtwRnp7kTLtkMt6JEmgIixjFL9Pn8Tf52+lSVB9ZJB/n8J4jdU
	 X9WV+7KN0ABRQkhUIpIS/Dl1CuWxd92LmZ5TaX/FpO/MwXyVSY3iBH7f01aVu3u2mW
	 UHAvbR2QtYSUcNkK0rzLUHFQQzKvJEeXaR5SsOYr0IYXSjTvuiRfOtDbdV67ZwWjog
	 pnHTDtxnXGu4wb6dMsyJ45A+QsJIi8FkqvwT54y5SEfz9hI66JIy0D5ALyxsmzWFHB
	 pO02GeXwGZ0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5601CD6E77
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059627373.31841.4591327220296240404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf12da2671bcb474c051ccee65b0a7ea8d84ce0cf63db2d086e9bf31b29f2b34
Date: Thu, 04 Jun 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780596273
