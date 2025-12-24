Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CD731AA9E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766573634; cv=none; b=V0kuSPxv7TK7U+Ccn2cIjto5rNLUvnjY8kqcjFQUQLTS0waz/HXMfq/WY+B/XetMnHfe5k/k/Bos5m2758VdAoo1irXSisMLt+xGR23a2+RD+20Y7SD0qVn71X42gYUSV3J/aROepYBZBj/2eX4KCKmgocCYZH9l6d4ZGDbUArU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766573634; c=relaxed/simple;
	bh=GJK+R7jqQ7lhq4cfPcCuTEzdqHXJEFEvVf7Tvl2h2AI=;
	h=To:Subject:From:Message-Id:Date; b=mZQ/i3UO3edcsQfVoQ7Ika6O3b8/hYCjIJcFtQ7Fqb7qGvGe795vSffJCShPMqC4DUBC3W9HKDtBSEM0ezE49HBLzG5zGAH8f4jLYlDOcfcMLOQq8XOjLBbcmPX5JguKEpCnHd8IXnjb/XDMt1YjltISoptFqMoBVcnU8dRuFBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9+nrHn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9+nrHn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9055C19421
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766573634;
	bh=GJK+R7jqQ7lhq4cfPcCuTEzdqHXJEFEvVf7Tvl2h2AI=;
	h=To:Subject:From:Date:From;
	b=O9+nrHn01MF4EmvDvS2uqF34bFCjrbgqW1EfiG5lqZGYWL+3oqGqW2UiJsZUDKUzJ
	 XlWGe1De+GJae0H15cXQJhdX/VIsEHeYr4lu3plNKHN5p638atYozUhqUyCHHDrygp
	 pdqp1NzDRTJfreC0iPJx1oQEuXbR9XIzVMqZ6bbPBIn/QlXxVzIGAKt3+nvqSRYdBa
	 f/k94QSOx//0cVMM0UPqqgW7EqgD4znw/oBcSiFIeNwo7YTNQfgHAt3zujpIIWySrk
	 ZHtQkCWfJDbAfJ/vbCJfZN4rwQkmYEuAXdt18QnAbYYLkRyxtsRQvO42SMtIkH3lhi
	 yDb3NFU2lCXPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22FE7544B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657363357.14952.1091657119382327429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87eb7ef6382111a49483c6d2e0598cf64aa8db22933a5cb3fd5b4208e04d394a
Date: Wed, 24 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766573633
