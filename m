Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C1F3630B0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785106834; cv=none; b=byxifAMq9yOF986A6Ywrc+8prFXyATD2fZieOq2I05Vm75HdGkV3V433IyAdzcDvHh1IVn7BAVCUJLh8v4RnOJfOCTxp2+K5lbnQLb8vEG6dj8nn/XQcBeUQit1/K1SuGI936SY3Z6ETGycUFQLfbWOFkeiT6nqVXXIq5lYGbmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785106834; c=relaxed/simple;
	bh=PR8H3BnI4Dq6fuXQZwOv4h03/++EihZ9u6Dl/8rRMOw=;
	h=To:Subject:From:Message-Id:Date; b=ocy+F0NlhfyZvYF0adWyjEbG6QHWFLyjy2/bnCDxioRBZ/oVeAYrJri1EAh2Gcwzj8eg7rwp7YonO+zAE6yeW8hZQtGGsYkGYFhPzeTIAkd8FNpFr27ll2NcxuZr8qLpFOjVdsem0ozPxeqg7tTPRbXoyMdM03ulzgeZh1M9ChU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amD+z+MC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amD+z+MC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7FCC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785106833;
	bh=PR8H3BnI4Dq6fuXQZwOv4h03/++EihZ9u6Dl/8rRMOw=;
	h=To:Subject:From:Date:From;
	b=amD+z+MCatF+Rtso43ireF3FD3ZdwIxpuo6nSVwMTbipUpwIRpRdWJ4NUSPIkS5kW
	 14pGOThjhf4nU24oFaJNuKbBB+N/GniZxAI6JwEpKW1QLQD1df0hOpPVWuutP39etI
	 5yHMjygVFEP0D0BNpSOxF03xf4AAAGN5y3SBbGoqWF/PXY4S/mMLYd/P6tPAi65bP+
	 +x5+KSrvwPMM+lqkFFPkg1WdPg8qc069Lvl3a2rCTbbizBgTAK3FMsorw0KuYUhIyM
	 6bRHcX/DQoJ50vLlbtLNhpP+AT5wKRIMap7mwPLIIa19faholSTpaksjl/azXzlwuv
	 KKpIZ+8I5FTuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE044C53209
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510683368.19073.8412341361175806963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d583dbc67016ddcc222edb757952a5c9dee228b42945bb76649fdcb1be96b0a
Date: Sun, 26 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785106833
