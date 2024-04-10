Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A5A19F
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712709497; cv=none; b=rTxleTOnW2lk5JzyVtPBWl1DnNhkPrYd2GZZx5St22cHK3dD2kosEd+y5w3LA2pYeFc3AYsWw++E9K410qst7l0MZJxrdpgJD6V4kJLUeK3hd10UzZZFTHcthvpwB6YHXEdAqyLzzBDvUbK+FW7SxfkLa2MTtgESh8QcnBo8f5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712709497; c=relaxed/simple;
	bh=izGop62awRFqXoguXhEyRm6wSC95ALApAh4JhnSjluI=;
	h=To:Subject:From:Message-Id:Date; b=GXobmMCzYpEUxCO9WrhGcUCfcUNHpIzWuparecK7gaR1WAJmtihbFZQRXO0hsstdxVk3ZtKip69u6NnUuOWwXw1P8kmHQYPimFKqL/SPUhfvA1Oo6e38PA8Gg1okxjWYhVUHvlFXnZkUJ5wBHWcOySYSqnvFf+9g1NlUChVVo+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lamuaTpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lamuaTpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5BCC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712709496;
	bh=izGop62awRFqXoguXhEyRm6wSC95ALApAh4JhnSjluI=;
	h=To:Subject:From:Date:From;
	b=lamuaTpkoexX8T5Cu6WMeOnkUMpnCLBSgeIU11SFX1FUnhGJ0Bz3YUZLIYpxtwy/d
	 XTrTiHn687SLMj6WmJMQZeJCuPYLBLxd0qb3YIDkBLLhWdQcNR5W7DI35xuGTKb57n
	 XIMMG2l+oXQZtRn2ax0sk+UfK0jdsfFHim6tRrKV8ZUVobMBdrDICD6MyOCvyJ0R4N
	 BWEPVN/WEmOUEj7XKa54ASaJWGpDOrrHZIcGxyaeQAdIwsD2s7Xl9MYqEQFPyuek12
	 8XKmIRZkEjelrBRIYfPms8yssOpUi3dJDDV6h2zXJ3O6j5zRGfv/Fxonlz9aNBFOCZ
	 pQ0TfyrxMwD/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C50DC67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171270949643.19340.736385963838139474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fff221f83bb0c8d62de6aabdd3f865b3b307f62097b07b466c94a620f25a9d
Date: Wed, 10 Apr 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712709496
