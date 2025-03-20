Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32578221550
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742461194; cv=none; b=lxZF4aIapkYqRVXsIhUFCYMlURlcTkfPFjlJAc56dq/3ArEvgMyFlNNVo1QrzoANtxqR0KHgKWsRN5k+GRs4pmzrFX2ONaukgQ1XDjdjhitIDukq8Pntl2WAovt9ce4T04Boa4JrUjgL0cESVvGhazMO43VDM+Urcn9RAn7ZYzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742461194; c=relaxed/simple;
	bh=mtRtmyQpddadNcSukDZu+Gh4RARFVuDushv3XQLlH/g=;
	h=To:Subject:From:Message-Id:Date; b=F8oeETAjrkkUsmnjeubTOX5Tv8Gm7Husvcbm8RHBPA/xbImvMz0JH0r0NLAnZY8QwJPX79nNTHgUeexqSA8NBIKmutwiiiAeNmgLvdP5w8rjJFN0mF0MakxtQ+DSRAQ3MxdsrtTyAeTApgi8HFfMuwauJ+S6JLVwvhQDQekHFfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5jUznn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5jUznn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFE6C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742461193;
	bh=mtRtmyQpddadNcSukDZu+Gh4RARFVuDushv3XQLlH/g=;
	h=To:Subject:From:Date:From;
	b=p5jUznn+G/0BKBixZOIRtln5ow6qlth46B9sv1VDVyBvBZC7et651eijsJ5UsuG5H
	 DWSZPcP/+GaXVnEmMMnKgO+NR/eOtXrGQSFGLo0nDpDw66EpPJ1ZZsPcKXHfYEBrBy
	 LRc+2He6KCKMJSR56JHJ834sAZTKTLE9V6ZDsrfCt5kVdXv3mbbZyVnPhq8NHo9BPT
	 ZYKEbMhBvAM/wsz0k5yE9OpJjB5Vpq3pE0nCqvsuStOM5jIgo4WnryZ4vIi2YtrcIc
	 mvOZ5jZFjjgOoMv/ps1rGNLJMqNeFDqQf7FTz1HIsdul5aUdCadcc6ig7/VHPJrR6I
	 OE1Gd1TPIOvqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D99C36000
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246119360.15729.15218270607643690848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae8aef7509bd187f50734c6f1e15c1dc031e88b2afcfa7901d0ebb5865dcecc
Date: Thu, 20 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742461193
