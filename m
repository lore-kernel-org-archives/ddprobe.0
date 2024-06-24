Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419C9139CE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719227543; cv=none; b=lvVLdNeY3GQ9FV5F0W9Zznt1JrEDnjsXcyNVFdFn1U3sS+6XMKROxMZVQUcQvG/EQ7rcjyrkhfh0LmaVPyFs7l0T/54dNmkBAKf+uTeMz3Vp1apJR3hyOYLmU7Mky5S3PmOS/Vjho1UNVY9m/W5vW+VkYSDFEmu3KwKziOcFUDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719227543; c=relaxed/simple;
	bh=SqVr3zxmB0x/lCRovYualYlYohga3BIQcm/KttITdC0=;
	h=To:Subject:From:Message-Id:Date; b=DB989K+bybP/1UHXZDiEuSoAbxR4MnqNyY0vzznLoZ/lhw4iyShSfiWhXeywc/lfGbVCMmwJcYQyzGcrcZbcvghviKxffkcNhxOUw5/dtzLOD3jmRsOsxpLhZmfRl8QojTJL68DWqEmW40rWyQGf+NaSZOvLDHn5JrfMm7/r4Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHz7/8aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHz7/8aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6908C4AF0C
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719227542;
	bh=SqVr3zxmB0x/lCRovYualYlYohga3BIQcm/KttITdC0=;
	h=To:Subject:From:Date:From;
	b=aHz7/8aO+wsQQE+ARXhUdYNAZRlgjIJEceqoIPWhgq9PrGNu768EILBhV6ZvTDK4W
	 BDPLZwR4yDgRUGb9toGy/Qdr6HL/HRFrUw/2rzykJsGO1iC3BR12w4JWsFowGfp5Sh
	 KyclXyme9VpCk9Jk8cPQ7vrQFuQgzqraTwqailaxwlyc9qLA/BbXbCAIwLakuKk/r7
	 6W3dxmoGwmllyR4QW6psTVHbg3DWaD6SowCrSZexwwIHjC7sfC3P+SJtgna2gxFr6O
	 ZW7Av1MePUFe/jjcc2lOKlnLb+gxtlUJsz+83NCPH3qcEeG3mJxsiCco74Mv+Io0ZG
	 mroz9pWTA+fNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43ECC2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922754279.1764.8514281170562999495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0e8d83556521c7421ad5a29921c61d0999d86f52fc31b5e23fdf7b15e127df
Date: Mon, 24 Jun 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719227542
