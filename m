Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372BA3D5250
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778819434; cv=none; b=lkq6JJCwVy+yIcu8T3lp6bQCRZvk1l/o4olrpqiDoZLZIpRn1lnnlC4wEN2kyPJ11AinUpkUIZTnKypC2UkF55gRP1hrEuuE/jk3Skmu7e2URCViKeu+35VRWDrYEczGxu+ski1LPFUpePhrwATpbUonhNqxWAs4GJdrEnUX+HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778819434; c=relaxed/simple;
	bh=sucBFYiEuGrHH5VtYecaypVaMDh1KyH7BvCY0gsBenA=;
	h=To:Subject:From:Message-Id:Date; b=c7CSFiwrVND3qOgEJPnY37LEdtdoboztqghibjt74xnOInPuU02iPQDsXGqYMW2f/52pAcT4GHUniJz+zZlrSj1iR5TNUlfjxTbaxj3Kxjdolzk3XXyJKPGZm91X5p0UaoReEXyesYt9P0+6Z0cMbhMVTuQ2waNXyq9PLi+DQMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg+CfUA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg+CfUA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB46EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778819433;
	bh=sucBFYiEuGrHH5VtYecaypVaMDh1KyH7BvCY0gsBenA=;
	h=To:Subject:From:Date:From;
	b=rg+CfUA0vu0LTOD6MvgXtxSIid/BQ9eTgRqKzidDsj7muLoSdnGwVncrQl8R8Tdxj
	 4jH0eK6CkyWDF+E90ZppP3Ak9jdKI1kwUYAxdqsvmJaAocDm5UXx+q5pR92thyYwcW
	 tzkUoTvMzT+7xYV56PKmh/XzGLmUGZ8Vrk5P+l4PRfCgG9JU+5+aJySAgPsAYYAoY5
	 dlTwrDPtQNYGS/7t/Ez4USIo7SCJnPoceInyXMIlBzH+K99llLblGFAdorcxP1fJ8H
	 l6EF7yekrpZkGL/09160qmh4Z3ULfBjAgdD2ft0z8TTSmlzv4vKfidgZEECeOxKPtT
	 klJe6DsiABhMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB391CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881943369.18832.4968705930732784433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f39e6298f6a7a2d30fe0913a190f6006876ddaf1945c4e93c27554bab5c33c
Date: Fri, 15 May 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778819433
