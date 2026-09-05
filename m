Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5070F30C146
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788636034; cv=none; b=cEih1/8EraWyWcMlfcgA+3dGHocLnycjSFEFDnk+kfs0M3RIzFQa5ONuzsFxpTBbirVvu4KJqXxTbFhQJXeirTvtBAET3w1pKNmAL0ORFSHhDpgwiE4+DCovXWj0bSBbGt6De24ZJsdVWI0BEBlmZOiyMUp3xATMz8Ee97QQ/Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788636034; c=relaxed/simple;
	bh=zuPeW8UNyZBeWmPZslg2y3DA99zOCBeXVIfNZ6O1syQ=;
	h=To:Subject:From:Message-Id:Date; b=O1tb6YYg/v9TL/rJQMW7WF9QukfUkhU7xPaO+weZ7LFw/8USqen8In156oomDNBncQ371ecgl0bw89nEp898gLty/HGvujLGV/ucMDQOnqy+1VwLQCqz+nP97tv59gVFMRq0LaO61nDqn0t9/zuAuMKLTIYwnOH2d+SmRVpADJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjQeS3G4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjQeS3G4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14CCC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788636033;
	bh=zuPeW8UNyZBeWmPZslg2y3DA99zOCBeXVIfNZ6O1syQ=;
	h=To:Subject:From:Date:From;
	b=bjQeS3G4aXnNIIOZqr9DIpPKoVZNiJXSzSDWM8qvfHyBKtkvwppipsie2mJegZ1zO
	 /q0Jn/Fmwc4TGNweswnqB+HT2mSnwD1o4Vb9t395z/fBhWTlpC5ylwnQTYxSN2ujOn
	 W2R3SKZahjnaOoBXEn4zOXyQaOpdBQD57Z59qxCtzEFY7Ezx+WcRrEQ+UrFYyIQNsp
	 jz7u2abtKGnMVMfXWSa3/bzM2r6+G1b5ErYhjiblpyR1G/84YMPw7Nk+P5Oat+0S0R
	 ZC1a/aUzJWSeJ+/Dovcyvcn85xW0Xq7dBveIgNdLgWoTqCWMFvKHgsKnteQ+Y0TOiQ
	 DdC4KCsEJ3Uug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED48C79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863603368.10929.4671917708287293258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5dc07a32086d7e6bd6bf04c982b8570852c9e15aa1b80ce40e22493605da7c
Date: Sat, 05 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788636033
