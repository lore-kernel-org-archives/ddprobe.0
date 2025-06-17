Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4E22264BB
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750204795; cv=none; b=IXuP1W0eIPig9XgcZXu47xN40RARAFPbW+ERn/d/KWDKUy2NYDcWKrVDaXbVYPyIYaa+XCcT2oXVW0Fp4M1yJxd5ZxQmpWM1PyHma+1qQ7qkynnkJ8/aKN9F74MBBRf9ezW3g7TwLSPK2VF9QlffFNWPeyhf4EjYhmscfN7bxxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750204795; c=relaxed/simple;
	bh=P+hiRXuPllqC51k+Paz8AcBl1qZbD5f55zBKQLE40Fw=;
	h=To:Subject:From:Message-Id:Date; b=ucghORrcBuKe0silKXvCdHBhJ4z5Pu3HH+W237O3ch8oZ/7GKgLUTCgIDopRlN6ixwuu+CSaqoZO09Ls0uVisyfWsue4hFYtXpSavKcpiuAVEBFLcIMumhoCwvsBwrWdJvIiXCSDfr+EOteTRBa32EvQCUIeAPQHC6FBrPkXa+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d082Bu7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d082Bu7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A647EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750204793;
	bh=P+hiRXuPllqC51k+Paz8AcBl1qZbD5f55zBKQLE40Fw=;
	h=To:Subject:From:Date:From;
	b=d082Bu7IaFsPAkcVgAi0W6CJs8LbCyOcwVJEoTBdHwdLcAljeHiSaF6uwkPXBpufQ
	 BlirSuKL4FVvvdZrinSpD6ABhMWKJmy6WcvMV1qZfKE0U2zNMJxENs9gqmxuyC2LN1
	 tw59uLZmq2lkrFQmN2ezHNuLY4g2Nl8uKMdR3LzlQPv9aWoO5bPsrZ7XvJ+d+ntHe6
	 Eycf4OU9Oxt+fCK90eqTERZupZfU6zAj+3bx12U8HalaNo1c6mtU4wA4uIv+68bgCG
	 vCXNOd+NBI7VG1ef0A0iIWX5jVV3HBsmM0WL3EAGhdciqSkcVNMR91MyCBG2I8yY+n
	 9KbOCORsk6ydw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EF7C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020479357.11622.5169690632829827205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc7fc9eaf72ecbfd13ed633e0c19c7716e82499e117cb78ff5eea0f39b7a6a5
Date: Tue, 17 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750204793
