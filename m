Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F51411F88
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786527034; cv=none; b=nNgllol4FYvVJD7VE8gPJfjME5wDAQIlW7KbrkBTu8mTOjgMxZlvqI/uAN37U/DEIqFiUas2TvJhfN7xpVTUvElK/4dZQXEXQVUni8BaniOZVAEskNDWLcsaXscta0km/2gU4a5EI4G5BKKXOPqncd15CpyJ5bGyTdJpZnJZq2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786527034; c=relaxed/simple;
	bh=eZY4uwDx754Vq7qVRGPJkxP7zSO8CkZc+cmIXbTX2dc=;
	h=To:Subject:From:Message-Id:Date; b=c8uCqHTY62JBnrycZXrnqN5ygK3mAgvOubdY0skNZNhHENu9v6iO3c6hmY80Zwn12IJ7hq0FGDy8jLHwDKO7WM7VTdMxIxs/bud8Q2UF1lKCduJ8bPb6fUO/L+vG/8HT1FrumldaawdL7cUZWwgSyq5mJPF1Wt4LlpPGcxMTO9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuUn4/GQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuUn4/GQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9694C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527033;
	bh=eZY4uwDx754Vq7qVRGPJkxP7zSO8CkZc+cmIXbTX2dc=;
	h=To:Subject:From:Date:From;
	b=OuUn4/GQ0s0LIfEBpmh+7FRynDnN/J7gINHSzhHFszWLOYxLVOmgb8QET7zj+Hu78
	 aNa1v0lPEXOpo7CSIgS9GqKhcl2AXQS3lWshLGY+OfVgJV4d7Dv713LaR8If17V7mV
	 pdJAhMoFoj4O83XhGg9AoioJs1CI6xRSQccMZGTcomp4pKt4UMFKWK94S5le6udXiP
	 fO8G8rUnratFsFy5zkzL7Z7nJ27NNhdiQXCEiknrVqUqzoo6qA7KYFxqaTgjDB2HUZ
	 KFPk/kbo1QPe5s3vYsq4hjKJCmyUyw2PC9n1QXPUksfv08CFjjZ5GWEgxohYDucz3d
	 S6faNYs3YyDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A945FC5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652703368.15111.16497869313227169627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51ecc1c306b4a0e5ca549030eadca8c70b59c97938e6a8768efe31455b122fc
Date: Wed, 12 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786527033
