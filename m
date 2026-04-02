Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58A835B62A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775152533; cv=none; b=Xn3r2euyZoDji2QYSkRD4nr16vHtCC9J7PBYy3oN8DEknfun3/eO7jj1+7/zPLsvt0DVZr8bRVAk0k3FNLJJr8XILeGglRPUU+haPRPD0o36U19Fjeaz+frRkUZgws2FT4owghMPwWKLe7ewwUXdU3XjfjT4i4yV5MBQT7VPjIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775152533; c=relaxed/simple;
	bh=1YvdGAWE6GRYKwVqkQ7qyQ59FY4vWoMX9Jmr+8iqEok=;
	h=To:Subject:From:Message-Id:Date; b=UEnxW/uBlG/2npq44tdZmYUt+s0YY50kok7EzicK1Z5T2N7JDXkT6wYS1o8Rx3HdDY1wsXuJ76TAqA4FELLtDl4KD26llIV7FQuGFy4vhcnF888GErenXKGba3HCicTjvrFmWtp5JoAns7ucVaaR6HsUXCGVuNUd9gP+lmTiEk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBExHkMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBExHkMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA5AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775152533;
	bh=1YvdGAWE6GRYKwVqkQ7qyQ59FY4vWoMX9Jmr+8iqEok=;
	h=To:Subject:From:Date:From;
	b=PBExHkMqAKNLD90gLqlfz+G32dLC4MvORgntYA5EqROtsbbJxONrr2OMa3oibbies
	 l+fbUjGPmFSObZuiyKx4Pfl4HwGnMzb2tEHeUHjiok53xxIvJ1BW1/2hkJevLVsmNE
	 p3sjYkNz56dF0AQ32J7em0vBy3bdnRF293LyvJdLqa4MraDOUZ2JPQesSDd2InBfty
	 oqAa0wdI4n4uxGVD5dj39f2pnGBFi8SqAE23CuIeJVfUe73gtoU4AFCsf6J1wEk2jH
	 7d7ZY42zXjcT0K1Upb6Ou6R+rGVM4oVxyC+IXnkYlKeDOm44blclWs0qirVLRUnUqE
	 5GACZjExldt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA732D6AAF6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515253368.9066.1021993406925210760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5864ca9de75945301da5c8914f9bdf2c43fd58988ff8e3518539f9045d5d850d
Date: Thu, 02 Apr 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775152533
