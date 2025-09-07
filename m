Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188548BEC
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757217594; cv=none; b=HYokupOqjYi3Hkmmo+48Aq6CpcYBqv4rEQkTKX1TdZ7NhN+g/JPy+wvFwqmu730zL1t8Y6UunN5qN/fovlc7xV8BBjZ351kSwKhRyx8t8al0WwxX/HeUUq/CN+R9uPLdfN4wIUqRtcz3UA/m7gfTaZAo1Zx8oasnLpLxxKtD4oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757217594; c=relaxed/simple;
	bh=3X871BnETocXcZMGHvYUyP5GOaJuQu04X6seypJyRuw=;
	h=To:Subject:From:Message-Id:Date; b=JlJ3q/EkZgEtv0+6AvNpuruxTRZbWRlPhuxdXyrTaZQMlA5Tk7QhNdfWRG4hsSsXpDuBVXW8kZtU3rdChP5FZtf+/MG0stwkCL6I3goQ6M+Kcw1m4TeiI5m8im7xDOubR2urtVswJiR9Y28n8twHlXvhbDsDjwl2kiNjziin7iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ok1aHlHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ok1aHlHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A584AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757217593;
	bh=3X871BnETocXcZMGHvYUyP5GOaJuQu04X6seypJyRuw=;
	h=To:Subject:From:Date:From;
	b=ok1aHlHMpkQuheXOKMFUBjIHUaz0tx75l+pjHbchJVt3PlPIopQdpUw9gAT5ZJ3wD
	 fao+k5kcTqIbeMe0hibwlIxYOyAu41zRnveHDHOA81ppA9ixoxER810pDPt77sXHcI
	 GGG1IHJ8b0CRpoDNZi/wPwvxD7nOAIs/CYe9yFYdbUe6tsgEo6EUYlXnyNjH3nT+so
	 ZSEIU+kiyqqh5FU45EeWucjX8HJVUoPMCxMUcJi3sRZMLgtJkD2Y/+Ouh46DVrpPH7
	 cMXooayj8l8SCAk2cKl7iNGFut+wOUfEqgfrQJ0lCgYSHrntaFVEaPdUElSklhXhiU
	 oTVaa/ZItGMsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FA5CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721759357.16868.10956712554936733332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448a52bbe50b50ed0bd94eeea229776c60bfee6b3238fe3447166387b63bd417
Date: Sun, 07 Sep 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757217593
