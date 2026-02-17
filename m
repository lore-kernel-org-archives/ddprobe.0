Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2786A35965
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771299294; cv=none; b=nap129mZHgHWvghHtPSEPfPt4K3gQ07sMkVAe0OBQhC041qO+AVucO2CaIsdc8AcHBj4AI9ZjdXwFmiHoYUp4zZnk699JNbdCYY52498wjOONgGdqo2Ki6cICcWY1icQbfQTYmparHBUKb+44HF8Rjjup1pQ0H4yCWFlvcme/ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771299294; c=relaxed/simple;
	bh=HCBNXLE0Cxvsb0AugeTGjCfq8YmoHRk5Pdc+9gU84Dc=;
	h=To:Subject:From:Message-Id:Date; b=XdRw91KjC3vphsFDWcJFMj4Cnrrc9hE548FqLYfgvl89UcN94ZOJyerdToDxQNwSelhVmNSFQGSnNzcmqYhQAxiovJrnJ1f67mNrZ24OFRA5Edd6+PCyWZA9+npN+YODq20IUmGo1SJS9mdg4lTZbhVC/kxgFjDiWiBuxwoRFw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEJmnYqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEJmnYqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD28EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771299293;
	bh=HCBNXLE0Cxvsb0AugeTGjCfq8YmoHRk5Pdc+9gU84Dc=;
	h=To:Subject:From:Date:From;
	b=oEJmnYqCuI21unKzxhFjB9EFFBBY486LURGlDQWXsOYUx5bhDmS4ak2QnT1g2ZQqD
	 L9q/2aNCU28xuNDftphBuvE1RAh3/6S0rpFRcLDiKhz3waCbNCdmLVVtNxWapa7q/H
	 jllp1YcW10wZENB4I5RJnqAQQbn3gpRTg6zdbontUrMRh95fwubATtc34VQ+KrCT4X
	 BWbNSLbyrc9uK5TNAbCYi5D+HQlZ0FnGcAQQzYNMem49QPPyjs6fWObXMomInzIknb
	 NAKkg1+Oz2PKrYLdacOFtaiFItTGMJumQ5EiU1NdgE55UktaqPtD/fyR1VlUg7JIQB
	 9VM/qfVnOhlFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983ACE83831
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129929358.20535.11954297500730909605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7979e0dadc3cafcb95842448f57938b16651ef0a0099999e0403ccfda85aff
Date: Tue, 17 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771299293
