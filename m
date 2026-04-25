Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC6313959D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777079854; cv=none; b=H2C7kA0RUww3shsyUHUXt2JzGsdt42ZJl8mgGtOQN2dbpV8wmQnRvZ4sFhU8xJqaFz0/xUPu0Tyo+vc4GdomNPfWpQTlW8qvjnH3TsQvOe3u4gYi5oD/cgc0xEhzCx8E/6OqKQduJPLVT0Jvw1yDt9Pl6wHPv3xrPdF7pmXX6Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777079854; c=relaxed/simple;
	bh=78HpXExHmGesIQXOtD3HCiy20AC6oY8Sbi5M7+aegkg=;
	h=To:Subject:From:Message-Id:Date; b=nk1w2IINyH/K3lorrgz48o4E/Cf33mUnEFbEPzV69rBQ+jXNWb8JINUw9j0nMaOzf8p5EWAilZutd3lyKucXtfOor/Hma9L1I51vWcBkK5wf54sNA6qlL22E6sX6yoY5xZ+QAF1z0m4lykTum/WvwgXos+aVgHYQBZHxD0vuQSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcXwsjNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcXwsjNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B90C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777079853;
	bh=78HpXExHmGesIQXOtD3HCiy20AC6oY8Sbi5M7+aegkg=;
	h=To:Subject:From:Date:From;
	b=PcXwsjNpyZlg25c6g0sGiBlGrOQ+CGv0cKguzvVaF7+QXzBgs+FIOJqSFu8UPWF8y
	 26cRz9AKSsGkr9+LAmndERRtBMYDRK3y7G4a9IOHQudwP3UCvyAYRwUkMbTyD07Boi
	 XtcOgFGgUwvk0UpnXdTJdvZzGoSjXkDY+PvuFLPQ09bjbl0GHL0Vd3Kt21QEydxWn/
	 mQFhb7A2tzaexssiDoEBp+KGqMcwc8kOzVdaeaq94L2AUEtEvAX8IciFWw2EeI8xLb
	 3X2bt+P5TiIiu74pk9ne4KzRoRypCtdeqWeGJ1c8u/30NU8BNFEgqjLdboczdpJGNE
	 vf9lyK/fv2ofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFDFFF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707985369.20612.14319320666396051368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66a27abbd67d39fafbd8742df4f287174124a0e6ea7606c1ceffe78d3db1988
Date: Sat, 25 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777079853
