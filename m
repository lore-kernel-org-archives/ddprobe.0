Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A295464F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752887394; cv=none; b=XtR3EWO3D7wxDHYS4K9xHx90qlkRxvv1dik5yZ66sMJqkVLlTVX08D4mJpsjF75V2hLTyrdGWFf7w/u6UtSPoZn+7jTWs2jJl6qK3Sq83lRMNRS5zWRNLQtWEvf2lt7fLhDdIyg3NztTrhlyFpLLy6qLmVEAO09VNO9c9djDgMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752887394; c=relaxed/simple;
	bh=sDKmndPBVWBDGU72CL9hEOzibeQqYIHp8qMpcrqw1Z8=;
	h=To:Subject:From:Message-Id:Date; b=rdghasCf1V54p6seslUkTUrQ0QTlvooIdNFS+EoBzNFisPWKcPKK8n8K3nNyR0MEF8AZHL2OsQzpQ55dy5BRmeFdu809c/oVZBjGTIIneHXUjqKRaa6dfy61pPQ50O9LMMAGVP6WU5XodAejB24tqQdDcHceNMaYL1uw333Dqoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1MRmHjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1MRmHjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A888BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752887393;
	bh=sDKmndPBVWBDGU72CL9hEOzibeQqYIHp8qMpcrqw1Z8=;
	h=To:Subject:From:Date:From;
	b=J1MRmHjM577ZalbcpCYUslwZIN6F+jxu07GqjpZW9di8w+olzUJ8LO7KLthTq0bv6
	 cxjBAl5+nW+QDOSkaB426Uat8xh2n44MhM/FtYKPTKPW5xilxgYt4TDrxalnA1TJ0x
	 8pE0DB/fsqFuGlw9sO4Zt1c2CxPdabZS0hNIywGMVktUD2Xy45EHaLMfot1PLu3ghJ
	 B2GguzPNz5+MUTevk69+p+wQgOQmn9CxOS2AaKjDQqkD6XRFRBVo9ywz5/jJJwSRbZ
	 XkF7srBAZhXSIcg40OK5QH66xNnBjSnB3FhaKgaLab7FTj7h2Ot50/Dn9FIji5ZQ4A
	 7hVSO5aAvczdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C40C83F17
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288739358.14974.4456191592720594424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3105e73618f27d4af0eccff80ce60c0abe3417d294548c9f32721dd3cb7ff4
Date: Sat, 19 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752887393
