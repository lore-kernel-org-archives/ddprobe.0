Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CD018E029
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731627354; cv=none; b=c5+itULM7g1CddlYrTcvC+TrUrVwCQAQ5uqIYCCEwhJre6jyC2udnWWAVyQxddTOHyzlOV5pIUsT3IEr05HTrO07+zg0XrYcGDwINSlqigBJ+dAU5Ny8775sQ3WOSGDeSXSqyjYkRrY9EOduUSV6dn6Dbwo7DD+i1N+kBzTaoqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731627354; c=relaxed/simple;
	bh=xqJPDCbb24W/jmM8fpU3KwEHnBQ11mqquv8ObO2wiuI=;
	h=To:Subject:From:Message-Id:Date; b=RdzWugLxR0RzAkKY9x0R8Tbox44eu6j7ZP+YB9CX3OXD+/gi+rh7ncblfCD7ceMFjxZ2vp1R6TZLkUjHZ/5/spELpgaqagpi3J6xL1UVWXsJiUt32io+cjGNSQlMjEOyWC7z4+1t0IRKA23Kw7+CeBRWm4vwLowylibylHHMxas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCAVEQvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCAVEQvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4476C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731627353;
	bh=xqJPDCbb24W/jmM8fpU3KwEHnBQ11mqquv8ObO2wiuI=;
	h=To:Subject:From:Date:From;
	b=QCAVEQvYvtJwHKfbczWXQQSFumQ2sTvZrzXNhuY6FlzrMzkHv5o3EKI3ltSfC8F/X
	 Y4afupFuBnp8nGPY7f1ttG9g4J2ibmeVtZzW+WW0CDn6rvGMtU1xPoSqoPtErKjPlr
	 63xbn+aRsCVct/YYaw8PgQVLHVw6YCeqpMeSzM+8qOIZ+GMgfQDWvqvNJkIlDzgZcM
	 CQHTKUrpwZjmOrDx/ELN70OJAa7/W6MBQKp0Mrsy7aDGg+wEyAHK82RFxl2xjdHse+
	 wUJa4/1A8MY/vc6N+Yk0JDBOxvijvEz41zHJSHojLhEfKil/QFhrFHH3iXRzNbGc1x
	 sYzScE4FsGzbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984EBD6A25B
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173162735361.14656.9766422154215817692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642b9f0e1b00f329e9a28897548b44dc4fdad6a5eb36e9e91f3c46c67e257171
Date: Thu, 14 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731627353
