Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDD7394
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723632954; cv=none; b=qYH5nGiXIYe9qberpg6EVhO037kQaUbq9yfJxGwLkfo+5JsIbNdXV0yeFwM8dcVj3pB8z02TWqBIFzgd2wNXmXYqvWVuRsaNm6GB5Yce1cM6PopgpJMQObFNkISgMkTbpV+Gx7FiLnj1s5mzTGgAKCtUqLnP0LMN6VTe6Rcnsl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723632954; c=relaxed/simple;
	bh=6c1/MDSXT3mpG+ralBorncEfbv3/NGJwfjgHcS2sGNA=;
	h=To:Subject:From:Message-Id:Date; b=EmWtRlSbsC8ErWUzBWnnmh5uExPhBHfjOFH76Zmrh4WGbviD/JPOlLYpb0WPxZd0lr9UXP5sRGPzkKTkxjXL1BcRCJaMK7U/r9hjX0KeCueFCfPk47aIstuhsK5oQMg3SJL5nv35vdotDtKD7gYd94gF3KpGe+8JXZY8I9Nevj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YriNwvhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YriNwvhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC02C4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723632953;
	bh=6c1/MDSXT3mpG+ralBorncEfbv3/NGJwfjgHcS2sGNA=;
	h=To:Subject:From:Date:From;
	b=YriNwvhQI7SoEkOogZ8v++fO4SW88ie5Iuijx3IW4oyAy4pZHKx9DJAELo1Mz19wR
	 zDkgOI6OSlY8kL/+E+7l2n0fMWd9Yrjjuik/BRUynPZvM6geS72QH7p4OCvNzZ6pZB
	 PGkRafmt/7Z2eKPgB2MJxmSpLIF4LQHpCGfy2uLs+v4rGzB1UiY83rT4Fiar3sUlOP
	 y0y9i2wtMsik+9KFQGR0g6wShEYh1+nAEei1V0FakHgTg3snjrXKcmGBLNsOSXO34J
	 NERuNM5z2GQ1skQg9anRf9x5bslLJPfMcGJFSDu964d4nsr3rnqjHaZHsbShtk320v
	 vNtPzQe0iIarg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9049FC52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172363295358.5496.1530092594264388230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8960d72b92015410a56708a9f910ab1f431ff8ff0cdccae6e962d7872ae41575
Date: Wed, 14 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723632953
