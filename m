Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A8AB32ED21
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783054714; cv=none; b=V4fYEAi3rS1NgVjpOBO1jY57DXgUX2KAzoZqqCgufZkHhql8FzkN13AHzTGuBIuttppEBvDOypEIoet5RCh9BxqGZt78nMOK2PCBRy+mK5hiH7qIhHCUD0JJUZ6KjwwZE6COUe67XsHdVz4h0s4NZI3T0TGs2INQehSAJ7iye4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783054714; c=relaxed/simple;
	bh=QL/MHgkMRqx8Vz2IIVuzAR32/6BdJ6wgqUQxhLbLPUs=;
	h=To:Subject:From:Message-Id:Date; b=ISe+5gyVm1AU4sEaKuArcKROO2IIRxjG8cEs0AGUlLguT0M7KLC3HyxSp1oRCDO9Z0HeWcKl2K8xx1xT+mgv15yOd7/FtaWEKcmfbN2qMXIPhagfu+8+uscw/cQ9AAuQWVcDOV67gq5w54CfBfhajQ4+35dmCqvtgL8y15ynDeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQ+iyDn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQ+iyDn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6FFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783054713;
	bh=QL/MHgkMRqx8Vz2IIVuzAR32/6BdJ6wgqUQxhLbLPUs=;
	h=To:Subject:From:Date:From;
	b=GQ+iyDn9bAtyy8vp8SqX3ktN//IVOUeHfdIvW8JDRk5jN3cOeXLsB1a9bTCWQL7cD
	 urZyDQl43vKYCKykD8yMDG17O5yxb5b+Sa70FADXstpClARED04JjX8z1HdZ58A2N2
	 BldiNGIPrc4E0qoLgSozOn17OW9tMvztwS0zbPHIQRB1DyP+EA83QjVjNbdw4Xhzgw
	 D06f1BWq3TbfGSx6Zb46/8JKlzBF4yopKzjl88fdM4JRVfvp139DH0n0jv015LOzFm
	 esnnNePzNmDbSButij+iIvlHx/Ejquupb+lfctQns/dUo8hxQDpvNPT9zRveV2uAau
	 FU05GmAmVDmcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9601C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305471368.2849.15258340276960073628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a88867156c3aff4d9c37d0c8ee8c52bbd4c17b8d951412ed8457dd4d6269468
Date: Fri, 03 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783054713
