Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D01DDD7
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715532743; cv=none; b=fzB5ZEn9Cff6gM5gMNXdjHs2Evq8Un/LeJmI5l426xkyfrUy91b2WTBOdYNEMekKOtQ+OK6qRufyNBh+oibBEx0ByyMjpoOjvplfvpdZeBx80yysa2Pkss0Un0NzphHdL2UrjIlAa3S6Mt0lw5UBbuJNK3lUO+y6deXn4JpA1QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715532743; c=relaxed/simple;
	bh=kC3JXNXASJbeVBaLEYyNawLeC722rs6FMDPewSu0Z+U=;
	h=To:Subject:From:Message-Id:Date; b=LtZURGJ+v7KPfM5B9UhCziFWLGYoucwxqVGts8Nf0W19vImjiu61w22yh2wZsBWpnK4TdKwzHExe7sV6nSxOSHX7I2nlffWDbI/xPP9zF97A9yNJamYogHWECF2jTiA28lN3YsrUXjA+ydBXtqOKPhQ1hZBj1qoshZIud9N8etE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FRZr9+tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FRZr9+tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7C8C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715532742;
	bh=kC3JXNXASJbeVBaLEYyNawLeC722rs6FMDPewSu0Z+U=;
	h=To:Subject:From:Date:From;
	b=FRZr9+tvfuaKAHiWmEE4qrwo4AtPfbSk02tkpyYT7EB1Hy7lVFbWAhi5TsQtbeI1K
	 adnMVzTuo3TCHLoRLdKMCszphsl8WtDuVkHhvkiY2lA/8j1rXide8pYLT35x+PqXMa
	 CvQjWW2r6GDjMwp2dCzeGpTX0KZqxcL+SUFAxxQzOzd1e3ZiTl6oSU6rxMvb3MM2i/
	 v8JmSpAN3Ph4JlZ+hmaHtV8m+Wz2sZgm0sYuQm414tysNw3DQMmUX+74MOK37Q9TMe
	 shZy3IylQUwwx0kbwwpSSQyyRYHmmblyeGlRRggP7py2U9GqbiLFcP3Gq8lKDXsaAA
	 oRRoahtrolCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF80C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553274277.19004.268534723918410034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8423f6d24f025ee6e562636bb2c194f8ff0bcf76410e3c97a2ce2b7e8e3a9e2c
Date: Sun, 12 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715532742
