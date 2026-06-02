Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435D03B52E4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780444474; cv=none; b=dNObP36cQpEjawlDOKS0L2L9Yl92RQU5Mv+eNDBuiDnEAdIEEoCNgtmmV6rNzUCS3SSuB51KggXfY1l3yTbIZZwz3PBo8mz8Cn+OUY/SyYgbSsE3haIoijn8Ut0X8pG70z39gkiztZrvOz3FiTWqe8pGRtfCZRVFmW6AX84qreU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780444474; c=relaxed/simple;
	bh=35GSRfAwF4QVGyALbeZofZ58m338EzH6TvoAREKnJJA=;
	h=To:Subject:From:Message-Id:Date; b=gJRiIRnYMK87/CGVoaZsHnd+u71UXWns7dItMaKW/eq9JRBSssilsXGuy2tLQHwETpFeTOaP2S0UyLXnzYdaCrBd0cTv3g8C4FMbBgToJDEPALmM6Nl8YZQr1q/RwsNVdYDKl+xMmAHEJnPrxk45y7OBpczAjlFPWrM9J4DCcI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGuiYZpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGuiYZpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DBEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780444473;
	bh=35GSRfAwF4QVGyALbeZofZ58m338EzH6TvoAREKnJJA=;
	h=To:Subject:From:Date:From;
	b=cGuiYZpjwx+TLVF8FCTMe3o2DilnHbfULOzGv38ar8MX4zjeyRQdlVFIe9Elv8lkO
	 ISvnJUK3mfffJ4gcQwkUV7Imi7fTnU46J7rc+kvgqTb3E2uPXipfE+cv3CZY6QP/YX
	 FvWmtFDagtEozTi8qWHJ6SBE86mpArbs5X14MMpj2cT9aaDGyBEaE0Frs5gFsxtO3a
	 HEY4qq2dBVsEllhbi9XQfGvVt0MgqC1pzLPXDw6KEjV5EX56JxGqfS1DpR0u8H37a7
	 sz8pFDRa9KCPnix++8vTBK/s7w827oIC2lvLLXsXgpqpHWhH5B6duvCzq4IBt8K6ND
	 t1XZUYynDDcyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB101CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044447369.32663.10852689412311076137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2ce68b45b8d391e7ecf105ab2d136040fa2204d07d4a4a68e99d82baee0a69d
Date: Tue, 02 Jun 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780444473
