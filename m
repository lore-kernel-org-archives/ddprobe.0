Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F05953365
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747167594; cv=none; b=TEYjfeP1A1upn8m9K1lXgXRPjEitjXgAroMa+InRgHruvwPwuq6712oFrA6YpbtZsfKc4oXYAB3d9dUVMI23rw5mELkbbhIaeXt7GqciF2hCqa6wL6gqiQn5KLqd8dCM6NJanL3ePHhNP4mEx6GQdeI8X0St0i4VZXhJ8Nvu+3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747167594; c=relaxed/simple;
	bh=qfE9e41bcfKqAzaZg5EqCjUqEXRwpExECChJHnCXDt8=;
	h=To:Subject:From:Message-Id:Date; b=GbftBtADwdBpUeMZlI23HGPvelB4dW3riF+V8yfwl3q5SFQ9RN4V2e3oHvmtY4Kaz9xtcN6JYIq1ie3F3NH/3RGVptPhU8uf7EUpfwYMdRoy+NGXuWh83FTl7wO3Vt3Y839lTtRUIJdy6OSvngrDMzuJZSl90EwxgowJPLQ3vH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GD2T5kle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GD2T5kle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE98C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747167593;
	bh=qfE9e41bcfKqAzaZg5EqCjUqEXRwpExECChJHnCXDt8=;
	h=To:Subject:From:Date:From;
	b=GD2T5kle7uObthEm5qV5ki4fttY25m802spYsHoNYPl5znA6UaNRkndVSPBqLGrIO
	 fhQYQ9hafdj6aJFkoftXP5CFR/C2NhhBGelwXyl2v8ehJozkyQePqW6CeDxVlcI0tY
	 YEaVnMZGBPIwh1Kvg0oisTR9we1wAJPBIl1/1rb2DGFTa51c2R+NrMCw8kRMAUwzSb
	 P/S72JrJCi/NWgeGmMJ2t6spuysCt/N0C5bF2xejcqGRr4cmA2jCT+5//Cf8YwFLYV
	 khR/Zh3W1mr96IhMRLPW75su5pgz2hR+rS8vgUuHdLe5bdls3r45YLY+NPopQfecw4
	 NnQggRGgidNlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC4C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716759357.8545.14326435419140109641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea82cfde8efee41bc8296a214e91dff2984e52d10a2169610322c00d5b19e125
Date: Tue, 13 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747167593
