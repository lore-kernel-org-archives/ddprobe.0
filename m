Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402961E32A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744271994; cv=none; b=ldzXJNVPzCX8JDL5HR4bVbC7beFk/dBXuVn26eQYY2wfyGR63eJTtgYdYGfa7WO/gVgtZmBKXZqmRi2DUNY2A89H15DHj/jaWEXGRyXsH7d9wk34wL1TogZALdI0UKUKi4dCRXbg1hIXCtV5rsDMiKMOsdWY+8fOKo8LsJIphdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744271994; c=relaxed/simple;
	bh=dYpdEpzO46G/j12zFYUnd2vKaz+2hJN6VstJhzZv304=;
	h=To:Subject:From:Message-Id:Date; b=jmgy1Q9PfZgyhGNTAy4zDU/rS6ex4TW8530MvbuweiRJNsYdG6YX03/sQ1XBys0gZqNhBAeq/HNucQ5pawIg54Ow5yj8yQWP2TSG/nOwHc3W64wTmhA6wi81VTNyFXEfdo8APpX/TZ6QtLx3W+wMfAYkxCtyvoWZtkveViYK1Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqwIJunb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqwIJunb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13AFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744271993;
	bh=dYpdEpzO46G/j12zFYUnd2vKaz+2hJN6VstJhzZv304=;
	h=To:Subject:From:Date:From;
	b=gqwIJunbPdqArgERcYSlpfypuNrQP65dHRcPzsvcXU6uGhAkjGZVVbUG8MBtFm1E2
	 Cu6Ep49w43in9ALsTZaG/kvnF00jlolaxlfA/RdCDYDFtUqTyn1L8nxrbCX6/N2ktQ
	 5ny3w9J8O+a6FyIZkhNqt/Me2Y8xB1xmweO2Y4cZv1H1JWeNSCXKnW2ent0mgpWqXO
	 n7xAUidLnJJ0PHtfCbyigvpRCEDg7YDcxGoalzgyChSSdhCrpf50QJcbjAQ2ltkMEy
	 Kx4pJBro1TLRckfQNQ1JWJ8S/WDFwFvMWdJ7GfTiH9dMYioEHQurtsxgt1Xcmv+Cx/
	 /VOgnqz6wvp3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FC8C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427199365.15522.8843473161461575210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe67dea758111fce2b4cf6e70d54439f3c7242728d1287bd1fe726dca98c721
Date: Thu, 10 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744271993
