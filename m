Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A979538CFE8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787434234; cv=none; b=PUXHvMfhyov1Id4YoSVD3aIps2fEKf1OX3AInFte2vuTe+PYgZnwo2TiTys88IlvX1YKnweOehkK2wmkGo+uItrg85Ob5afuavSXvkYC4/KLnZZ6+6l1RmsicmKPiZoJc2+Vaowz2B9J8+jUaSKTEmnPzeps0EWvuVDIeM14ozo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787434234; c=relaxed/simple;
	bh=BAb2ZL7mMYofIgVM1zpHwvJIa9S08qISEV48kJ0qJpU=;
	h=To:Subject:From:Message-Id:Date; b=NrFNy/Z8q1ArrzR3msYaF53VA1oJ/34YvxVAz9vox2KQG93G6ni0lZIZSVWptFtzTBPxtH1YRV31ZXKICymxYBQanNyzbxOXO50GgBjNsJiwsnITTp0Bl0X22Qld5+zxZ8x5UC5Ub3IU5W/ziYq5k8nSRNu2kHTHT7sCSjvId7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=So4l6ZOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="So4l6ZOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95A3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787434233;
	bh=BAb2ZL7mMYofIgVM1zpHwvJIa9S08qISEV48kJ0qJpU=;
	h=To:Subject:From:Date:From;
	b=So4l6ZOdSpLM9+I8PqmlrL+/yysGccjHW0f+DlbWLYpZRip+lr5jwzuMDOdoI6+ry
	 40t8pXRnXqAlnwP64dBphJDP6Zrgf6UJGfZjEcp6Ud+egBGmXxafPjpL3ZgJEdnFNl
	 dZtLSh1FvkP+ZUY4/iTb7zhsq8YCb9/SphGDPfFK6lExjkEY1KUMzhg4Zd3+JpDG4P
	 24YZ2BMQd9fdMh5xLCepBqWsYsK1XumyWIoEmjzIxuvK0895M+yAEpxxzp9b46HSjt
	 s4OX9x4Vqg5chmkkP6vLO0Ygwve79kd9pcRbBNQ5r4d4DfpU6XOd30dWEMhspMO6j3
	 DdRM5fyNBhKYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2A6C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743423369.15841.4683466199517601513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7fe35a248eb980df0dc900584a802651c6e58bf953ea7a0d4a803c00d8da1b
Date: Sat, 22 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787434233
