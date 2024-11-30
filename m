Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFB363A9
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732932354; cv=none; b=ii9cuC9fB4sxS30D1ZOEs8smdpH/lpPI2b88/usZe/bxfAPQVFOwHXYLt6LrEz7PZXzP1zULKbMiWYCSe1AFwBl2EWyDHXZFPBrT97I0/40SqvG7opB+yp4wuhUP+H1IoTOuJCJZYMwcwAl6zCMs0zUtq94tm/3rci4F2mZgWfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732932354; c=relaxed/simple;
	bh=qzJDrftwJsNusF0zEGHsMVkQtJYt/TufvQ472+WcM0U=;
	h=To:Subject:From:Message-Id:Date; b=PePrnu8D/ehlam5xpwoEtLqzflRM0p486UUcLP4+ejmIdWQpgL2jU1bM3XN2uMq2phE51ITOi3Yg52axl1uEWa4Bnsmmu51X89kC4IWdydaqJmM+IJRH8eDYlp2yKcYBixQuuEhigjZFrg6Pn/43KDnKhAye1D5rAuyDucX7y8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOXarql3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOXarql3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BD7C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732932353;
	bh=qzJDrftwJsNusF0zEGHsMVkQtJYt/TufvQ472+WcM0U=;
	h=To:Subject:From:Date:From;
	b=jOXarql3kJRQvGIqpVa+rL3uhNHG4kN0P/y+dLwEE1Fpt4yT5y3JnLGqUX8+hvm3g
	 I/BxOwXSv/mO4gsLtrnua1UmuuS8k4KcQhlYxQZhgkNbstY7Qu+RhanKW/sZIukB59
	 CV5mtrrezWuMWAeR2111Iur9G3FDwzHmKhiOAKZowsYZs4HJEUDg2/XvZl5ijv3HXj
	 jdnY6kCBJuA9L2AZpSSquTvIr+1xTw1a+jD5zc4Cbi92fY86DpdD8WsC2vWp8xsedu
	 Au2kSbGGQHu2zfc0X7sFM/Gp+B3aw/mmXL5mqGYQwG5Jf9weJy9BKitpl3Fj4/lOSe
	 lcxQOqUWsuCAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D445D735E4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293235362.29284.10952845567279177971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83700cbb3276891a8caa612d23af6b288abe528a19a1ee3609d2ba565364cbdb
Date: Sat, 30 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732932353
