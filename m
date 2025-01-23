Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4227635975
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737607554; cv=none; b=DhBi8dYyOp2u8Af3IM1JFaEgdNXWntBkUpqDiqIdqSVI75tbLJGKOrljpw3IUIjuVNMttHpnFkyeRvEJYyZRhZlMOCAQHGOOcEAnJdRB5UlZUsxtCpdBtm3kiQuQ5BuvnN2/SEE8F7bp3cV8uSCz7gVgoUF+xydptLZX/ts2lj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737607554; c=relaxed/simple;
	bh=8vzrh/Q20s+GFzsjvUv1CsU3lXvHK8JCI09PURQeUKY=;
	h=To:Subject:From:Message-Id:Date; b=T3KIdpI4vUfuJUQfdHshH8anBLrZ8qs3XvI8G9I6UAFW2sBvRjFc3PZZ38L1x2s4hJMZDP9etBQ3qD+CIrAZCC9EcJpj++5dtkJV7dGTkkEz7QOH+btg72IcvC+TcV4DL0ImjiHhAzdQjyEDolIfvki04ZRBVdzGzViBJun8kvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeSe1QKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeSe1QKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3499C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737607553;
	bh=8vzrh/Q20s+GFzsjvUv1CsU3lXvHK8JCI09PURQeUKY=;
	h=To:Subject:From:Date:From;
	b=VeSe1QKZcWPnQ0LWuzl8o8ywM2AHLCX1i70pn5Lr7yM77AU8imuecl7Qxy4lygpTr
	 h2XEG8qVs2KG9SbE3mh275aVMzRy92WVNJJQ5fmvX7Mh1qGK0iE2HQdLH3iE/igsEd
	 ir025TC/UR2syAdTYpMCXOWWRlgNzHfxm4q2rHnVB3AJDGUO8hXSine7RmFR64hH4i
	 nkniFVZXEOgpFh32JWxtoA8o0SWbiLonwnTI6kMp4mta6b/ZpRZkL9iTFvwx/UfDJ0
	 I3HziQdHMAE03rPIENCzD14p+CE524OteA++z/ru71yoOfIHEe1xMal9xlpx5TqV7H
	 1RX+I/OBP5Xuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC5DC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760755362.15364.5846792548636970888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3601ab427ffd1c2860a3f51d601746ac85395198357518f89cd2f80b91a6a173
Date: Thu, 23 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737607553
