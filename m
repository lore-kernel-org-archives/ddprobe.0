Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C80F322B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735874754; cv=none; b=Wp3CECPK8kbMP/HAKydAIIP8gHECe8+TPbWGaKyLc/ZTWJ0JwgkAw0yRJVkDAKYrSUaGEglkyOQwoD/gFsUTCR6y/JagKkPoj8s6TfUSCOuT/w80Xmvg9fdXhgYNbsmgjfqZ8KOw5UBxlZ5somxOiNYYH5U9yxV4cAAGUAWW8Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735874754; c=relaxed/simple;
	bh=C8Cb8DxbdbIvrPjZmWyUBn9HvL7HxZstCCpfuPQSRgg=;
	h=To:Subject:From:Message-Id:Date; b=WK2gv8vcsWKMYFp/3SOKsnymIaHipG/d3K4hUIRTnLIi1Nvybjk8oo700XutFd3FAXeEijvNlqQE71yND1wOJgim+31lNYJ3aEesg45nRwjl0cs0sTokoZnBX+Vu0bZvvtj+QDzCbZYO1gKCOPu78cXSFl1SdBT012skUZtMCEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUvJRzu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUvJRzu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC9C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735874753;
	bh=C8Cb8DxbdbIvrPjZmWyUBn9HvL7HxZstCCpfuPQSRgg=;
	h=To:Subject:From:Date:From;
	b=hUvJRzu9JH3ldoxDJ/pqjw44Rw+Wnu8l1+B6ca0nXB3yRosfacHpW3xdCc1W6Yv1O
	 +ufaUNRfhuXVPyoLiFoy74RsIdrWAcZOacMeioWHLAuy3P2qbzlS9LSx7uUGC6bhNM
	 NmDhkE+nIeU5T+h+JIEa1cg4Lv74YF9nCK7nPO9swNN2vtWuCaaYzuAnI8aKz8+oFx
	 PZIjdLNV9gfEL8qphPitxOEsO2n9iMhPaXYF2AMnM85dEA+RzlLGARzUiDFPMkB5L+
	 Kg1wyzWsrhbGeBbW7HjuBew3dC8FmDeIs/gqbOVs6kZPrih9meLV0Vzb/kqGYIo5BW
	 O8NYM/JTkB6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90882E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173587475358.20521.15239970973258914913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465a8f8242a38edf7da600318208302315ef2ace74d554ed6f9bf16d8e14c2e2
Date: Fri, 03 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735874753
