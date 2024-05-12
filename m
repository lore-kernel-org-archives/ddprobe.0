Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FF74D9F2
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715535743; cv=none; b=LAUYfMBvN4uX0rYLqpi6ousZYs59BNpHijzEZ25L2ZpFTf8sb4Qwf/CZ+tiQHixYBDroMUSYCwq7UWEF7mPMEwOfH8qZLQ9IRaXo4PAGI3cpKf+8wD+xJF1iF4NgIdmrsiCA8AgofSqVb3LEnR2g5r1IwtIYubLYeZHv05mI9Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715535743; c=relaxed/simple;
	bh=67p383wHFl2xRoaFIRaqauXvA1Kn5LvzAYMo+kpBhVc=;
	h=To:Subject:From:Message-Id:Date; b=fZZc7IEFKu+zldN2QGkY/ikr88S2ZBchg6WWut524+nW0F/9fCbWMblDNIW684sIqVFwItR1UyRzs+0wxIjPzRZrtvnsqaOSFoHgVj02Yhh6Vdypeu7KjB5F3U1RbD9OScIxVYatkgFDAXrJt2nbNb5ecsuqZBOI8ZWWQTGV+5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU4R2rBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU4R2rBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAA4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715535742;
	bh=67p383wHFl2xRoaFIRaqauXvA1Kn5LvzAYMo+kpBhVc=;
	h=To:Subject:From:Date:From;
	b=tU4R2rBVPSp9rYV49xo3Ls6HRisDDkAsHrH1j5rfo8FSJaD59DlWM4kpMXyUZ8rF9
	 4+UqP8Wi6Ex07Cy6tfHtVK8eBv3JAHNCLpRkyPuW9NBgRMLCFggE/yJ6dk89Ira8k6
	 a13TuCyo306k36o9Nl6lTjMIVfK9kbaeHfjzXUY/Y+fywKR3dOdVrMxHCxOs5dckTO
	 Jo6k7HI3xDyqPEkQqOc4iTPatjzKCXSXG4bhGUscYJIA07YEFVnmZ3YOuJKVonIr0w
	 KtCGadlbEZuaMOPzULid+Tl3qTmZgmE8D7rbIZsHVe/rDpuB67oiXBw4nhQxtj/tv5
	 /wWXtUuYpnYVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35B3C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553574277.7799.10468683842898108143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e3e1ff0655e5e696262c133c382526c713bdfe6bfb6b03905f65a65ae46578
Date: Sun, 12 May 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715535742
