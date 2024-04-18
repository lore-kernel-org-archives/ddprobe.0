Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487FF5B1EA
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713415763; cv=none; b=gT4eJLIC7mAE5bQ0XQzh1qOhyJtxgNOSHwSVaX517ssMjpPkGZnrA4/ln/4xRhZwXrWbJNQpwVs/jv44/89SXzycL58KrE37N2ePgMP1vUZurxEs2Ip7mxW1bYb9PrUytHzAQbTY1IDKDULByGpQ4Ulq6xChYqcLuSRZeR0j7nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713415763; c=relaxed/simple;
	bh=pPsSv35N726/qmRkEXsDuIhoGv3VEPNQ9tCNtdiPtHQ=;
	h=To:Subject:From:Message-Id:Date; b=dCWwB5ozHER6LyqwY7rOz9iXt4B67DBzSDrAdHPozUpGvU9Ps/NHF642yraBSGL9LbkFyAL8TNIPR9A3ImNa5cIaeiiZP0rzNiuhqQPRynR4CC99oG3kBhRlZNwNw5F/Y0/8YCqGwZxAk5Bhg7cqfJJ6J//AGINHyyRVpSPM0bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvkzvQ/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvkzvQ/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BEAC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713415762;
	bh=pPsSv35N726/qmRkEXsDuIhoGv3VEPNQ9tCNtdiPtHQ=;
	h=To:Subject:From:Date:From;
	b=nvkzvQ/HPzVYEvtXv6VccIGKEP0XzyA3ptZlaY1rcBNDD4+dCn/+Wn8JMfLJrlO+9
	 nBBzWKeEN4ujBasoALR/AT9RKJmrHGNIqEgtfIBOKhKHyYrcfn9NqF9zVNmZ3DrzVi
	 gEzsByVF77+VqMXKTjukPlotMAZvRY4Scu00acWZBaH4tZgGV4CP/fhkSlSucMni0S
	 FdjsDVxKxf/iTBwvXJE9ej5oP/4tH74KNnVmf/BXoXTa5KMf6WlL+uxS6WYAcUgJLm
	 3CUFYBJ3Qp3rPkuINprwwjIdC21kT5EsX4Ohl37i078lmBaGme20rpCPU4cuR6Gm/i
	 BI69LFmxu5YLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6C8C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171341576276.19784.4697839010242146512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7560f1de3b44afcc6042c8570abd838a59ae008a1e43e821a0745af918fd99
Date: Thu, 18 Apr 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713415762
