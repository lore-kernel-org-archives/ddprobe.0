Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDE92040B6
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758678594; cv=none; b=YRWITkIUrP+DHdNzDMvRn/Gf0KwKvMRNcAXYD+bFNq6/x++9NAreA1Kq2PIKVtV5fEf9KC7U/tr3YYpwx2sbtwwDmyI1DXsR7oZbgb0tHg6+rvfPuFgKyE//0HsZbq2L9i+TiLU+o4A5ROGDpzQWetrF3tzFggAIGtRWzH6/w3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758678594; c=relaxed/simple;
	bh=PqFxnmYTH4sLenXO/oqm8hH7QWUwUaSQ0iNqhuDmd1s=;
	h=To:Subject:From:Message-Id:Date; b=PZ+ub31atrzTTbHNFgjyFojeqPuwxHo+l4DO1fTigYZaTE6jPlkepxM1GkZ/ru4Q3sSV6ESjyO5oLJWueO2HBxHz+ZAXigWj0Y1dxG6NGv+fMw6h54S9Ag7RWYmq1rIN/hOQq/5JhvJUJ0RXeJKiykaIxaDm2tuf2+37aL+CSog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRZyY80/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRZyY80/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758678593;
	bh=PqFxnmYTH4sLenXO/oqm8hH7QWUwUaSQ0iNqhuDmd1s=;
	h=To:Subject:From:Date:From;
	b=oRZyY80//Y6xzjCiT+1BppGbbPyio4t0ssJnIEAEAMiPBiyJJCDcgWI6fjr+7QGTn
	 sH3AFVB7+ZnY3IOeAsROMREG7bEaWJI2IsGLSAHkV+3w9lhqpk8oWAOyXnQ3OmZyXV
	 5ErkBeXV+fqwMHJ11f6FYdQ2yckkR4hjyzX6X3wcupKX/SunOKhMlfoDttG+5nrldn
	 OLvYECHsvShlyUem7EO0XYVjAvozyEcBdd0Vd+duwmtZZB3aBE4YqvrLW9H/UbIOKu
	 I9jzwvqK/a7AUEkB7z8t2va/dJ1L9NNb2FJHLSuJJILevvB4iBKeyRU1BmVTWWTUqv
	 GJYUNhMrkkt7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F557CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175867859357.29325.18444806796312478360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b87c6429c7e9107e4fe1cb27adfaf1b82c67c0c15ddefb0379d930577ece9fe
Date: Wed, 24 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758678593
