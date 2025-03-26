Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF851F3FE3
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743002994; cv=none; b=ej7xZrkMC5V5PBwPukpvNp+dXiymC7sFZrUMl+uCu7yO01T4aAAHUF1GxsCN6lwFZfEP6vrMBXGsE6pdi7npYUh8IWktGdX2rxmLaB/Bq3wD79/ToQAK9t/01H4LSnyHasYRrB8SCJWfr9D9NlLO/br6OCdNPG92TveRdrnxDUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743002994; c=relaxed/simple;
	bh=VpJYWsnRX87SnV+NuWSYBBdtzNqgK2wSXJ7d0PDJSjI=;
	h=To:Subject:From:Message-Id:Date; b=hTIhWntE8oX67FnOaV3Tc8rTJgytdaxvsFGsM9VE0MHGnUxGc8aBITLtK/BofkpfUpXKfLw+f0ChwKHa1wQM20OMQ7btgMz4W3nCSlQiHqYI80WvUpUUofUb7CeEXtRZile/qqMZP1ezKb8+l7PXn5IXTmHmpshAwQp4muc9CCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCUzio0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCUzio0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8410C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743002993;
	bh=VpJYWsnRX87SnV+NuWSYBBdtzNqgK2wSXJ7d0PDJSjI=;
	h=To:Subject:From:Date:From;
	b=mCUzio0TXv0r+6AjpidIAYopsLxVKcIB9McMsSgg3hXBnzQx/a6V2yWscrnY4Cu53
	 vX5T+WvZAabnFn/TMG/2bt+Er6NvPz7cXbUka5R6lCeesolwf98B+ySqX7tAruN4oI
	 6/uFyzQ+xOoUgzjLYnTEDZ0GqfFcfjcCRWiHP1YpPG86F8dvdELel4AFdDCrwaSUMG
	 7LCyuvyE+k4pPj+52DzluyvarAuAFezyGR72dWLQnSpLxSKbiKFxrAAeEd2Faf6FPu
	 kXoJhexfjoRVCXLAtZaDPqzr0b7i1bbJOUskVrVfDvNu6sXOyQWdCvvAfbdggZYScE
	 lbiXs+qyIi17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EFAC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300299360.6708.17328298248883992712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9086aa330e911fe27f5628edc0d0a647fcfc303528e6c7bc96e997847dffb982
Date: Wed, 26 Mar 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743002993
