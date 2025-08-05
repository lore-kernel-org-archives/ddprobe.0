Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1063A2522B4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754429394; cv=none; b=VECcY+KvnwN8HvV6KguEgeTnklCMP+gfvUkBgKrblICJY4SQSojkYTFxcViPXJ2mOzuWYqoaSOuukXHCxeX0XjjsomAJ5+EKtJntSYiTyiklTQeditFxavYTbZbyH6HYTW2HQsxgLVp0BL5kI06UtQExnLpUIWPNeeJ6HCGuX5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754429394; c=relaxed/simple;
	bh=eE2E8/OvD9jmAfrYFVhb/utOTBvl0wgTSTJZ7WMs3MI=;
	h=To:Subject:From:Message-Id:Date; b=KNV/sILKyTIuFdNQI8qQweYOXvzC63IbbR/J2LdRlUNwyHk0+Gbb1ljzkSxYW7+O2kR2Zh6WWduwTSIQQlfrHAIGBjQ5gDHphuWtrhGzJLk39/0cutLRlK2QPu5qK2ZSJtOmAfgsuWu1QurVUlOQKgUwel+CKs1KLZuRr0P6x2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUgKdphH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUgKdphH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4123C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754429393;
	bh=eE2E8/OvD9jmAfrYFVhb/utOTBvl0wgTSTJZ7WMs3MI=;
	h=To:Subject:From:Date:From;
	b=sUgKdphH2cWGk7DgkuFIawxG3Z+xgXXsWYO7WkUjjyQkGjit49WOieTH35YzQ3sPM
	 OlHQ2rP1uqbpYyTWBsVdGmwuEYg59Uuodo8ASKv9hykO+wEnj4EeZLLtFmp+5QJT/J
	 3UEopmG4d9zWrwm296Q7YQXw3uYp2WTWNlhGO7MkSh+GZjPHB/w0sX+xEkY8xQ5P6Q
	 IH3/G+gq0Zbi/p4BIlFGhs0ylN+wwjrq4vXy4515ZfBMtrvQvGYmXPgXObs/OBdony
	 Ltk5bXcsDioIu4rAGSlwHUazm2rQ0flZjgOm4zOHeyvJ7mICNktn+3Ab0k4h+5Qfxq
	 fO4nfCbZhZwOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9130EC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442939358.18586.16689815051875360303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3051044fb43768f1d59dcbf4e674335ec45d4ea3d3ed40c09df4949822c5ed3a
Date: Tue, 05 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754429393
