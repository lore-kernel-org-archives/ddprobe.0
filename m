Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6A44CB8C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789062634; cv=none; b=fxgHcV8Chc0tWAkGvI49HMRvpJbbzWYWnxBV9S7JJea9OOlXfx1zgDjG40WP+u5wuxpaqrr9vNHEANe1X85SQvdm6gEQ0fjSZzNScrUkvGsRhzeDw5eaUuEtbLzwIYiDdr9Sd0V/4BwJhkAlKTPOsjQSYWshIxt+T/Dy4NBlMog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789062634; c=relaxed/simple;
	bh=dD7yPpdH6/S+TuGveJEvjG+qGxoxar3+Jt5tGEif2Z8=;
	h=To:Subject:From:Message-Id:Date; b=D8KLCW+cLGPFwRRWSvh5reC8t6KZaYWMyHcMnbZBVTJxHerG8oI0bd7QAot0LIjlL0G7zhAlgCrLHQYLco74rXqFbJGMr3BXPWhV0To3TOet84IaU3U+Gx7LSe1m/cGZop2YLKPyXOTJ2TgKhbCD/QyW/XUiZPMMyLIDq7E3XVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1rrKhQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1rrKhQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3A0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789062633;
	bh=dD7yPpdH6/S+TuGveJEvjG+qGxoxar3+Jt5tGEif2Z8=;
	h=To:Subject:From:Date:From;
	b=p1rrKhQqyj5KJvPcUgg/Pha0fS0aKIugaOGZa2InjqFTDHsVbGS+6GUo++z2fB405
	 wGsu3AJOVBdRFvhJ0J5WllWC0TAvKOEyPLfnBRg4zVZudMlOUeFUWKEFUv7OUPtAVJ
	 t8sLKIgZQR8zgyBLMurk3w0zHm5afjjGskmdLF3Zsz1RLc0jYfc8MIVkiau29m0VQK
	 C2zdZsQs5fMWYFymTY6RiwDobFTr5pf4ir3P4TEaV0DixOUbE5ZKIqesoQWFAJPmr4
	 JBXmGAGN1VpNy6grLbNfEJAjw4AIlxO+RdutcY0+wqYxja0vhw1TbpplGQq7/o0/9/
	 U7VuJQ+Zxom3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB425C79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906263369.18920.5965096852539342703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bc65fd8352b39cdcba0031331721383bd00aa4400588871b2b19a9f17971d7
Date: Thu, 10 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789062633
