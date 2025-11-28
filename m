Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC3B86277
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764363774; cv=none; b=I07HfP7soRLh3sCGcUIwM+HCBs44lIrfngetp++CK8LklfmfjcOdrAJHG9Ru0vMVDLGeDcFikqoYFBsWRqG4RJUflu1waAR3+xsdksMz62fE8t+XgboBc+sZ7zZJ/uJeRHMDV+JzqOvnioMGNJa3Cf8AktJLcE5jFIJazzXAWsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764363774; c=relaxed/simple;
	bh=+VsWhhhkBcKXGbs7K7fz683X5S6i8ff6zQWZaY7wI2M=;
	h=To:Subject:From:Message-Id:Date; b=dv2CQEtaYV0ntxY2OrM/BjxHUhsXYVSkfqOfNwgV+JWiZadplLOHstQj9HTcFcF7zoOk0Vw8SSfvtz2o1UAhwO0lRGKd814ldMuCfKFZUZoV+a/+/MxqxhcesFLsuchC9ijMOr9gD7WR0g+DH/xLyJISj2qdhz83CI04jEVk+Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csBZkqbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csBZkqbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ED4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764363773;
	bh=+VsWhhhkBcKXGbs7K7fz683X5S6i8ff6zQWZaY7wI2M=;
	h=To:Subject:From:Date:From;
	b=csBZkqbTlE4h7nucTrnqlEVk0BC9s2SIyx+Sl6BibRTgfalnEeuYjcz4ACGj/uA8D
	 Ezi5SW7xffdcov+P8GtYSDH7KxfvJvnbUnIC4hFolHPRAWm37EENaOZ0as5KHsUMjj
	 gS38YLMn2SrE9wRmMYjjeP68BTwbYnPltC9Ha/jUzrxF7+2lho0pPIbnqCpI4UBdd6
	 pgmObHPqAwlp8SGU30S8ZwqsttdBNRIl3nhsrI0NOtOMb58/mvTaJD6vO7QSsGuLfT
	 XCqDyLIWTqYIbUdATt3N2qn/TzO1QdnprTFfRa22zz/RMcCgFIom8wHJAa9nbNtLGB
	 GNEixV9tLBBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91216D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436377358.18727.5152569897438504069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b310acb6e05d6a0b553815fb9388357c6aad22a9ea1d919b0ca9f507ae7e4ca
Date: Fri, 28 Nov 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764363773
