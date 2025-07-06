Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F4541A8F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751816394; cv=none; b=bw9dsLgfzi3INxCEaN7KTHaPrT5jqXbJcohlZQL6dbn8R04CZqUxtfi1dLJCumTOA2Ec+mL1brWJ8HeWSVLwqHICRhKrqC7Pz2eqfC0wvStGg7Nz4sGc2HqZ8HJqrVI+WRtUartvg+WraG96NDd2nc9TuwqPQG0FMsq3vhmqwr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751816394; c=relaxed/simple;
	bh=PQol4kTm0XTd7xnQQ0iFuQgh2FC23X7kVsQfbu46Juk=;
	h=To:Subject:From:Message-Id:Date; b=LhyzEaxcO/F4KasjNhLuj5RiI3D0+7l/8OSexuXBODif0HtYK/xRtLGYhai5qrzGbuc4BYBtvlb+IP5F+mHHG/1rFcQTJR0C1eRcWxlkujKcYfO+KEzvI/PzKLmk2ttu7NVu+dhHXEKUyDTszQeAmipO6rfkBeM7yRYQVzrd1SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JneZFxaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JneZFxaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB1C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751816393;
	bh=PQol4kTm0XTd7xnQQ0iFuQgh2FC23X7kVsQfbu46Juk=;
	h=To:Subject:From:Date:From;
	b=JneZFxaWpl7nEngKfMtFg5a0x2oi+icXqKK2s0D4CckcZGLzY5XxgTP0+A4NkUD9W
	 9LvQgLqE5KmteD2n9m/bTY1KarodgLj5Kn7RqfEFjHSzEh7ITgrg0e19h29IQasGeE
	 pDJHCbsec/C+nT+mVaaL+s8QqUBaa28ocYv08nKvlZEtS+3bayOs4Gv2gHULkxtoNM
	 n1AiuupEJ/3SfcZmqgic1Ou6nJFpEJW5mrnW7PluNCSleH1g/RWyfoqPH1m5WDi+Un
	 1bn5ZF51+8e1QdYADe8BlYFkZxGL+uLPFbSe5yb4bsQP7NOTqkBt5jsm5a/+b8MjU/
	 sH4VUkIu8Dmkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DFAC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181639357.14283.15051003449515840361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eda7130a382ca7f61018e93f28baf6163d16b7f40c550802e0b717c97dbfb92
Date: Sun, 06 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751816393
