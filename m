Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247674DA548
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778691634; cv=none; b=jJyQko5iY4jfPdhRkesAbLuxSt+T80/9tkAoowiqUNx4E1TIB66F1WQFAe96C3gYH24QzrSzmB8nId3omm77i3Fx+VIv0pD8qjYGZoqkKKOElBWE3BwVtZWHndXycBMNvH/3gisCQNQEGtmjuH40XiP7dexigfGXWnfhMDpIqPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778691634; c=relaxed/simple;
	bh=Xjc6SXe3aQbCvN7d66fkUZpYmzVNlwoI5gnecjVaZ3w=;
	h=To:Subject:From:Message-Id:Date; b=QfEPtcQcOd9FXKqqlkRBWggZJwdnQ9T5x+BHpq0VipKuVcx/bHJcqOViKVJm4UV5EZh14YT6/mAKSjv9RLGFmSSymY2sp8BOxCLgeWrYH3KGD/ht/iqVTBx2ZHVmswFPuukL3xTJIj0nGD5NsOYh2YM1PTdsaAKTSeJvYxyG+R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYb7yZJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYb7yZJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37CEC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778691633;
	bh=Xjc6SXe3aQbCvN7d66fkUZpYmzVNlwoI5gnecjVaZ3w=;
	h=To:Subject:From:Date:From;
	b=HYb7yZJnn/gCtUjxsY8iKgYLXJnSc2HICoI2yyOaHT+OoHPQYeogv0WZPZP1SCX2u
	 lgQIbeHXHowZVHjwWCpirXhHlpLRTSC/bglgYJgqS943Zx8odJMNqyEX7Gky6CTXqv
	 mH8nFjrKaMkUQt0gX53FbCz4cS6PiNx21iaBN3E+phCKTN96XReFobUsthffUWoOZ3
	 Grjypa/umhkLu3QPHMJyh/QQFenw0J9T5TfYcqI43VRhP+w6WUC5JxLtdg91ZrDkpE
	 OQe5lRtqvj4LGQt4HWqeE9TQJCMEOXzi7pd+iKnRSFjXg+9OmsrQsZy4DTxAJQWPUu
	 bQ3JuCpuuTPjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3677CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869163372.14319.10726619450770036454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41706a421afe1c22a2eda845f166d49abb5b1b84af87d8d67d6782f53a64a6a0
Date: Wed, 13 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778691633
