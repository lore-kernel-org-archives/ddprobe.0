Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DE72571C0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780846474; cv=none; b=JBgjfNqq+hYZE6ayDtFh6Tq7+fpy+U65tFizYxIti+0TGts0YXDvqvMmm2M01atejm9gcQNAO3ChEkwC4kraBUZWu7F3bwN22Ekd2fGTxCvFuCNVmadvo3WCAU2Jk5Mpol8amtexQSTNjcO1zpb7v+pL+4FZiuWVRJglhSWHd48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780846474; c=relaxed/simple;
	bh=jZ1S449J+9EOBPFQ2aScpNALk6q+GD0JQ6a2ybOD3jM=;
	h=To:Subject:From:Message-Id:Date; b=B32ljGB8FSAiQep+uTREvyu1sggE6hwsD4EoLnTLULNjaSGaibZ462GoBoE8tVrVM7jjTG0Iy2w3QjTxl46Ra2kpRljkF5pfw2zQHW4aeqLXdb/E+DPCzZp17+aspYuVjVIQVdlKneNpZ6+o0Ieoy/ZzknRIGwB+naCKASVQryg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGQ9E9WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGQ9E9WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B1DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780846473;
	bh=jZ1S449J+9EOBPFQ2aScpNALk6q+GD0JQ6a2ybOD3jM=;
	h=To:Subject:From:Date:From;
	b=fGQ9E9WSWDiGgUqWtb+u5jsknzfu5uSn8Icr4DIRWT2B7VFYDxw17GJkq16GQbdY2
	 wFPQKVwYCKEAahskxvIBfwKpmibnE61cO2HAFi5QiMPvRgTtSaN521S1HzrDcPfcDw
	 +qvRCkmoV/cAb9XxrL4N4+6w632cQmtIs1zARbwnEgfbsKNbLtizRKoB76+Qd/gwBE
	 fBcMdV10hGmvemygBBHpotEesslZvMe6gsiBKo4KpRsoGEQoJzhl/mFvBK7e7xTviS
	 4EtHmtnsBgXHknfRwds6NE2QIMmX2fZW8RynuPj72Fa/WoxEOXyEFP97SpxshhB8BS
	 xp5YFKtskC54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9974CD8C8E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084647368.15587.1692588159008702529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e5ada8b2629f2d66abc24f6bcf2ab400cb7aea2e42e1062b8c1f0c3dce8409
Date: Sun, 07 Jun 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780846473
