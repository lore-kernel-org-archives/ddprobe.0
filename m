Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277D2480DEB
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791148234; cv=none; b=lxCDtHK/G9Tshmz2YAHymu3Ra+J8GxYbuX0d/c9CMgk9A1xpR4vPml5XwcHahfliVFaqVWWfWUkR/ER5u71BCyVu1i61wJyd+4H7NRB7tVgBA1qsAHsNHIWh42BwFgIA5ShuSm5xYU2BSszLI6P+XBdkqKU4pmykVY2uLYpzHQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791148234; c=relaxed/simple;
	bh=dtMHp/d3emwqYgx/hjw+57m6m3vJDtg/Z/Wb+U14usY=;
	h=To:Subject:From:Message-Id:Date; b=mMQvliiEGS7a5iFHq2GUJZymNsBxFnfNW122l33vwqDWaFVqi1BnZO4L1J2ratUnroseLh/HYqCQTAxA15HlqT8qgpbPVGOMFRgCGMLUSmYkaQ4KiHFldc4zrq9v1y1wbUKqjopGtn+CPoKlmdXx0XapT+O/QdkmTWSyBd8qOxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzlzY7iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzlzY7iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23A7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791148233;
	bh=dtMHp/d3emwqYgx/hjw+57m6m3vJDtg/Z/Wb+U14usY=;
	h=To:Subject:From:Date:From;
	b=JzlzY7iu3GZUf1KdWCyFI5xezYh0IJzfv4o+rA7G89WpeRH38qM7alzZxXZgeriJ6
	 4C+rh/MtspwtQSJT+eeVCGlOGcktWZRvnBrUE4wK/DisordxbIRXpysGQb86pIfSi7
	 jZe4NK06SkJxVvrSGuOX07sN8CtYQTU8LWFo6tWzPWT1XoUij+8RBbG6w7flQuJVrc
	 Z/GD3km+NEPJcJOJb1hYoP0wT4r5VzEeVZaolZqSn3beL0vcH69bWF7ON/6WdDyRxl
	 uEbuRtFwauPbnrGFzgsFlki5WJL1+euhOePKB5Ev+FpxoDmN0QPX4LCHQthedyHbIB
	 sT3Ww2mGv89hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F76CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114823368.29311.7261119151218581738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4152e1383b200cbc78c6444c7546ff0afc6fb10622d3751b9353ee89ad6bb3
Date: Sun, 04 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791148233
