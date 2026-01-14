Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CAD199D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768381434; cv=none; b=EQkO/+4DbnknBDkmkYVp4qS4UwhA62zDaPnOX/1L/0UDVNJHI/r9+x6RtXIuknUMRkoMzcjRLgUvzHewndHAJwFtKGQJh9l4zjkIzIMsvlogVu/ngOdQIInjNNJM1ltaymKvQ19sT8EagVnaMCbCLD9SYke6nFLwfH9NXglYREo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768381434; c=relaxed/simple;
	bh=CzyuTrAb4JOXbwCx+S2oJamSS2xgqM+PM2WQAjma4e0=;
	h=To:Subject:From:Message-Id:Date; b=asGDFJno5J/0kIxpXUVCOqIVOiV7gAtwyydtqT8r6A8UXaTAhrD87q5PlmCK1E+jBXhgJvW+aMbLh+RUfklaNOndPMOidm0b+y4cjj6OagRNk61obIpDe8+BDhXU+DCue1aEjUVEvVavA9jZivUAQLGg5Z7s8+rwZ+Fg7tvBDUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICu9+KTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICu9+KTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE82C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768381433;
	bh=CzyuTrAb4JOXbwCx+S2oJamSS2xgqM+PM2WQAjma4e0=;
	h=To:Subject:From:Date:From;
	b=ICu9+KTua3UOguuMCsz1PgzPAnDFPgGgokY6gDXI0gyr4q4BH2jj84B4QBd6zyxIj
	 vyWmKee6tSDOgukeSMRBZGwHEa6VHV7uHzhAnMI/Ml6pyeN94h4+Q4Gn4/zWuZHm2n
	 pC9MOvvU8X1RaCxlxkxmpvlZ+bckaCd1NovjVLr89yHb51OZ/Sl+JN/XU3bwSpOBr7
	 Vvw0p45pzxF74+TdANxYTPKIIUSwwzUh4C/qhxzqRVQFR7r1TlXXEsHLCgYe2nUOMz
	 ch8wO9hUKy31CAUt1wQqWm3lTEKCeglXyEqu+UnZ1Ug3EzXTNgA8zw+JVccdyhg3gN
	 vrOM0JUc4qDdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21BD31A2B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838143357.11362.17772858664362811335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29c00b9e6664bbd01e31a92b38cc6aae0579d19fad69d167e40f3138b232a87
Date: Wed, 14 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768381433
