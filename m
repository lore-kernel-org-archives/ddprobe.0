Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E083C08A
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726632354; cv=none; b=q44Mng4UOYtSK788wl7aesX+th/rD/vJrwxwPU/Hk3HKdbF67unsgDvCImpfI2ZRjZsSHPJa1u9uolWnuivqSK3gr89SjXOIrzsVPpKLHhYLh+9MFOeKK6vKXR2W9ibruY5yyxhNhEfJxKW3PpQoPZ0LaKUpaVosJ9kzYmqLwkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726632354; c=relaxed/simple;
	bh=pEQAFACgV8Fq/AgAfEWlcxmuoLxYAdZAFhPr7LSbkF8=;
	h=To:Subject:From:Message-Id:Date; b=L2AAYc3ii7wZa8SBm6DHIPw8fjMW+HIsBnVBljpDBKK+o4N85xCW4ak4MeV/viaaGOvzyy/H+jndnWLltLnf8PLghpUmvrSyVJklEYQlg2voLD6e9woa35i5b2QsBw9Lb13GeLoDOzAz1dNQsu7gw0m77PsYudfDPBV4Gn6QabA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p31AMt1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p31AMt1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03C1C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726632353;
	bh=pEQAFACgV8Fq/AgAfEWlcxmuoLxYAdZAFhPr7LSbkF8=;
	h=To:Subject:From:Date:From;
	b=p31AMt1yhRDi6oi+vVUTZ8tMFpnSCinIXnNdWgbVazCGIXQzCsEOaBhITJ4mnj39N
	 8kElznlK6cIYroYTuJI6gOwhNy9aBEhm5pjlLJ0sj8SXK9OAvt8JzrY+oWeIZJ34Io
	 jIvIQpe2HcQmVYEpXzqieNf6dNmHZGvgn//c3cwW/TiwAnRoLezNGdXochdEJx68Oa
	 OMnhdHAq9dz9XWV1+zl70BXZEOdVictc0M7bcd25ZaSC7uGLE88Wd66UTdcLdi6YnO
	 6gQk9VFA6fEYE/qTVO0/eFS4lHM2MblEn9GFO/gU7fucoWLdtExeK7CfB194RCFTEx
	 0zmeJaVdo8j6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEDFCAC5B7
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663235359.19449.6868815340458580638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a07426053523028d9970526810120694743c97f064e8cace93c2b03d425ada
Date: Wed, 18 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726632353
