Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EA31A6814
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788657034; cv=none; b=geZD1ntaGWAPgUjNoikOhWb7O/3nXSMOyg6Vdm2hMogbfLtfatAodU53wQ/vCS4mF0rOwNaZAvk2OTYplq3bB5Zm2W7ZB0yoe0zYzSWsI60Au1FmNw+Xz+1IzdQf8ffKGzSGei5j5nCxNXDCX6k780uzyiASQJAhoRi74LiFrN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788657034; c=relaxed/simple;
	bh=N5N544CNBcJIY03gPPAZ+AfPpyj163rKTRFNyzD2SdQ=;
	h=To:Subject:From:Message-Id:Date; b=rd/8tQeCZdoF7nJQ0SaGDecv41ttBXT1Szcu/1tsupIij8H+CTOKFYXXktAr0+bESFnRdCm2Fh6gc5X0R2hAqjZPlFGS9B/I3NPCqqSvxYOacOlFAoOOUBYtMnQkJfb4/096Ac49Qg2NPbwMYLFSDTht5kTBMuVdp2ix4kgXDvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if8LXmbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if8LXmbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3C5C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788657033;
	bh=N5N544CNBcJIY03gPPAZ+AfPpyj163rKTRFNyzD2SdQ=;
	h=To:Subject:From:Date:From;
	b=if8LXmboQEUJXtcv9sgXzRZrfc4xYlKBuL0QJBjDUowGLfhYjPRAzVh9iwWCOd8iP
	 CXi1DRFzU+6kBNr7lllAFRETd47UlY5gCZnR+xm6KGHB1UZp+UPZnhUjs6RW8dGg/5
	 jit7vs+NJ/MmK6yhCMxCMxUJjgSH+6AKaVJwsE2GkjAYsyib/tEdQTWFS636SU1tME
	 8N2vmTw2vyHyxRhUybK+YgysT8BO3POv+q9jFHrfB7KYIn7K5YVaPUSqhp6w93nYkL
	 pbgtUip45hbKa0Gpt6owF+JKuKqDdPpuieFyP+1Y5uiA3Bk+x7ijrnBkPRwX7zZ6UQ
	 PXllWqKoZprBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CF7C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865703369.1435.11200705790131114524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4aa4eaad178b888db721cf7e46f02d801e4f382f115b74281adbaeac6653ea0
Date: Sun, 06 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788657033
