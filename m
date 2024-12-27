Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB4153389
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735296354; cv=none; b=DyWo+48C5+8IzbrsH7YWIyTSTWf9JXrBn4ef/hthytoWeP/VoZcXGMIz27TvsHYINgdERgLdvI6wvHfCjKM1VhR7jnvCPTYZsn2rcNpDa2DrVaZypgn2n5qR209bQJvSfqGyaoHiNBGT7iDO6D+pL8ff+w2p3Jwxgk0XcOwFVrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735296354; c=relaxed/simple;
	bh=o8cDD36ov4t68ziqU/Mi4QgW5q5HZeRd3QYh6HlAfGA=;
	h=To:Subject:From:Message-Id:Date; b=IbK4VwMP1kwUvDZjRKXN87atMsU1eYec1KIJJqcqmZaBmxCoFVtYYMPeVRPxaqGJMgu7QLdUIx6oxUSNNedaLCvvsuA/mVtsCNZTQ+0WiEBNimOEiXcRQXbpiNelEHalocEBtYb0xaJxxoiXWWaOnOZHQ1wvnnVdlOXi2vrF+Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAuiurJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAuiurJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADF1C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735296353;
	bh=o8cDD36ov4t68ziqU/Mi4QgW5q5HZeRd3QYh6HlAfGA=;
	h=To:Subject:From:Date:From;
	b=pAuiurJ7C0+3SXbEnjGSa1cdcN/xB/fcwex95WPV/sNDvjhbrP8SfEmUCZrUOjpfk
	 g0TGbS7KzrO/cQsyZJMI7vGrFpjlKjNY2ZRj4AlSvSVC6/LX+BbVW4NZRvSVbsZ6lF
	 mQ1f3tYPX5rLd13NzelcCesWjrqP/x659kjsRymhsHxeHzxBuBo+gAo6e+s/9Wtqbg
	 VHq8N0asCpKN9vP/eE7m+j6G6Gc2NxswfwiMEhRnTtmWAMgSajsUdPylIPjQOLwRFG
	 7FJe4ovD/759Pdg0TSJNURStUe+pdtEUt4wmC5om2g/sAq8tAExs+H9RFA+djYMQ6o
	 1uza83CiZwwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91776E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173529635358.26700.2310062646502900664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70efddc7526e23a98f4f5ada114e479517d6d88219150694809754bfead0a3e
Date: Fri, 27 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735296353
