Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D3931E0E5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757586596; cv=none; b=TiBS4iuxX2TWxnyMqZqJrQLUQ6gC+Owkr48mFqpGW/+BXERHZ0GolIwrfOPIwNlrQ5KBZss5//EnMB0h5/EITGIFYbCoKRpPBJnbBfUtTrzV+550QVG6FABwsp2IWu/7hr8DMn60g/Sd62Hy3vOL9injVKwIGRzL1zZYQPWbAH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757586596; c=relaxed/simple;
	bh=BBmXGGvxpHb2r0IGPZQ3HvoWYJsLv4j+CdaeYKjZbOg=;
	h=To:Subject:From:Message-Id:Date; b=kAgtDmQufSW2j4enMQyns8IksdKR4Mz7x/zAb2JxY5gZ6Nj6j616gG5RzNxo4dWKSv7qPySTBvokX7Qv28rNzBYrIGISAsCLN3xXGC76o0nkCCTvnkyN/YpAvcyZWLtTet4bDVDnmQWFcPewKh5hiOJ8uGD+tvFNZ2DeY0if/2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj+IXAZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj+IXAZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1147C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757586593;
	bh=BBmXGGvxpHb2r0IGPZQ3HvoWYJsLv4j+CdaeYKjZbOg=;
	h=To:Subject:From:Date:From;
	b=Aj+IXAZzfWKwU82/jTaGmNVgau8PQKvBcoExXYcLcnSvc6WHSvV03iZb7l0znXIAw
	 Lx7UWf4pxJgyqEJPmBlEQwLNQD9Kg+d0LOFpBqyp5YCCvKNFA4XANUWUg/aRDF5Mxk
	 ChLRS5G65oi6AReWkeqbYywQKqoePPk6kWKvvtgPFvli3D5kez44ahwNqsgUoBMIuQ
	 l95cDxZOi0oB+LUPd46pVk0PS1ikKiVR5vUQAUAQ9myE6c5leW8dsfMwST5Q8wSsw1
	 nQX5ppyXeWgK9tQvOoJkKBwTXfGCjYzyn0Wgo3+QQooFcoYQNld3LOfnV0DNgjTJQp
	 M9V+3NyBbk9JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E20CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175758659358.22939.18193424175433427609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edecffdc7c29118f3a36b54e22ffd52aa1241d8adaf98e02c5fd5424ffe5a0f2
Date: Thu, 11 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757586593
