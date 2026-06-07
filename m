Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEBE1D555
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780796074; cv=none; b=Y65mV5SvX5hIbSVMTcIBc99isVwFIfUxFayfdWvCGKmNIqoPob/vi8jjAdSB5mRzlmJlOw4IcOMZwpIK1FWp5Oh0vwx9O17TAufetwPHisiTt9EYshX664BfDH3rLJgplaV5Q2eEHOjO0G8fhchJYTcsYM4wDDDaM0wc4JrocRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780796074; c=relaxed/simple;
	bh=7bkCRq7G3s25e97CsMNEMlRXmaUL+5x2Zi3P/ARmq28=;
	h=To:Subject:From:Message-Id:Date; b=boRqSe4vHmwrVHXt3E9IHXKiYvhcguLxfHjz0gwtTCo9RLP/0DOJV/swGKYu4YnDLVNHUEu2fqa8BDoB+WFH+YfWmD05jpPMv+VdnO1MWseNmDDnfV3+NlYe5D4VbXk+Kcs9Lz8B0m4Ya4SgBCsCG6wBQNTKSxLtKBrj+eMr5Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XogAC+Np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XogAC+Np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DC4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780796073;
	bh=7bkCRq7G3s25e97CsMNEMlRXmaUL+5x2Zi3P/ARmq28=;
	h=To:Subject:From:Date:From;
	b=XogAC+Npc97FrngFa751X0q7OxnRYRlqoE9JaDc0EKpzIT5YztQZbvc6qVGmPMbHq
	 QumPCW2/0XZ9WRRQImBEIDL/KABPyM9mXZXWiu3XsFt7a0Iw1VcNpd6pv4p56JUHr3
	 kPl05/rJlJUuNZUHnrEYAj6TkmODI3LiSSAosxh7AEdxSD/KSYg/bFI7G8/F//mj2e
	 F0h2uD7dKq07G2tvAHYBy8YVkwkejx670jJm2cgv3nMAW3sEqdutRS41DwjRYNb7bj
	 lCGm7G9sgEDEDfBwbBtDWiGeXdZoxk0eeQG6CaXhy32iaGcdDaRwe7QchHcJfctYto
	 kS84xTahtuj+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA132CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079607368.24584.16379755288046206047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99dc109ec61f817c62a23cfd05c75d99e5f350c54309023f6b51f13a1b2c6bae
Date: Sun, 07 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780796073
