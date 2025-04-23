Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394F21F2C45
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745404194; cv=none; b=dRYl5ySmDuySSTPzI9b/O+wJzLcCzqlNAhyfJrblBN4cf1HX/BXzZ9oftuqynxFCrrFFsz2g3lsvQ5WQFJhgdfFGOvHeDv5ow1idJR8QQO/tD/UpibimmdMpl8ksvgr9yeFpRM7w+xiSqkwbhPuNH93yAfVbtIOF8uc44zjcSS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745404194; c=relaxed/simple;
	bh=hKm4MTPuqrQ+UzD8rN1ZSzVTH1dcJX8ZwY2BjvNFcwE=;
	h=To:Subject:From:Message-Id:Date; b=D2V7OeBBL2U+2cz9XlhzL8G227BJ990o7P+kkRvpc7R1ulAqEGOZTdpudZOS7WOHVqGUD1vFltpCJN0BgCrYvOMkd8us5LcGOJeY+3yrsao4IpEtHP5tC74mD2HU2c4TIgeRrt5sbmGTfl+4dX43RmDgKmmVgxvQTDt1nReJ7S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2ywrYn3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2ywrYn3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F841C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745404193;
	bh=hKm4MTPuqrQ+UzD8rN1ZSzVTH1dcJX8ZwY2BjvNFcwE=;
	h=To:Subject:From:Date:From;
	b=I2ywrYn3lp83UuVC63dhka3g1em+1dVJJ8e1olJ5TxZ8fAW3lRM48lkgox71NR0wl
	 oIuP/aeRRtQklDMNQdj9bHtvedcsynaVBriUCrwLdH12qIuciNqPrzTYVhGULKiXxy
	 y1JwAKwPXGRTzdkJUoh02WKpw3rarL3bu9oNy8M3tUBwj4QkjZjIYMTSDxItN3f48+
	 9p47XcsKi+Om9+17rNTKyBtetvq27DEslH93U4TDZyQah5QREkoYwR6jFK2kgJCDbL
	 FYwjwrBocK8gJ9pbIMoc9Z6c8F07hZB5JOXGaFqsUnPlLywP2+LeL2VggBWD4A/Yqo
	 dtHfnsq8BCzrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB0C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540419358.13485.18346637226775441949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fca108d694fc56022a1d002b5bf55941e10b0a5366e563dfbf7764bca3206d
Date: Wed, 23 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745404193
