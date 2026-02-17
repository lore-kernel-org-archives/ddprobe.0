Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141501B7F4
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771317894; cv=none; b=UG/68TBuFOk2oWRbSC6J6tdJ+SJHkl1koy1wNTZpnDri2TkP6GNMv8FPud13lot8gA1qzDzeOaZMOF0xbBAiAk1h2x/6nxuWtCn4pAqVuY62z444b7/FoU+sSoFUXaybZNK+O/4rCCdq+Fn12za6eDpHYbJGkBwIvNrfECABnIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771317894; c=relaxed/simple;
	bh=rEsrpUYJEb2yWLveyhZH87G9AUTBNB1J2bISQpVOGFg=;
	h=To:Subject:From:Message-Id:Date; b=o6nelX3B4GyPbpjFArIuk+OD3+9wH8mOG8NS0jPeD297pBiL/m19fU861INlwFiRxk+7dqxGE3/n5koJ3jrrGm2Edo1Iv1lngToVoMqcNEPMKk4B+KtO3HtEiBq0I8eKBBebfJso1djFICVL4EGqDY5LwhpLQSbCpo36X9P1NVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqONceiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqONceiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6908C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771317893;
	bh=rEsrpUYJEb2yWLveyhZH87G9AUTBNB1J2bISQpVOGFg=;
	h=To:Subject:From:Date:From;
	b=KqONceiXf7ytLNErL/JwnYXrNmE7UI9KOU9ZlS/XtNQXawF7TTtgoqWPxnGq7NXtX
	 Aw+CFIZFp4S/GENeH7L7H9EhMuU25EyfCZ/zT93BPZOAb6pMh/CzOImOUfF5B08U00
	 ARXtFVHTsle0PFE2z4Yp/Yk1SxNtdr01k8VsMjkRWdJzRgOp/wbnVff4ttWkkHUJ8G
	 luixZh7TiLSiFsi2aL03UMFMFItS0rN58gnrEs018Rv+Kq+UuTxDsmuAlFWheqvYMR
	 3CAig6G8A+EPa4/+y8yQcqW78/5lzfmiij9+5ATn7nC5n0GGcjSpgWP4sDy6D3KeTb
	 5MUtMGPoyBfZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEBE68143
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131789358.31570.4021812068065220117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2954555432e0496876129282c00ba9e5f4758881f683231c90e05238623a21
Date: Tue, 17 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771317893
