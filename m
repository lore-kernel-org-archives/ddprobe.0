Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208343A48E6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782887914; cv=none; b=s7U1Xl6lmlqizke51QPItjSkzpQUMuXzHTV3/GfEWYIpXQeyAnVV8SzmlZFELsuuZG7G5AMDUlfA5g44Hgkm8/a4U/UO0uS1KqPNjk+bZBKu2gbJ2jkaVNO9V8AxvqxfjBStFMhqCoe+vxjvUXaP2Kwv7y753sPUBaz47VjS174=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782887914; c=relaxed/simple;
	bh=VZ7ezvzGQVh5KtHCr6YJqKRE0vnzHms3/DNT48L7h2I=;
	h=To:Subject:From:Message-Id:Date; b=HArPwTLYFKLlX83kGqCV0UFl5gLd7yF7R0SdoPZ1WxZV0+2u2afQFVQ3CuBgOLTqumXUDmvlPe1hTmTohsKxrqGQHvx8kqLQDG4A8MWMOYi9vd8Jh83ZAk87hVLq4Ctb59baB9vcHoEGtY/dzlRbLiQkS3UboW4I1jdeGKJ3zvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7WPVFKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7WPVFKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E2DC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782887913;
	bh=VZ7ezvzGQVh5KtHCr6YJqKRE0vnzHms3/DNT48L7h2I=;
	h=To:Subject:From:Date:From;
	b=Y7WPVFKXsUKF2BZUbGXg2F164m2hRQ+7jBHJINi9poSo5ieM3pTn7FxDhpjgcUZyV
	 bhpH/THlUZTAxQSxI9YBYuWRLlTu7X+3/rqhxWhWoViaIlXxDfhDxq28je7qXRiuvH
	 3yG9YBTCkmRk5+syocO+HL+I3S7ZldUlKz5pg/JGaMfPaIVTAvJQ4Ff88oxfq2D1bj
	 4xZYC1vL7LsLU3DQWscTqafjIDIvFs+EcjFFnNed63+tdCVcyDJv03AYO86opzKRsa
	 DjBGfQpoNFGV0ogcNyZv7d/JcwUBi83PXNvXnfJ/9/qhQ9PpqH2SM/CM7ZbVUDBRrj
	 kDa5VSGQNe3rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6464C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288791373.2985.3829265127973175362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a099cc68cd7f9d9e561bcabed4c1e1662c33f8e2fc752022d6517ee2cffce88b
Date: Wed, 01 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782887913
