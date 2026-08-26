Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF44C393DDD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787742634; cv=none; b=nN3C3tmGDgLZemYuJ12H9m/fDac3/O+bLuyxHPY2V8O9PsZ10+pW/ywOtKLl54sDD5ji47MSvI+TPiBp0SPl2htD0OWLksskFpRk30XeGTyuIESqyKMhn5RGDfks1fFi4XQkUSb1kUmOz+ctk1AM8V15tvpgpsTEQttY/hyfWN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787742634; c=relaxed/simple;
	bh=mPnvJkcbwZ9pxGvTMp+X9eSv352Y+FT9nD4Uwc0NQCw=;
	h=To:Subject:From:Message-Id:Date; b=QXs0q6ZTh8pvLcDOO6yFxe8Kll3v+YdQmzqnDi6fXMb9AJspYBdQ3h66SmSjNap4MS3VTCVpyptivduMSqccTr8tOFk4b5MzgX+Zewq3c3LV6J+YVNy+qDQdG+lemSC/cYC0TIYOxOKP0VWGjv+krkXMjq+7Fm7HAqEg/Ijd+FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZqKQISi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZqKQISi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64AAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787742633;
	bh=mPnvJkcbwZ9pxGvTMp+X9eSv352Y+FT9nD4Uwc0NQCw=;
	h=To:Subject:From:Date:From;
	b=EZqKQISiSPXcgH0oD2XU8znIQZXQfViMbs3z353740mLqPkZbLzljBSmaRXk+AzfH
	 NS72n0WDPEo4EhZgRtQczBUxu5KqNCZOXjzF64XaV8Wn6/43vYVCZPG5EzEtkKsHdx
	 hOqM030vsdjNLF3HaRZ2tgegYuhhLmMp76Py08Iw+ecxExESidgTDMhTrFpQkpymxT
	 xYPcFmRrJXVE4IWxnQHLyCqKiBis84rOgZVrx+q4K2Cf+IFteIEm37rOVfutMi8jKd
	 WS3IfdwBNclQha+sCoIio81svGGNI61le756AUSWlh6sf5sh/tTnru0BOlOkdwVqF3
	 BMDUxYiFHRZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B139FC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774263369.6710.16540135930454024048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36489852dc5b011495b6fe5fa3fcd159ed900a617d022133a8cddbe9c3854d0a
Date: Wed, 26 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787742633
