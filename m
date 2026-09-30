Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3C1481A99
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790784034; cv=none; b=YLY8qH7R848j5ymhC4qPGqCMkUfpYqLOZ2WjsS8gKYuVaOX9UF0e9AlOPMnvfnvOr18gwkFR4KLZJP0UTGkQlg+PkJkgGiuqerJEYuEPkxN/rlm/3IR2AoyKthisEIoGjzJpQUBt4BeZ5KuDRaBEIL+bpGFSkmb1LL8VcuBchmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790784034; c=relaxed/simple;
	bh=710GIYEJxu5puvdTSB+A9mDemfd6IPUC9IFymurRoFk=;
	h=To:Subject:From:Message-Id:Date; b=febb9t5zOTyVaVO5CuFXIm0UdIMQwZNgndIFnBJZDfbjzyIePitiox681WK/Igff3Xl2DlqGgdR3xPO/4oaMhuX4hGORGhQTV5LA1W1usSn1TuoY3WRIKRgkymLedoR7dRKE2lB5x+pX0m+58RCsCoO77/TijWR/CIoJ3Z2Ym2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZocGfBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZocGfBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD3FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790784033;
	bh=710GIYEJxu5puvdTSB+A9mDemfd6IPUC9IFymurRoFk=;
	h=To:Subject:From:Date:From;
	b=sZocGfBNNol9Zk+DPsSnhGcGWsdkWUAMac8gnnI//rytZNUSgeNaGNy/496ZzvmUZ
	 yZylMrOBfVs+OHUrCM+ThIChGccQ5oAkLF+dapRIZFq4/nJlO0Uw4nEDO0UDwlRAy/
	 shPJWLpg4MDwVoMbFYJX3d6moVp03rIoQge+SW7PIHapEFhgnFG+Dsj0gruxlKmJwS
	 zCSwuErBw7Fugq/ovYBU6mHSvnqD9KUiWr7jwzdKzgEU0lwrVRT6iU/OBHsBPnD7Z9
	 kBoSsyd/nL29kNClnTv6ULnZh25Q9X8sMx6xUpuOQEtjML4y0XtxaFIypm6YyWfc/K
	 tKpjNVFlmtdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A978BCA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078403368.29128.13919898139992874005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5183f4ba1c52ae653eaabad9a1374df6a13671a55ea27eee33d0388d6cd565
Date: Wed, 30 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790784033
