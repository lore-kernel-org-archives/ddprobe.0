Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6FF10E9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722305154; cv=none; b=WCGrJORso3aZMW1DUSLzobzKTsqUdq0puI2wkEhvz6U6Ry7d5aVjX0/TxCkXxX/wH1/XaloLPfpeKd62mqkGPAZtuaf1jxbmjI5yrSEWgR5vUVVtjyBbFP02rmMBmMxXd1NOfnR1+j3BoSZzJ4TsOCr+vi87nzNUDsw4QtyFYHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722305154; c=relaxed/simple;
	bh=TJifyWVCug91aRWiA+fYCGMMhKoYOtmFPpSW5mh1C4M=;
	h=To:Subject:From:Message-Id:Date; b=h1OQYSi9cpMcjnkstrM1XasYwWEAEyBFxOTomChopkGsa6yPGLRVXQRbCtVaL71Ka06y+dPauiCKLJSYir6gic0LbOAj3lTD9baYoHZRHatA6+EVY6iYEXRdfS8Bf61Sx4d/dBpU0Blpz/JqfT9bou+lNE7FH73y9kTcnaBkMss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFo0HedU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFo0HedU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8892C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722305153;
	bh=TJifyWVCug91aRWiA+fYCGMMhKoYOtmFPpSW5mh1C4M=;
	h=To:Subject:From:Date:From;
	b=PFo0HedUc/heEyRYBprmmmRGen12ubZvNNiNAvjIDvLlWZsandpnT80xc3GybXVjb
	 v1exV48v46wua8663ejZvOCjQRTZCThctkuU3CS8UNvjDvoZnoFX/PpXAFAu64F2+/
	 xS+rlzzcDFrRFA5BC9GEKAnyYVPxGxclaRYIlboMY/r6ZWCcQU3O+H6+M9YABX/gQi
	 3kgjluwCmXpYOPpZhNWGChafsPJ6eNtp+at91p4tW1js9aSJHDxcMc7N/WQph//QBA
	 c+7Ur+wtqTHZ7lfKKdVWiYyF+UJ2aR7EDJO20x5fzGaBd85RXwLMpUa3pxD6TkOugg
	 snBdAX6sKOgBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C8C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172230515360.30040.3219506392684596125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fb74337d0afbb372de4a99b5a7002a6e6f25715d7c6adebeb7a14a47f2d20a
Date: Tue, 30 Jul 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722305153
