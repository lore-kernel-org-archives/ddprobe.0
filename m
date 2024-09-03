Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345D717756
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725383755; cv=none; b=AHOpQIGvfmJ/RbKPdD6aoCGGxEGkkQ8kXFaPvXs5GhlLhIWNHcHXDJCbOiuFR4RS9SmTVfl27hBA4FEwAgf4JN3P5jjp+ueECIr67bV366/n450RZ8DcFbfavYyUipJU0e5YCBSwn4Q0jsTZnnYlduJpvImUm1OQPvYr3zGKwcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725383755; c=relaxed/simple;
	bh=NjAUuU+RjoDpvVKHNPs4FhvnLi3assCVwnX+11H+fTc=;
	h=To:Subject:From:Message-Id:Date; b=F9Ic8m2XrQAa/Qj0UpAiE9Z83orK0IsKuri7IdT+SUqL4s+s27STjdM1LwA9fOyVoUqxQAofXUs/bHcaEpRhLc70B71x9Z2TzVYoVwi9OSeCVUYF7r887oGiqa5X7MkVlikX05e9/weQF7o8Uh5XZl0FEEadw6aR0FKHFtCLHok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXGrYDxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXGrYDxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FC2C4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725383753;
	bh=NjAUuU+RjoDpvVKHNPs4FhvnLi3assCVwnX+11H+fTc=;
	h=To:Subject:From:Date:From;
	b=hXGrYDxgvOq/SIHzsbp2YYZ+4jehs2CoZ1Ev+6ufvSfl/ShYdJw4+UbNq5emQdckV
	 Q/XKg8jigSYSURY69UvZavoAFMV6ipVu/Jelyw+M922DkpOih2gMeg4yFNw2/aNzfH
	 Ym7IeJtQCKJMgka0EgGDzrAeOPEnAlnl1kLABhDluSsriPwDBpHaulDvbiBfp9yXFL
	 edxeujBKsf72Ylqp5WrHh4wmfsNx7PYKu1PRADCIFGhIOzC2TIWpitZSyVtBDE1lum
	 PvXxXU1gfohg//FbiXvchIZfBmSJ+JikOpqAjk7qRAT/nHGjWABkZDIy5jHuZ+yiRH
	 pkArfDlRo4IAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A02CD37A9
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172538375363.29302.15055172935306353619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d2b6840844432f756ea85630cbc61c982a27ecc13986c65d1f23335a876215
Date: Tue, 03 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725383753
