Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B89339B4BC
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772019894; cv=none; b=Sts90nTtcakXm81UeOACsDHt2mOeVO7xTQO2pTWlccqI5cF5JYUBVTJlJVdKDer6HmtIsCOfm1wKGS6f4PSMmU6pA5x2vTSsEe15G4Sn/9BPS8/lMjUFg/c5bU8DmuNRU36qYxn1/h/jKFMBHr17IbaIAix0edrbYhfEutAkf5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772019894; c=relaxed/simple;
	bh=Q5M2QpdA0LE5ul6ms1WA0MEF8gI0NkLsDdxrqMuJvEg=;
	h=To:Subject:From:Message-Id:Date; b=q6uF56upnUY6+nuSFyPbpAXQ+4wraQCItx/5JzQjxa9u7uUBW8uiksvgdu7ruK0S4zxdBXzwjFcnMv19iX/SfbKhI0eraVL6eZXoJMdSl7BQIdOZ7snR9RifBDkit6Wu/sMqDh8+9NDFXryq/O9TBykoS/iJ32hD6Ob7PsZRTSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtXtTWSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtXtTWSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A960FC2BC87
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772019893;
	bh=Q5M2QpdA0LE5ul6ms1WA0MEF8gI0NkLsDdxrqMuJvEg=;
	h=To:Subject:From:Date:From;
	b=RtXtTWScTs2YtmDke/9zDkdSSOTtosslZNGWtYLlOKzhV6ZS8tSpH7VWbzKQPDxfP
	 9IIYj9h5bd44UnGzju6RYtJO/SSXKLiH0uNtLrW++YeyPg8t4NBDpgJRa4n95Fs52w
	 qGDSpWB+Eqgt2ohimppsktbq743sgV0AW48Mpfb0I5qKwVAsDepZMSiFu96ZYGuKyl
	 /wqCwF3ijWpE9AUzvqQJVUGkCATrnAyZ/zK3atiWuSeR5wfijnBAaahNz+x8qXaDh5
	 HupZ33DsCa5+szgBKqxdrgDmZ07xh43RqjBuaBWdL9NRs32pPJeh67eOJ1ob15gLOq
	 23FKf4AogMAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994A3FCEE8A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201989361.11697.5668632920958207438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e29a6f13c1bc2b6cf184e4048d08043375d5c9c8696d6afb518ad031df72e4
Date: Wed, 25 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772019893
