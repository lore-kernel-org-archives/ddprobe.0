Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1171D1DFCB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749234594; cv=none; b=ACvAggcEsmZyT+csmLTpr4zEKDUXtVFQydPcyY8lmgVgMAk7tLtVQLu+xwQNzExw6kd2GVQMVGgsE9Ke20iuNG6MDYrGZVtfria24oCpJg2CraYS3VQkbTCivtwH2x/k1PaUGNbLZ5as9SsLG9332hly9n6V8OidvlUVutJm2jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749234594; c=relaxed/simple;
	bh=ht5rmzQl1dkitgQIpFWquSoSdr8KiuPcnRBOTxa2NJ8=;
	h=To:Subject:From:Message-Id:Date; b=ggd98Fr4hPpdNYw1ikqtsewEyyQEhtxYMX9XS0Zd3OEKWa3pRJ33mIznn2jpkuUpwBYn99bJXlzNGmlaFsb/TckSawJWjQVj+xY7hUeAz6h4JmgtLbouVg/iC23r1HtcDEZ310krpkR37eAKsvJGbAavRYo0vq7sfpj0OgQbpwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPCi3HUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPCi3HUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5740C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749234593;
	bh=ht5rmzQl1dkitgQIpFWquSoSdr8KiuPcnRBOTxa2NJ8=;
	h=To:Subject:From:Date:From;
	b=OPCi3HUxRq50TitbWN91t0xSgY02r95tApuAllJMzCcBPqquXIBBNQ/0UHx6EXy06
	 IX7AOs9j1vFs1VSLnHevkJvGXDmsjiTtp9qV1wOjzZ3fmUGc5OYj1KiIUb87WfzZit
	 h5xbbYOJ83+W5ZfhvkdSKbwDyUFu8JxPmnQvEFX2qkpMgCcojM24cJlupGiSc1+IcQ
	 451eiYLWGu0hrY7Fp6XXftttin+yKujotJ6nFuc1CECLsAZXv9UZNhHfEd/qko6+R3
	 UsSGg5Cws0XWxeJk8+mdCgadirGpUyOBKgS+J+94Q6+84FgirFwMbg623BYKMEsk79
	 kssRctDccsk0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431EC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923459358.4439.3130277515934037140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61011d042c259df84d617b69f19deaeab877fc15b1d20e7ee50433291d9be229
Date: Fri, 06 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749234593
