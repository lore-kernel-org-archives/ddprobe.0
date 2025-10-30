Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502C432ABE0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761791994; cv=none; b=AgzsIKLD2W4MYCvIA/39HzBcFH/o7c2xEasiKcuBBlSinftppn80OG8dTHix3mjh3s57aaGUF4Z6A1xraEiCxJ88X2YNExM5McZcGYG59bdx0zvM6UIkGPrGe/RLXLOfb/zhLqGYG4uisFPwMKFQCT3vVbDz9AfjrNn5Hps6Wc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761791994; c=relaxed/simple;
	bh=xw+iLhMsMqUlVKOqLCIzN9XfkYNWcxZULpw+nbJtiXU=;
	h=To:Subject:From:Message-Id:Date; b=N1JO9kh8w9yt9Jo81Im8gNLgtJhM4B/7LTjtIONMYBvEuEcaeRw0ZJkXoSDhmj3GfYYO0HEM1v0Ad+b863LL8/iWFmbk5j/dLsu7A/FYkUG/a6cfbNkk5mwJRclW992XFWgsoYHb/6ZfzzFAZo9nx57SgT89SDxPxlNTrP6RFdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQeYWsgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQeYWsgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC158C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761791993;
	bh=xw+iLhMsMqUlVKOqLCIzN9XfkYNWcxZULpw+nbJtiXU=;
	h=To:Subject:From:Date:From;
	b=AQeYWsgWuMxAyNtNHn2oBtCK7dNIqMsrEFySkn5acPNg4ku46Ko6qD5b9aIf/aFtv
	 93oRitnEWVzVBpwrziWE6MgEovXRezHI+zei9xJC+e8myHvSMkKzahU48iYHdBnJdZ
	 jHxeiCG5Kce9HeZLp2h6Up6ig+EBh6+X3xIeV0wMS7jcQpZ3F8Gp2p87Cdn4vVDE07
	 2o0I1pZRsJU6Tic6SpTottpkf90xZ1XHKmCFx+Jrto+j2PUrnWVNIcV6o6fxhz3fsA
	 GNZvld57SEASAJqRk9kJFFwnP8B0kvU9yQ1o5t+ARn1JPOywpUGee6zAeZSjup/sO4
	 Jvj1Wn5ElxH4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ECCCCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179199361.26970.18427462770975992405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed67991ea493f9e2acaea66d2993e740aac22cfb4a11c374c3f0a840e3d00dfe
Date: Thu, 30 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761791993
