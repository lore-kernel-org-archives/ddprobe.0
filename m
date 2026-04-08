Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244DE219301
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775661334; cv=none; b=E+7SJBqzPTuIKd/2eMKbbf8wSzIOvHZpyw0q0UuVcbEixGKlG83WpEoDUl1/2MGCYNYMpQxRMzdMJFgPPQEHxL75jIZA1/ZXs0Y8yNqraEA0+q11aE4/ViG18NS7TjI/oSXqON7Hm0JhuiP6vFIfprKWBKysWhyk2rY6J2VUMPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775661334; c=relaxed/simple;
	bh=2mXCjnB9yvMPJqqpeOqiVYC8MC/C00MBaCveARyw2+Y=;
	h=To:Subject:From:Message-Id:Date; b=CJkrrQCxxv5uhvvR9EuDvKvmSC9jFkxaTIr+IsU2CPa5JQkxzV4W32NaXdjzdezF2u42x2dYbOaoSazEVDelMZ1q7BIGSz8lbLbNyrsKClr3aZH+G9OxVfNVJHJ528moMuhoaLESjPSHfOdU6ORP3bL5WQbohSLTIvJeXrBl2bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suf8i4w7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suf8i4w7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE80C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775661333;
	bh=2mXCjnB9yvMPJqqpeOqiVYC8MC/C00MBaCveARyw2+Y=;
	h=To:Subject:From:Date:From;
	b=suf8i4w77EUCRcyqds6uN5qjT3e44KlpmK3K0xJlr2hZ9I3UXHcNAsK6stiGkvD+u
	 /bPeTaWDqBbUnfbxJpYPGmGaeeTW+0cywwJlMwZhnWpReg2CuSRcfszyXShNiVnbVM
	 I8sDa7AT3UngHAYQloWL2MkR0N+Yzka8JO8HhMK5LaOmH3Eo7HH70xkXX1I4IFjZYe
	 ESZk+TsDt1bo8+A10ENGa5+SbDh7MBz9NdzXww8wMZ/4zhRGgCE4HrAOSjRUoiv5wv
	 kG2wjw/OM1c15oFAZBhwD67hO6Q6VkZ6roT/gJcTGbaTDk0lYqTP8C7KfBE55cAy7r
	 VwBM3+LJ/WmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92B10F994F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566133368.26162.16449669369595824170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6ed01376a92ace45eb5db71e112e3369d9537d090d7e29f751ccd4960c69f6
Date: Wed, 08 Apr 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775661333
