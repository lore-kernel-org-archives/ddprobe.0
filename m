Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5EF158874
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758697796; cv=none; b=NXVnRbhBruo7pm/3Nzbv5SutCQXO8CdRjSWJ/vKp/LIQlDRnEBvD7nVqx+sUePqq933OpywKHfmTAFmI3o+6e+er6G3EV306aKH6/jnvaZv9sM2nlrNdtIb2llzt8Xt89pFLPRMlMHhZ8ED421UWKufdMk9PYwXiRsHRgDob9sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758697796; c=relaxed/simple;
	bh=ujpBkXD6Jhotne24chJCbEA7gHMD56lA4o+wMrr5n4w=;
	h=To:Subject:From:Message-Id:Date; b=olrHlhW45B41Wg1HW/z3pynapoF8XwAHQryTtlg7F7/Qfy93GZdRcT1BOqMY8REjda21E+Xm+PVVenVq5p6klY8y+OWCLh/VED2vndzDxS/XTRu1pLCmIRZnw6gza6rN+CZ6uEhoYE/kYnPHxzUuXFx3vJNiv1QCjRj4azfw8Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ytt/pQuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ytt/pQuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47BDC113CF
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758697793;
	bh=ujpBkXD6Jhotne24chJCbEA7gHMD56lA4o+wMrr5n4w=;
	h=To:Subject:From:Date:From;
	b=Ytt/pQuqWgv2GwlUAazn5F5Zx38eAbPNL+kRy1NCr5mGp2GJDzJ912lUBq32mbqio
	 wo/Ok8rehQ3BAroFYM6lvmHhRycaGjUszb7vQepO9vcsisL/OivIoTAaorlnvqQJPA
	 z+267qW+rHB2ZG5f4T1D+0LlvMrJuZKrxMeo5mxYIeehih/ozJ/nPJ54Y4wx+qD14g
	 zibfJQ1plA0uXcuNHNzBtSaU+fbTqO/pSn1tvoOyTC5hS+cQe+efukg1PoCIw6476Y
	 n8Xo8uxlPlVSAlL00rd6dTSZdeYVTvK/OGjS07asFi8EyqZwcW7BSwfg1Afu+HANu+
	 nQdHRKgK5ZCiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE2CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869779358.13079.5934909875310214479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0534c5900548df8c45f99b857cf3ff1b1af9ac77fe811a5811d316db9ff8220c
Date: Wed, 24 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758697793
