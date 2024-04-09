Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D6154BEF
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712634497; cv=none; b=bAkLRIcrp7oYPGBDjY2AMXSW1/dphUqiwdTtof7hC0zqXBx0diBZamyLG1hP3LzlWFkAPV6+lpCOrZu5QtlCyxRysb4LDOHhOgF6G0GTnYsqWnQcqVEkxZCZVAQPQR7JbWdF7naUD+0OZyNYaPIxiXyVvBjGzjaC3PiTEyWZDFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712634497; c=relaxed/simple;
	bh=qTMKnsnd9Kl/IrLOJ8pg9fwBEM+ZcxC1+G9JxPzBGyI=;
	h=To:Subject:From:Message-Id:Date; b=d4hGU5FmEcfdGGIeDoG1d2v15wBX23j8J3peAizAafaBRQQ4Jx9ITTq6Rb4zzjOxO5tOng9cr+2JqPNPRy+lcSEJ1CFrd1vKgumgf6JeRJOH3Pg5ih+81CyKn28BAe6PmHJIYHpJHi3vw5ljdE5fFFEbHmFZbJBxDz9sLvSgyzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9gbDR2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9gbDR2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8229FC433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712634496;
	bh=qTMKnsnd9Kl/IrLOJ8pg9fwBEM+ZcxC1+G9JxPzBGyI=;
	h=To:Subject:From:Date:From;
	b=t9gbDR2xb37k//cnltt/F+wMT3mjIHUVMMwxeuY6dZAGqYGTKRjKI9xe6DENwuEn4
	 M3yVRZ5PrupJT7TNu1LKRPciNqB379qQSq/qFyd97NigO3AjoUpbDGDdtsMmSkzWgj
	 d2K/Fbb7yBbRJM3qaaSLHr1bqtdvuo+NIuoW7JyTrc2kxN0gu3thNs4dwseJoTXEmJ
	 xSDU2nBShKSCnXaB9fdnK8+LOng6VAYla1IrXNNbN6INzq1/IOgIczoL+wDgbVsIpN
	 rwzmzlO9DpZyrYc6+hiIOsPBZBMf6p0zXAA9DK+5Fe/flA9aO5m3Xf3d2UTTCqfCu3
	 JpZMJqRsgHVqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B270C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171263449639.13726.9504591939268481799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfdc1c5d7bf668620c8767981d1c1b39a87534ee55e45a97518f480c297f2112
Date: Tue, 09 Apr 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712634496
