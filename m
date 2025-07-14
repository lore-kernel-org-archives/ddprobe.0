Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1364078F26
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752465594; cv=none; b=O0HJ/1cOoi88RRJz1a5joAYsgRrhuZamWmPuyO0zsQO7O2BLsmbrGc7ciqG4pNbXfPSwHHeD83uE4XvUzYOhHTRTr7TnD/oEssIn9aHsc8vYK3Q9meUtAEiRmfJblD71cv3dohPgd/asmeG2D8yG1dXumbebI2SrlxDPWnSMUC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752465594; c=relaxed/simple;
	bh=VgQZlKvwUpAFeN67StYxPVoOQmL7hYYsst0vG59yN6k=;
	h=To:Subject:From:Message-Id:Date; b=ideEXAUlx0xsvf0gVls2967ifbS8WpPXUwdK87BLcmLqDDAFLJnIoi3tHBfISufx1giYLY3EW5jOcwf+KjYuc/B8HAqPmazsv21KaZv5zacqXORoBBsd/TfjVTw7VrKCXFdkvVojzVGWZbw8kl9cFqIgNSUx/1sm9DtTSz7R9Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwyHVpyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwyHVpyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752465593;
	bh=VgQZlKvwUpAFeN67StYxPVoOQmL7hYYsst0vG59yN6k=;
	h=To:Subject:From:Date:From;
	b=DwyHVpylKgtwgsnnMSAcUgm9KBg8whLn9yaTGTiWhb6fC8Jk80u/lwBSNDnj9XfU6
	 3uhGK+WTt6E6NXgAMZnhVFJ7V9JyZGtSY5B47gXixFGVGTkDp10P2LscVVddORab0o
	 sGbGMABpA8fcsOO4MGfs60qtQuIjQ0di7PTc6dw0Jh84wwAcpYdZx9i+8fFFykQOxR
	 /CGFqN82wmGz8ttcDkj5i93YXTZhFkBfPPZBxXoGzKrmNvF8HcFBzJwjiNHp/fESio
	 fEqNWhGNYvD3huyANwFK9ViUAZGCFSO+xQFosNAbqHpr5qpwu82ddCbAhOv7+Ni9Vp
	 ou0DQe1emwmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B86C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246559357.4903.16985855235047315087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77a571b5726a679c2fa0665103d9b79e1d3bfda67a76a87a62149c91e0353f5
Date: Mon, 14 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752465593
