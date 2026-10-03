Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCDF395DAA
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791015634; cv=none; b=O8qxHhXVvsBXBezAMpJ1b4B9uQAm3Ik0So7IHnYd19iPzh2ZVVic5IDsg5OKVU1OfWeBWyBiguj7KRwTB8FWZPjDbZTzp/kMoldlLGe7tn6kuZuUKrSkZXQLauUTQbEG0YJbMUyhPM+DrF/uoEkAiNVq3FMu76oGSAEMdj0Ufnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791015634; c=relaxed/simple;
	bh=eGh59RY2oY8QZDgIYjc9ApzMCiFcI/wIiparekkllbk=;
	h=To:Subject:From:Message-Id:Date; b=JMlkucU78x0akc2Y7hc/8lkq+YHdILlQhqfNuAwvikC/MZnFzUMW5RZWOP/K/4AeJjHd1T4uiawm3Itx8Ftj11QgNeWhSFObPquguYHI6Fj3V6vQBbaYsi0R3K/YWvuf3vQ1F5NJHJIaZkR+eZQorRUYgj8793I2mm+qbdkK1Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peaVX7G8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peaVX7G8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE9DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791015633;
	bh=eGh59RY2oY8QZDgIYjc9ApzMCiFcI/wIiparekkllbk=;
	h=To:Subject:From:Date:From;
	b=peaVX7G8dUqJ1IoqMtZ7srDtv1igkGgLBn4jXDLSJ+K8iCcgfX434a2shtn/rmwsZ
	 ozt+5oAAIaiqfCLCpvaZf3LqjEP9HXi2+QA+cSVNPn9Lddr6OHvx0WpzcSsI01PC/j
	 fp3hV47WTN+40ZKWYfbuCidFoSJcI4VPHIgd1tq99i+ZiL9vfC9hILIvrNIKtryiDn
	 JcdJXp6ktb1ukZCIJdsJ/beGXkauqr3OTNa9QnSqCJBba17MzjVJeIhuUHnALiZdxu
	 MEFxiw2vPk7mJffQtBwbcg6iRZfAXaMF12DQHqUgnkvZvpQ+4sws6xc0loZKA+KmLu
	 aPXaVqBXT0rUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B7ACA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101563368.21125.13403306635001939751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d5936f111b7c69b07a65059a1d99ff311b979d31420140c7dd0b696add5d6f
Date: Sat, 03 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791015633
