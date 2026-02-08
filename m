Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A54027D77D
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770557034; cv=none; b=UdV/sZv6HcMe5wNJf/o3A9B5fXNOIjjXTELS0ycyWvvpqbqw++590ReNttiFY2FrAUMur+2GyOabL++h96501zOCLZS11toxzolOAQC/qjALbVJ4DTn0i1VUavIudIP1dhF0siHaW0j6XEkcrQgvtG4lem/X0TFROdvdWiLeaL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770557034; c=relaxed/simple;
	bh=HZB3nhv23z5Off3G40OrQvdwiPeHgem6+OEUe18DzS8=;
	h=To:Subject:From:Message-Id:Date; b=XDGmdxLCkYqePyy58Xrh345ePMhHb9RllCj/yZtaY8w53YTHdtCtPpQgtAkCwOx2qnhwhNynbT3U3sZGB38QP/1X3L9R4I0QsBZHQUZEB9jKfVuk/V++gtzQHTsvIbWvNCxfrIZmBeObiIep5B2hixcRiGCeWNIxwTyF55GKu64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWXVXwqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWXVXwqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C99C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770557033;
	bh=HZB3nhv23z5Off3G40OrQvdwiPeHgem6+OEUe18DzS8=;
	h=To:Subject:From:Date:From;
	b=gWXVXwqT0qSem+Q824dKgdQ+P1/hYuZgDWfV2KPk+tKKqKlCsA5wHWuTb3u1zE1IY
	 MyTQsT2T/I/Twc0la9KEICsHMtQsHqM/NFhFSF3ehD6TyT+RRSSf//0W1q9dX40jfD
	 8IvksEypG86i4f1GIj/ZXGwR6lDM4uLyFsHIxu+FQuPdJ8+7HztUOjLk7z/xWfm6BZ
	 3MDlQL2fQOgVSxPsGf1QS/jaKTwCuuVBwvoMVtcFCcHUlrcOnUaoJoJY9ZMtDApAAW
	 rBty8McMRFy9r1g57IlKxHdVD0Sl+50qPrhhHkjy399FL6JpIpv7ZY05TduM/6myOj
	 O3/ND7/cQonMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94659EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055703359.24694.4570448169127861468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed04baf3a5be36b0872adf0ed4959614cb314ff58cd88776f953d37c486acb6
Date: Sun, 08 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770557033
