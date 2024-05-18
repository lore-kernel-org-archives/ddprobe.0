Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8596BB26
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716067943; cv=none; b=YwFJ1QM+cNuOjj/bEpvt2qirecRl0qnRTruocEfboSkBaXnftt64vLS8KR2QuHDdKRmd8DMxS9oxYswAxPwpwzIjkFbCOwyfkqMphNQScnn9Te3ja61GOHx1sHyUwxihjIl6uYp5wZsbrvlkPze7sYwmd9LdYL7LRaAC7LMZvJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716067943; c=relaxed/simple;
	bh=dNUhZrBilT9KLob/IQJhpURM3vr4pSWTEFlitffGS40=;
	h=To:Subject:From:Message-Id:Date; b=NXxrcZ3iUEp1MoNxCnPakLj18pWbWhlMGsAQ6Tyqr81uMXDJn+iAtF1OAHCzaPVU9n6Q/tNVaD0bSwIOeoPid76B4kog1JuLXP+3CuMaXM/6hnjOOCN/9oX7X9/vPj6hxVple/CzNe11cLgW/ujiBvHD/YEsI5BsAc6U5kKrFz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4EvqCeg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4EvqCeg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37C8C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716067942;
	bh=dNUhZrBilT9KLob/IQJhpURM3vr4pSWTEFlitffGS40=;
	h=To:Subject:From:Date:From;
	b=o4EvqCeg9muE62NrW2ewYw6w2GuK15iTvLJ3gTTLmS9GBkzndBO5bvG8xChBSH+3K
	 haKaY1MP+Hr0cCcBm9+/GICtsjOFEpexcnkTuQmH0MDYf+7OWYwUjY/EISbjWcAtTA
	 3EQp15oXn80AZEFpfVVB6DfLNfE/Bq8Cwo3+zs+8mVBP2oYmcRe/CCRHQ2LiBVA7n+
	 ViM+5rzZuc/B3/9SCwwgLZCMhjuzCamPWuhrV0+AbsISWvK0/OJyIMQWewkOV+AR5d
	 NDveqdvRcYdavqdi6P44/tbojzzRn3dgE8gk8opudn0AasE+Zq8UugNJygiJarB2YM
	 jsWtC2TFjDGJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8C1C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606794276.13418.1787623249647655462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb7d481a64709bd616ce4742f08520bad15a3745db521aeb00da00fe7c501c2
Date: Sat, 18 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716067942
