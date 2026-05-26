Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103973B389A
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779771154; cv=none; b=TALGmlfVPNXbWzSA1TjFBQlxdkC8/fWdXU536xbyJ5LlPleNSq7RL7kpnKTkANt7Mzz6aJ5Qmp/iZgiGSmELJd5+Oj5RCTX+nJhx5WjDKAvU18FyXoHOtvKrL38BJVZMcjG6kt0/hiZBnUecnqaokFTnhxv5XHNPrVroNlw+f2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779771154; c=relaxed/simple;
	bh=MChRHMaMU5KgOCmxGXW0f0TKKSsOMdH1augWjiDWQWQ=;
	h=To:Subject:From:Message-Id:Date; b=IgN8aRCglovs4VAOyAnkQE8RaqJ6ZBD9pXaISwAGDys5oLAqyGzDQsmhlaHc3jsO6MiX830uSziMAaoobwXcy/MowsBnSL4QS0avJMoYzXtafEK9VW4lqmXLa5EBDB2BO+cOq/aFwWAfpX2GpldLdFatQGywLgfFjydgNYX3a78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsDi7J9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsDi7J9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C288AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779771153;
	bh=MChRHMaMU5KgOCmxGXW0f0TKKSsOMdH1augWjiDWQWQ=;
	h=To:Subject:From:Date:From;
	b=GsDi7J9Xg6I1p7Vt1fPgW/u5vlLHZ5/cGfIEdjdIfIKPK2GVjFY/JaoJO8vwF4rj1
	 uMG0RHehxmJBC0TNPrTaXKr0QMzJ5sp7Ahi4aYeIgrUVyB3i3oO2B52l0b6iWcIAZa
	 PfHqhQw5rJ7eHe8jS9dPCtCvQUugGp90yE++0IrGA8m1+HPfLXV4ZgAfR4hIMQvSEa
	 8jOWkkqV+xTjK3A+H6Ab7IWyfQDyWv/UpipBAsqmrKd1ocosZQbpih81wmjD+4ZzSZ
	 JF1/37aGS3MlSe1Iqg7BdbB6i4KT37ZK/11b89nbuBGREA5kcRw+qLsptXEXOffO9W
	 fZ8eOCtnGeFKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA404CD5BCF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 04:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977115368.24999.4008245797611479672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a1ed45aba0b10be48e690306636c25c38e84f3aec2570a1970f18075bf55d3e
Date: Tue, 26 May 2026 04:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779771153
