Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E24139D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749061194; cv=none; b=ZXvOySy3P9T5sJbpcG+XRs+79fKLFVMvUma5Xq9E0t1WEYZYm4dMhojsdchNr6Ykctpici83YSZWCSK8fnOg/VfyewQ8LPmYSRZiWGCvP6A0wXSwV+NdfYXIrru0UbYwZf+UoZC/Kq/MXtJD9zxRv14FcQxkU4tZJc91Hesl330=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749061194; c=relaxed/simple;
	bh=biHA6NnVxaJnKFvTRWHl59+rIGTbhbnuXpsSFyGCEAU=;
	h=To:Subject:From:Message-Id:Date; b=KXQaykywAGy0JjQ08kHA02SLgRaqH4NxtrhdcxwUh7sN7nervr0hyoAyfTcVf3xZG+oqX2goqkpwMITKS7mzSSW0Ovj0Wuhu5+ngRuEKJYCquJlOO3tc3UjdUsTLsiT0E087wCxWwKAuCuVkopaJhle1PIRWFl2o8g6W8OcLD6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpIliIzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpIliIzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAF0C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749061193;
	bh=biHA6NnVxaJnKFvTRWHl59+rIGTbhbnuXpsSFyGCEAU=;
	h=To:Subject:From:Date:From;
	b=jpIliIzRBNeHSMglptwAiwMslws1jga58eqfode+xwn+y6SBUhxtY9+aiJbNvDyA9
	 l3STjGgy4LpqrChg32xCIcsqJso0+iKpRhqXJMvkrZwr3P1PxHsmtuMi35Ley7RQq5
	 AIHmYL6Mn6FnN72DdwVXYHiN5CP+YJMrN4o3EGLipWxFNB1V0jRI88u3uQ4PL7mfY4
	 I5AnKhwd8p0C+BswHlg/L5us2WX3KI8O6uTcE/zJ29AbyTHAkJpaGUukSJvBokvlMe
	 iXqawcl3dWYYMyInh1RcjelmXYgJSYEq5zXIPmz86yF/UZxulsiV1QsYwHvQEIjIV9
	 20wlc3LcfajWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97834C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906119360.10986.13129925280535635123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f75cac228745d332320ffc6b5c9e0b6683157c673bbac38f16d5700cd8d045
Date: Wed, 04 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749061193
