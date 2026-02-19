Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E89324B32
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771533294; cv=none; b=GnC0kQNhZ49GzpMj9//9AF2dtmhxMPYRjoMC5lc/LzUt6THZ/P+a1JCxgeWq8hSE5zED1cDYWyNWbp0H0N00nUmdCWBfIIkqyheqnWiz8hEP1JnRnQMW9G6IXnOJIytEYKLhpUr7u+WGyBjFETerHuCkE34ZCgvftnKC2ZHz8T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771533294; c=relaxed/simple;
	bh=1XChMHPRaYKXjxFg5mTrsNESnsJ096YmALV5Gz7dLfg=;
	h=To:Subject:From:Message-Id:Date; b=QtXSDgVLcNnGx/ozSqRXWRJNchC2Ko/C9XzQq9hIi6bxBqrZ7Zarw8Baf4RZmZ5LPT9xI4hu4CDs3lAVg15ICtHuSikAx2hDnlfsxN1U8ELNbV6HHyeVXFK+FB9CMNA98s9OHUS19zr54tIuGWIHzPXE4pSGIPI+pyapH/WQ+4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVapMpWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVapMpWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771533293;
	bh=1XChMHPRaYKXjxFg5mTrsNESnsJ096YmALV5Gz7dLfg=;
	h=To:Subject:From:Date:From;
	b=aVapMpWcBRTLp7d3Fq5nuj0XqFAJzfjIZDzKmtaBhZ0oyc4zGyXHUbLhTmuXcqk/C
	 X4QeAVh9onHZClccIV78hYsvW56rQJMDN5vH4ygdAKYgv8Q/GRkwi71EzTPueLi8d3
	 U6BQ1fDfzmQeVqPX2Hc1UX/xuoYDz1DAS6vskYx0hpbhGmbFlBoCuEsdWzEPfXP4ko
	 B3BreMqnirnCMRApXhgrTt8Hny0Vv9spfDghOIHCyvfiqBGsjJRjXajG9GkRpF/IC5
	 DtmObAiMmu/Dt/Mt9ze8t0lFlqu5vGO99YbGcBlKynlM5xAXEVnZXwgJXCuhPRwW7Q
	 VIZ355ySH6YOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CCC531CC
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153329358.3261.15613521853483877309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a21d0b7d7f8b6305ce30c2d0013761d17774f1faf3f58c19597c3bd2c1dba3
Date: Thu, 19 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771533293
