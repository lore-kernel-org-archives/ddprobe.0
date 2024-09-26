Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274661714C9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727376354; cv=none; b=YgAJvDkNNF19420+XhCsrOPhn9Ja9+z44zhKgRqLGLkXkNRTG3Ktx81RCNwYF8ebwhoHfEeX4246+I65JDRiDYCISIpZWXIWPkwASMBoOcvPv+EXGuRjeLYRzyjNc9EUC+FDsrY6fg8/LOmxt/CIo3QoFcXYtCWIl1rbtMKtRg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727376354; c=relaxed/simple;
	bh=rQXHmMYkZgfMeSjDv3hd0xvZTRpvDBVpKZQ8MMJDPHg=;
	h=To:Subject:From:Message-Id:Date; b=abwGF3U7AsxIZxfE/eVs/NoYPq+f2dHp/QRXN1F2Sd8uKUydIe318aIR0LOBl100o/4lxyomy98GwKb1izsDmizZqTOSQDeR25bTvQ8ZAcvHXj1DYaLtFkS1zFQdkzV4LPHNOnIDzD2U9PWojMfvj9W13VtrR1DmqS2/aUkzP+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKCGdwY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKCGdwY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18A6C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727376353;
	bh=rQXHmMYkZgfMeSjDv3hd0xvZTRpvDBVpKZQ8MMJDPHg=;
	h=To:Subject:From:Date:From;
	b=nKCGdwY+0TBF/rMNxoemoYVeDDzTwtTbJzs3rbIkmLnBxrrct1tihAKpdtYVcLsNh
	 DRXtBnqt/0A1fsPebTTqlqE2oVwd7HsQbHVQzNye/cJ0eozFjUXUUbgkAoJJ36Wa+h
	 bUkU49YwS7104RtcKGU6aTyZZmgNuQSm2OTEc15E8UmvIjqXdFr4kck5qqwCMw6YkQ
	 9jOAd2EQrzndApQHoyip8BQzDyZkBdLozeL4iOuwe+9qH9MoxkF8LTqKnMmzU9ubGz
	 Fpl8nRU9WynDMgQ5qKqrYpupup6FipDQxzWtz1hVUxS2o5vltC31/dzuBz3W4ijdLw
	 bdYgJu6Qwjk9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC01CDE032
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737635361.25380.14482995180937524492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01b27b819742fd57a7cecd83f4ac9a102faeb1fb7368b616eb795933c59b10b
Date: Thu, 26 Sep 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727376353
