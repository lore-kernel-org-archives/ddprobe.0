Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0A917555
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750293594; cv=none; b=gWhkRvZX79ZDw889lxWcHKuDAwTt/UEKFNLlNa0FE2SWws3l7PZ8aMVwxSsEEvOd9h0Abjea88V41wgBlA/v7t0eqWxoEZ/v4PrwCnP8KgPY+LPAhcw5BvkCeaPp+Uy4uQGkRlXSQUx+9mK/Hzri1jMQc4bcxGNdgZ5lemLDtLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750293594; c=relaxed/simple;
	bh=hcWpdMPIcoMHu0sHCoiOVV+r46hNW3mv951pb8DOh0s=;
	h=To:Subject:From:Message-Id:Date; b=UEnGPKfMThgMqtXpLiPKhmZJpxrE0TufHVEc/LzAj1JE/9dMZ2byl2iQovHLxNnrSUBmS8GctSt1CBqn5ALIeTRiUlUhan1OlTLdLWNaeg2knARbT6gcsVj50ktxdQI0eZMeygsEAYisEqsuvzcOpcAkh2yRUHyq2Se7upPu8rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiQavCd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiQavCd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D75C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750293593;
	bh=hcWpdMPIcoMHu0sHCoiOVV+r46hNW3mv951pb8DOh0s=;
	h=To:Subject:From:Date:From;
	b=JiQavCd5fs9jOXlK9oh9JPL7xzkn1NlcTIIiq0vXGLi41LBRJYtxkornk0hRqWwws
	 74k53LK7QCrqQChxbYfKsvOFYeFnXOJUHAfpUvz2gJG9HEF8IgejkOJSIXs+5Xe7bx
	 FnAkB6Jp/tMUINUzCYrYQ0JNMU1zV5M2Xz+LrbDKiFoO9fGzBJj58ZTQyfnakE4y90
	 PZyERzcMcaU2Fk7hHBfmxJZ47V2SNKFtXJBUBADlsj8g7wtzFzPIe9ARon1OWeFeJR
	 CbuLdm3A78S+jr0XF010EViTNcuRg2I1bVUb7Ri909NspglCKLRWWIM3/bfVVCVc5U
	 LUn41NvxOeoxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91995C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029359357.18276.8469645724238342669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6219677545d1a3541546d4cf3dfa61352c3ba959e6defb62eb63f7aa8f8f36c7
Date: Thu, 19 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750293593
