Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7605239AEC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718731763; cv=none; b=CqxZLFA79AVDP83uS5OzuTrGGnu+1KhztkI0aj5aZ5Jb7M69u+FDsl9iZEsd+BNS9b1RfIxs84QdSdsH2kGM554ItnUyzt0T8nh/rupts8FLO2e8Pc2UN0xX8B/mQ3aZ6YOFy4iZcSkqSd0FLtbvVkI3gQg2q36N0l4D3ZSr2tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718731763; c=relaxed/simple;
	bh=mDL+yc8mizlYbk7EJHhqXdN/rL51TSym+VWk53kqrVk=;
	h=To:Subject:From:Message-Id:Date; b=dmIfScZJ1MZmj61+IkpVKxQ0jJyGHPsIjd8aSciCLsUltq8XbIRj2b7y05tv+idQOLd04/p4UbstFOGzKwYq9N2jRLhRTlMeJUYFrtfSiI20gIV46/NIGoPlbTx67LZAAEaloMa7TL2kWhntzHfd0hhayN69giIZ+616oiL1JRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBawXTbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBawXTbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09D0C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718731762;
	bh=mDL+yc8mizlYbk7EJHhqXdN/rL51TSym+VWk53kqrVk=;
	h=To:Subject:From:Date:From;
	b=cBawXTbMYGsMBcw2R4bX68TOD5SdR1bYdBOCkzZzLiLsstJiO0CruFpH8FPBxGQcp
	 Pht4SQh7aTESV2En33ugbUfUEUmtPKZOnfQkpkRY2AIk5IUR/lFXS5PyXOoP7svmJn
	 xOrD6sqPY1f8FkVEMLN2gCSnj2HfcSzJ6k0B98StGhP09AicQaj5cTPwC6ufga9DDc
	 0iHkjSgMOn7rafHr1mKGVUW+yQJD/hhnDKtc2Z9yzIAtuJzBMp8u9bv7YrqjT7f/aY
	 Vv0LoiqU6264iQb3gEvm+zFUcj/G1iYNRSXPL5xJu6oEFzA4yotDs18fPwY0dP51As
	 Ru6sdw3SCNvIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA326C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 17:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873176281.23250.6126048785494892076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2517b5d268a492e751cf6d2179caa906323ba91cc231d4e0139baf08b3f6a109
Date: Tue, 18 Jun 2024 17:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718731762
