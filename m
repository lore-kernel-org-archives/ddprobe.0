Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F61912B73
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757298594; cv=none; b=Jy/olCSrK2ZlOuM5pyc6cICOTLJSw75svA5IYlmT3veyjBk9XgH8VpYPD49DutY7VC/tBEGY14vBcANK969Bj9c0K7A71tFkpK9koRxJ4K6q1VKa3tWbSeO0ozeYPxvl94afm8KKGDSDm0GIvpaEkjHw8WhKeYF6DpvkRV3ewT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757298594; c=relaxed/simple;
	bh=BaokPmeZnD53uLa3TayL2pMUkMIvAhd/mJsqvVMOT28=;
	h=To:Subject:From:Message-Id:Date; b=YHIqJ03S4yyTPMMHlBm5p9ho8384bIEgfPY+pjtvZaE0kEBahMqUJG1GTnwNWpSsshn0Z6CoaeJGJhsBUJ8yqjTYHJGmC/0UfYkDQUFGROVMA8WPpP+mYCVofxZZqED86/74i1IYX/mUnqIx39OhI2qN3H8oHXrCnJIs3rBxbEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttmI6+4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttmI6+4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1000C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757298593;
	bh=BaokPmeZnD53uLa3TayL2pMUkMIvAhd/mJsqvVMOT28=;
	h=To:Subject:From:Date:From;
	b=ttmI6+4zuVMWym2ca7+7I5iCh1JOjCbzG9jBDxTARotZnlXaYRtJnJUfqMhm+uOJA
	 PdG2RJmMeNdbGvliSIsevMkCgTzMuPSdEFky/J9K/RLnNwDzoZek2Xh9gsXffcyuTH
	 7PSKoVbqfUBdg8PzqijT9PrtfNhuhJqpUwDtDn86l/0JAtiIVXmCGVxzge/bkHL9f8
	 fu9Bky0YmBez8H+zHCYj+inoMVJ/XeM27xr3I4+aTUm7C4Bn9eI/RCJ/IQDGSniQVY
	 GqjgaGWzUwsqbf7BwWN6JOe6eunhJSBPT3pFgTRnJWT9+qbOZRVT2B1TvbXoyUMKae
	 Q18Af1wcBBJww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F223CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729859357.27624.9296957847210975550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb07072274e6b421fdd0d71a982b5001f4ddd535ba59fa8069550e6e912f551
Date: Mon, 08 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757298593
