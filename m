Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312282CA6
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736650554; cv=none; b=CMSxIEkViMptSbfZeIBOL9WJcqGzh/x8h6QFpGuzHP6Dh99HNAj8NduVSJV8d6wgpkjQ9qaga2KTdWXHYGBM/bWKKJYqCDjEHcd21rZRCDGtnh0pWOL7uburhxN3PozWy/9UfMZ435P+CptpcOSeu7PUDY2uvqHe2CfZDAyqGAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736650554; c=relaxed/simple;
	bh=nc5twgnHHymTQes90ni8QUq10w02FRsvtTrXIIP0wZs=;
	h=To:Subject:From:Message-Id:Date; b=eZiqkfF/+lmDDGBS6A84GITyH70eeOL3vbKd1QNyNW2T3qAJqIeGzzimJWZcqffjAY6BusGrlgKfmqm6yK0mVZUKrWyt9nZwxC/uVYY1wtJJ3xLKtzHgZshGHn48HFb01szu63RvNrvHx7a2KqOE1P5ynUrdOR//I9QA2tlXt2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfk1WV9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfk1WV9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB322C4CED2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736650553;
	bh=nc5twgnHHymTQes90ni8QUq10w02FRsvtTrXIIP0wZs=;
	h=To:Subject:From:Date:From;
	b=gfk1WV9M8puMEPmx89yCGbrtY+qB9OWuTmdKYBhHJrN1abHOnB4IqUSRfscfL4U4X
	 awqOgKLZqRqcRKzOTM41ErgwmkmSIlor6LTKk+5JtCPiEE3n31Xr1/PKIOn3bBvyOe
	 MVcLF9HCHAsrYrQDYuZR3VdSvaoZwRmH1u44LkSZbVKxHJM1X+mW7De+o7epASY8uu
	 HJGA2otcsHES1h1fwNB04XDeSMdF+oCpv9aWzxJPxTaoSChNI6/6BtFnErhuuyEoao
	 I8hnp0+4EFmhhU5ryDL6z3eQen8hriubOAzPvx+lSYBltRKV4uy+tUAGwDzfV+vIin
	 v5LvxPmfRiD0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976D7E7719A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173665055360.5547.6535989766076163336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1526671b879d9371472cc4242981d20b545db45e5513972f20610699edb1925c
Date: Sun, 12 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736650553
