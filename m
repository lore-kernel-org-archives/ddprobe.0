Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB832F4A
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735611354; cv=none; b=ZXkadSdBfWjieumh2Kx8VZ5DF7mEL7Yv9TC2CVtKUcIwhuvjUsB1hHnt1cnFrXfJ7AMljz2AE3yyD/6BkNhRg7W1jPJ6SH+3w0GBx9jTrn/O4uMu5DDpLGf8LKRtLPNp+uXPdG3M/oSzpRwmiwu7iF+5QqupLGUE0d6+zu4MP9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735611354; c=relaxed/simple;
	bh=tlYmm9l1k5RYD+EZ8dnt2Sj53/HG7/g4GxO9uX13JvI=;
	h=To:Subject:From:Message-Id:Date; b=JwDK9CN29hYJvC5jqHjMG6kgg/amdwJjErJxnVV00W0XBbSbdDBbn0auF0ZH+6yVveQWux0rlQy2mv2+E/y5WvDRhmkELdLUDy9OH/kwlviHF8XiFVbjA0UzwcHNN+DEYGZb6BJszCFhC/Ua20QxmotTDfOXEchrcdPO6pLAZSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvJ4aCbe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvJ4aCbe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA13C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735611353;
	bh=tlYmm9l1k5RYD+EZ8dnt2Sj53/HG7/g4GxO9uX13JvI=;
	h=To:Subject:From:Date:From;
	b=WvJ4aCbep/55GKKSKdlvgLnHAA7q1smGu39m/ijCMVeWduXPeTNM5F9coTKl9MPx/
	 5jCovRTshvS3e0iKjsxvnl8/WJRqJVZofG3WnksC1nmynGeEyDUUtPQnob+pSSFI/3
	 o9t0TBxyaMEbobbyXGt3FtENR3SeGasbcasE5lt/U5pC7HG3kFohUFpn3YhIEWl2gq
	 3PDRY9vzYA2C/0visWl1Mc3eVZB3pss0jBtjzirWNsgyiBXHOuQ85bX4shJrPuEytN
	 LM5sD1+cS2RzlMDBdRZNPThCQhjVQ+PDa01A1cNWO7+jrfn/O2I5hcWWQlYIE1gKsH
	 m/Gu+X6UtjaNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A4CE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173561135363.15662.15203114195709107560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332a87d5956e3c034f2bbea6ea6dedd066c4eb8e793b671962e295bca5baa340
Date: Tue, 31 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735611353
