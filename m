Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A6B1C84DE
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773636894; cv=none; b=FKvrMbMqavy1QmOSLsi9mUH68zqT3f7ekMfq0t8o63+GT2QtKGc3BILjem43rd5J+oiobiUKtotzBLiGFl8JsHjFBGoskOXv1x/zzaAcuW4VPyTCZ69w8qkZOCaDCY4EDe49Ly2Z0q5pORTQch6dyH8MkE0Rbnl5R7nwdsymAqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773636894; c=relaxed/simple;
	bh=GCztrW5heOpcurweMtZ6BvMruK8y56gWbEHeEawKzs4=;
	h=To:Subject:From:Message-Id:Date; b=ETIpNqe2P3OgZ2t/btmN37ceZjgOUHb9Ss45KMlOSwASxwJHw9KIkmKZi6KThLhNIquLzryHBFQIDXRRP4PZMYHpfmoEx/bZZDTBkyQth1OF20sU3Q2wBzGiwIi7FqGfd6LJXeZuff/6Bf9cKCSrLcVNOG99znSiBDixQoqzhjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9u1jqGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9u1jqGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB4BC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773636893;
	bh=GCztrW5heOpcurweMtZ6BvMruK8y56gWbEHeEawKzs4=;
	h=To:Subject:From:Date:From;
	b=F9u1jqGEVi20RpWE+N58TN+lH9XSU3GN01+8sLiUHFJc18rpBV+mWCE7uXoLS2wto
	 PHO+K/DxndIT9uUwTcHdBoVYnz73QTx5AYnWhtnFv2VyvFC7a5LNQUdPeF4tjyqGrt
	 Imm8V29Y0E1lXOyXQL4wis6IxERrNyrAWR+InxH9NPc03CkSd+HJoyvyjwGDf0SWaD
	 d/Ep6Y2iHSKfp5HXPE9Byz3J41NPCwagaixYinVjpk9SDKSvLWhinCNLUkXto580yJ
	 eS6kio6VjpThIqANQC+63DLxot6FYepRerc+qAXcttqH4OYC4BzBCC6NowiNt1YKbJ
	 ku7yJyaatnHEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F077D58B36
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363689357.12243.10698364286935871567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27474376972c298fac90da0a9453d61f77060c9327fd95f663e9cdb18072f659
Date: Mon, 16 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773636893
