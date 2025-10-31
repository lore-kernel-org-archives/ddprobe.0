Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC38334689
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761901794; cv=none; b=aYr7Vl6yWsAEH0XKfFlOUM3s0YEklUGK3qpmgvQKA9ecwQnS7lPdCzlH4lTObvjiWeUg8E3O2+ETF1bdk1oL2iPXhWw2cOee1zoXP8JioH2pFesWwICeBWm2v5HhhieKgglN/gjV+VlEPMiaXikrFiZWd5gj5Vp62FFDdCX2xlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761901794; c=relaxed/simple;
	bh=QyO6tQTVK/p3PuYiIProvWlbDSfmXNwCD8mmdSc7bj8=;
	h=To:Subject:From:Message-Id:Date; b=B429Tj2Afqlz5HQwMWTGUOIyo9aZ/Wv+P6/aHXFjVXA1A911QwxJTVy8eKveXTf6G8JxBEaSn5DiX8OrrGQEKgK40KHrUG9jzv0g3K7Ip9R/mfiVdqz0U5zk4VTqz9ps5z+HxOcLq9tT8ywKVLCSuWNTgG007PC7GgnfrWBdH+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVOz1hsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVOz1hsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB55C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761901793;
	bh=QyO6tQTVK/p3PuYiIProvWlbDSfmXNwCD8mmdSc7bj8=;
	h=To:Subject:From:Date:From;
	b=nVOz1hsK3wXGTA1r51dWg+oy6vGlZFsIln7jnTEqIZ8r+7vSOyXUjpnqRo44Oj95u
	 +VcvH2Ep/CIHAnAwId1vvABHpDM1Co63HhwVispMIGtGCRdJALx+weZqFwiE+vGplr
	 C8pc7Me1o392d7mh6NNtAn5QJWwK4lIe2BurOn79b4duTdYhL7xEo3kwpH6VoLRvA8
	 /XNriFu3PGFNOgGNk46pcMyGKTBYE6E6cg/udfEBGCQJcTW8MohGGJCOntnvXhEjo6
	 cRC4U+SG3xSAwCtbaZGhsvKanmFRe6P9LBSaH0NTKi/kFC7dX0SfQmdy9QhsqO6amN
	 7buzVWbBtpTSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAE5CCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190179363.18704.5689540670194403847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da919eb93bbdc96f354a835c90d86678f9c7a7349681700e263331b5c71f5a2
Date: Fri, 31 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761901793
