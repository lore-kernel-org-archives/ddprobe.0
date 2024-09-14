Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332F81CF5D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726338954; cv=none; b=IgKc+Qhb8M0VNuRysz2dbwIE96tSb9fphaWW0QA1dYw7qjFvQw9nluOqNluSe8XayK/aBgCgg0Whr5xcDtSxluvi86HQbn7RezxayCX/aWtYpH/IIzEBTyin3YU+ET/Ae+3zJg+NsQFg5uGUxCi+xorZA86DzumbisFTCCVsHHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726338954; c=relaxed/simple;
	bh=h/tsYa+ReiWO0WVdHb1ySUZhOtkhuhya/duKhI/2+Kk=;
	h=To:Subject:From:Message-Id:Date; b=A9RZlPkZuKBmK30cCHyiCqfrCl3HXTatYO20Mrgi0TovwzwX2k687/435EEXmTwRj1k+W+UzKTXA6RPz7IL3k5L4S92UtXqbYcMhZTVcPR0azuIsV5rKIxMcswY0KwUvdr7eleDFuFA1uPNRsRtaODWfidrGslfmJZlGGKzi3qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJOuri/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJOuri/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96F0C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726338953;
	bh=h/tsYa+ReiWO0WVdHb1ySUZhOtkhuhya/duKhI/2+Kk=;
	h=To:Subject:From:Date:From;
	b=RJOuri/SHGsbcimwoq+ofYJDv0X/y+2EuHX3aj0dvsyrDKFxhiZ3SjZsk2e+JnAp6
	 bbbPqkyqH9VqF65CatYjA5e6tYFRQh503PZoaBue5cVZEBiBvm9VmwxRRceQOpTPYI
	 XaRp7Nb7jnEZY53BpWR7Supisj4JnxR2zCkH0ozWsBvzRBp+iRAa9Kd22REJBsrYKF
	 yljO0eF7oZK9A02zxvg/q50llIqZSaYtDY7LYxHVSv+TkKW2YTSlX31q6SSLiwGr/z
	 RdkyML6qFYgcKDD1NVvqGtSYtJcPndymfomQbX+ltjqgu28VZ2ko6TQQnP54+qyaLZ
	 hLbiiL7jRMHMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931F2C021A9
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633895359.28308.8133151941928107391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476defee56c8ee7653b561c99acb81da69706f843774929a89184aba40d21c99
Date: Sat, 14 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726338953
