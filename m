Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8C419DF81
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738865755; cv=none; b=h3nHAn8J9SiKRgfJRwG7eCtMTGMWVxJWomPBjU1nCF0QMpo5o20FP2xZTXkg8mZjsMVJQoKGuYnSyazoH+WBEloLpi2lEaqrkQUB2AOzgNupSEZ67ioYN+ubXYz1wBwXtHYGREd09NjhOcAMmvxPeMsYfBlvzIvWvPVoZw9+w7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738865755; c=relaxed/simple;
	bh=aXt3prlk5oekj8QWdu1Dyskd8JMiLHooW0UETBLKHmg=;
	h=To:Subject:From:Message-Id:Date; b=U8N+Hf7yZytusGz7oEgyM78IgABN7hKC0GlCzhn0DGY2Vo8DjockmFCVrxQ4qtYzap8ZC0vyRWY240Wy0ZniPf3cXmcYjuHstyH8Y+mWQ1jD9JBK3T3WaLu+2x3jFmXFVvv+tsRDpPjHx1rOtGHdcYSikNdXY7ZVjyJw50vsaHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc/KNn5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc/KNn5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D587EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738865753;
	bh=aXt3prlk5oekj8QWdu1Dyskd8JMiLHooW0UETBLKHmg=;
	h=To:Subject:From:Date:From;
	b=jc/KNn5gbUyNH0rA1oh/VBxg/WM/ssr9Zl347NC6uMMr73B2orFUSZGloAPN5uJFT
	 4FPhMp2czYgwRFdt4EO96weY4pPIa58M9PBdGlgtSImWVx6Av3nKP8bl4seD9Z1ROs
	 EMFnDhu3E+vfvD877jXNT/1ML8lJKzo6V5WpFaRaFZf+gxfF8uriJAjxTHXqCY/Mrh
	 4/SUY0Onto9W+el8/g7kOLXZA2frZolf5azrjSN3/3FSiL4nFjOKzS5S6b01Aj7aUN
	 swcHJ3LzP3HcjzKqPyeuSonb+a/Zecr+vXb58CsGfdsF+TgPsekbxoDNqbApgM5fpr
	 Kqnc4DqGZyI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A7BC0219B
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886575369.15140.5000476162022729050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92af6ac18a5479a551f8145de24a568b891bee2ef2c0769262154e7b6e05b5bf
Date: Thu, 06 Feb 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738865753
