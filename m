Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191BC30F7FB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781072734; cv=none; b=KphBiL3tu6kfcwNvDqA1907g3NHdsTmb2aY3XqGgkLxx4hXGTJ7/kZPoOYXMnWABrCXQ7VxE5cZFEm2nkBToY6h6uQK0uI8ebECxI+6ghihWMEJUbvTZjdALIvPIgr9pQ/KfLlY/UP7OMnhZy4uovIRm9pGvrwmtSbsqyZsV2nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781072734; c=relaxed/simple;
	bh=oKQMnSfrh7tacQuKdRBbkYawBTbZ8JPAsLHEvpkuWpw=;
	h=To:Subject:From:Message-Id:Date; b=LPSyiv1Mkb7K2SIYnovUfXcwAOGeSeh/SWxhOM5HCDMjkQcJVWiwINiRpBG/2qCIr1hoN9vQ6zioHuGMMgi3vb5KLVEMAx23JpqnkkjejX13JVCQMt8DB1dUAEpHAEnvNt5IExxp9HPcNKCiSDYauB48M3hvkOR1g4ecQphlfZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+BT4Mv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+BT4Mv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BB6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781072733;
	bh=oKQMnSfrh7tacQuKdRBbkYawBTbZ8JPAsLHEvpkuWpw=;
	h=To:Subject:From:Date:From;
	b=a+BT4Mv/hb6hKP+Af67qQkj4BE3ILrPHewcFpj+QUHV6PHx8Zu6sbaORm0cT1E1P0
	 6TW2z0Axb5WGJDaEZZeLisoW7/UupfZAcJ0APEaZyl8mw2Oa+Wz+jy9tp3p4oAlfq0
	 LA2A0WxbAXLYosukQNdlNfsvSy3NagQnYlHuNTz6Y50+Dhc4GPUTaGHed//DJ/zzcE
	 XZcZQU9S0WBKrZOP8Y33ZBm4scn9LMepCFRP46VjVSOiZR1gNLyVkzVz7UnJHtks3U
	 r8KwNvMb6jwo8mmC8scYejy//05tAMKIGgdbOe7IZCtfYEWsGQSP+sCJ3suJ7g9Jke
	 OzrHOT3DOu/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE2CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107273368.25457.17468348549894639400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e22d93251679d2c39cc2187f0cafce11be37702b8c2a38b091bf83f0159f57b
Date: Wed, 10 Jun 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781072733
