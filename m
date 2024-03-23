Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0487642056
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711219697; cv=none; b=Wl4ejsS9AUT6gUFaDzME+H5pajvRAm2p4iFsqUah1xUe1x3+8VHuE2Epr785lBtBXiKzqmcA5l+20fezK8D7f3uuGwMc2JEwcF23nLCh8m4dMN+JoEIUa/+HMKZ+Tk0D7LOdVTHirXlSwrXPUdqbLnZKyzflFsuRLy1+VTBw5s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711219697; c=relaxed/simple;
	bh=du8xkkryzK8t8dIt/Ubd2pw5M3vSaXtSdGLKw5KhurE=;
	h=To:Subject:From:Message-Id:Date; b=t5CkUBS0wIMHSVs1/UVgLb4sSgf8pghMUjDxhjuLdyDoN0HYt/fka8SBHFkp/wK4HQQsv7VapkA3XFg5ZpKfI/cc4ftWfO9bm+o0fSn93OkONwfdH88ab/y8Yyrcy7fKTdiNwLXaNElFo3GdDpqp9k92OO8cp+7KMSK5tTadVDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgzV5Fsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgzV5Fsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C24C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711219696;
	bh=du8xkkryzK8t8dIt/Ubd2pw5M3vSaXtSdGLKw5KhurE=;
	h=To:Subject:From:Date:From;
	b=BgzV5FspWzqKChJoIeLWDjGYH39/S7tQZxUwDSyBaNsy535XsVdjycbdLtbRSyXsU
	 ywNwOFmCB/ps1y7SkUevxXV1mRoxMxsLTv7P4moUntWFRjqfq0gXtrEGuh9e7v+S2v
	 vt2tyX6Sq6tj107m/8WE4+h2Yx1j5zqxbhUt7gkvwWq8fcYs7k6qsa1bafNNLEMQ3T
	 /X8Sla1VJp8H5StvREIzYuuUK19IgZFgkv6rRKyA31TNoq9EIFOBaDD3N+97s+OO+c
	 XAhio6uQmFJk3+uAISf5KHVxTGG3II0mJfYQ4z3kJmHwjZIvdvl9SvaVQ8vVXTM4Ey
	 ZW8fVJCep5qsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6476DC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171121969640.24670.8884934532520731470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02ad6438d31bf29254bfc4c140e03a3c8689fd02bf21a0048fb57cb5fe1aa16
Date: Sat, 23 Mar 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711219696
