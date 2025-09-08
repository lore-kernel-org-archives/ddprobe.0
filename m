Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158BA27876A
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757366995; cv=none; b=sXHgy3SnUQWi1ksHjU5+fj25PFNijfukMcCIfVIT7ZhlVqL9UzrxIYsl7X87nl7MsV2d3kqkqYk2nVTgme/9KJ3Y8eAVXpPEtChqsMz2m5JOes8E4djKrteQl8Zu9suvhu65V91DSdNbRr+UE8E5jrkcO6z6csLLB7jdhSc7HhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757366995; c=relaxed/simple;
	bh=SmFN3HZ1QSKWE9U9RGHluwyyuwFCHEL3zPGCHcopdgQ=;
	h=To:Subject:From:Message-Id:Date; b=F54nxMVhBjw7kpq7f7Pny51mpeGMdKM+HKAC6terygAn6Y29DJZHUEXXr4H3kuxqg2w+Fl2ezwwbS7Sqr16CFcTtlz1GGUzTatpeiCxZ3+rLydG+U4hz28nSFUdbHPJJtP3hisIUPL0ftE1QzcdskCSZDxSwsLve+cSelLDsIpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwkgd83p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwkgd83p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3E9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757366993;
	bh=SmFN3HZ1QSKWE9U9RGHluwyyuwFCHEL3zPGCHcopdgQ=;
	h=To:Subject:From:Date:From;
	b=mwkgd83pM556dF3iHS3oPdea6IguNgnU9o8GBmk/v9qdaf6FbCCuV230FlgZ2Ofsv
	 PakgyQuoiZvJjSoAThzrHEWIwL70ocVsdZS6MJWyD26wWuEhrN6Mzw6u58FGeCPGKZ
	 Rj4wyBbAVTF6J/PN1lhtdhPvVXOJ/AcEFCdeV6Rg171XqARhv7UoJ9pOhIPJE8vOnJ
	 w6KvvBfWBXQHGXZy5TZ1240L9VAPL4d2Uz7htgb8Tu+EGaZMZU9PtGwWMu4hFRV19k
	 CsXbxTIojb+BoYTrAyGIrikcCg9NalbXrTeW3KdyjS8tZD80pMX4Vowix4MvZ3ovUa
	 r9t0oN43k2fFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90775CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736699358.28193.2655621852307961619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3d798a3d978445f46f2b9950764b94c33da8a094e5baa97705e21855d395be
Date: Mon, 08 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757366993
