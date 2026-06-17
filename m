Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDED0394E8A
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781674595; cv=none; b=a+A+ZQfAHvN/PGyqlipdwBL4jFRYClw3fFUbAHL7wwrmj+4qt3WbAWuiNnpmoMKvtp5/OdJk2AhuMfHHKg/jmk5xB2WNJCbDzevEgGtUUuWT6exQu67vzZsXKjMSAUJ/dW73nrg1OSP6MesCwVulXUuPRs7PwDjnidoIyw6MYUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781674595; c=relaxed/simple;
	bh=tw9uPc+wAF3SaNcxJSiROHHLNfgrrbkuTKXuK9b6lWk=;
	h=To:Subject:From:Message-Id:Date; b=fpJL0udszM86rjtoZYMGyOoYO0q+3AkWipLXAG6xOkyHPG+a0Jz2ZodWxllKFVPTJWR9+2IFxC9k/Gopje2aRsDeUaPD9G7qwD6biYJ226N3AwmOwTzOhDyHXfra1QHq03VnGjzznXfgZCPAyyyutSZKNBq21faY9eo4aoyXwlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIjX1ANy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIjX1ANy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A13CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781674594;
	bh=tw9uPc+wAF3SaNcxJSiROHHLNfgrrbkuTKXuK9b6lWk=;
	h=To:Subject:From:Date:From;
	b=lIjX1ANyIlfRlT2D2GrDGLCeAmIiYCKGX0J381goPQEjOAYioevOoj1gNZDnEp8S0
	 oX+a5REJr3IBG5kJXbY+eCVL8EllsXmNNHO/1SThiMmIec3yQRWAB5pVgqs/vWcW+D
	 Pnb8dYDCkuR1EYkR15P1a87Li0lJhXSadxum7/dS2yJYwhCNcTaYDH+cvaNTHRlu1j
	 XlNs8n/y1Ai7nU+eOFtJS27md8EVwdy6v8znSZBKtzrM7uh8fF6lgrsAbtRej/OPq/
	 aalwUer2d8/skEH5xDyR0/5nhEn+LeWdvUv1b5nBvp8S05irZASwfedYhvV7zGzO1+
	 7EeNYX1NOJxiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02482CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:36:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167459398.12390.833789199765865202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391d7f3aef800250465cc8c12485627412d14cdfbf053251557ccfeb174b4ec7
Date: Wed, 17 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781674593
