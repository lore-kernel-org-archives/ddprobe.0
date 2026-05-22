Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D8034BA28
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779479554; cv=none; b=TvCu0DlEr6RxAYCwIHeI1EZBORjrx6WYLBN1YI3e1hXQdX/qVEahMKtNRVqh0wxhTIhP/eHl58pECe/nExlJdbW3T4J+JtmcmTM9h5zQSB/zFX2yIqpajRZuEw3yc47jyWMDDLd+joRbePbmfgiQm9+OxQia2c/whDCHnecD+20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779479554; c=relaxed/simple;
	bh=9Dmfv7F54PVzcoVhn2lHtNV3mlPIy7SMTTHkCR+Isvk=;
	h=To:Subject:From:Message-Id:Date; b=ROXs1CNEh/sgOYHVnYzbZ4qCzQ0t2I+WBIUcpc5ZIASI8cTCCni2nEkfXGhHLOKvWNb/vDF0iV90U9m3gL9S8fmtcVH7CUOazXQVg3ebsCNuTryQGiseXrB6PlWBgcO1NINwin7B9OrcWQQrxNDcQ5renUYIC/9DbE7cbzvfQDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2jW10LO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2jW10LO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C40C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779479553;
	bh=9Dmfv7F54PVzcoVhn2lHtNV3mlPIy7SMTTHkCR+Isvk=;
	h=To:Subject:From:Date:From;
	b=M2jW10LOmidZ4q1i+DJUdLnDxokN14xm046jM9ihbxjNwr3Uard8K+z/UwHm22ivk
	 DRBS1pWv/TepbsLBhvF6vaW+buvY9KhpZVd2LaChZzF6YPRS1Zd59BnlUfDgCVTtby
	 6aILSq1bcrKOOubRSa1BazGLhUGWMssnXKSgnunqii34W5jfoxH7W4MNuWxF/go8Oh
	 QC41gNudofSDK+WMptsZS/bok8rtH4EflimTPxs09PPvMvMmwqD+eem7oKU5TXz4n6
	 +zQdAnKM3rbKDg2W5bX9VDNYeSAa0wjpSBp5Htn5oBSadjQdvQf7/rbz+soUljhJzY
	 8XZ7s5JGFX5IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD41ECD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 19:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947955370.18374.4434771381589750242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48f777fc8258d064e6b969a5aec5a6a3d20d933e2a521793a333ccbfc63c222
Date: Fri, 22 May 2026 19:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779479553
