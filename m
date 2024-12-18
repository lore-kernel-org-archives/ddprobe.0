Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E2933F9
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734502554; cv=none; b=EV6D30GWlMqAoet44t9Wi8Z0jiK4t8MWM53caqxZ1voseQnh9eaAQaKyg7Xk9cjFJBM+tEr9PGa4oFsqPMcHRi7lmv0DIT9zlsHKxozs/sJKn6uC7ykXpvOG5a+HyXQVRaiBDVUOKlDF/pnaWYNm0D5ZSCAsgPEYZTkxmdARtfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734502554; c=relaxed/simple;
	bh=Zt1JI1sBx82vB7TLCrwZ5IFr+77cxxp2r5sxK1UqJUs=;
	h=To:Subject:From:Message-Id:Date; b=M/AJ7esVxI+29bZOyh8MbyvYUD3Xlq/87RM4vp0IWKKdNeIiH+CqbArS41EERtc0OCQ7mGOmLBjZ1AwmbtokicHf7yxRtYY5GeCFC8JEiLjjA43E6fuFmoWQzkseoQQyCnsjmEqiqeazJ5eejiHowyPsK6Q+hS/S59Pnq68y46M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAumEP/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAumEP/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339CC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734502553;
	bh=Zt1JI1sBx82vB7TLCrwZ5IFr+77cxxp2r5sxK1UqJUs=;
	h=To:Subject:From:Date:From;
	b=YAumEP/pHchwqWKcxzodRJWruDKYUAJaVE6a6KXvOWCBMErrdv35wXbsafYiVBfnS
	 4rfsjU2CRuDf+9u5hTkBMuIjYqx8N0tksYPvS1tN5tODqLJUH3YS2X/0rhX2gifDg7
	 fWZ/wkuG24C0vOX6LkkwbNYVsEExJIqAbP0d4xI/+jg3uBwqFebiJpRv3yzAxRQ0qe
	 w61bG9A5NS8DD6FYma3fMKQQPkSrHADxZ7Eo/a8znpvAR++F/2D1w2HRclbc9x1oiy
	 jSqeYlcbaQstsJ6JgyGvAC2D+c3CKcU+NoMfBau6DJfUQDIMLFb02XGXNpM27zEFWx
	 Gtw8SULF1v6Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92151E77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173450255357.30133.9745616424191645581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd52dceb7e51f1c820a0d8f9c18f7d3473e5c5a5432b59499143d6934b771487
Date: Wed, 18 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734502553
