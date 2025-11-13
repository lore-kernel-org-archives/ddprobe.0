Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4241FFC6D
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763065194; cv=none; b=SE6gbmgsAbI3DapnXftXvkHT6/FpOLrTKng5TUdLkj0og1xpu7/gV3Ok0MvmOBpbFcjrqMffa8NTRw27tkMmyCE7CMynTDMb7Fa4Amo6PxS0gyCIdPM7SP+SVHeOhI6W3XyxtyxfLt2U8n6CJWDStYGLYiOIau++SgS26K8RKx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763065194; c=relaxed/simple;
	bh=va7ml4uSo3lWkhG2ncfZC1jVTSQ99HHXEFa1OtiSmJ8=;
	h=To:Subject:From:Message-Id:Date; b=RXcVLVlzbRyX8HH0oCETscJd7zRyXWL6YCV9H+BbZva9NYHid/pLBlPEJW69kw9daHz9SddZy8her4e0jBtHTqxSHB0c2z3tCjTcEiNeJyDx55fpkOmco7d/1CyerqzpDbMNthDCDlJF6BI428Y9EIoo6p+fepzVNH1mPvM0n3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRAfE57/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRAfE57/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2463C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763065193;
	bh=va7ml4uSo3lWkhG2ncfZC1jVTSQ99HHXEFa1OtiSmJ8=;
	h=To:Subject:From:Date:From;
	b=bRAfE57/d8kcOmfSzperMEHvZWHtit6VhidLfnQWhyLaqq9Z7RW3AUhwnXzdxSlzI
	 bAVenPxB9QjA1dAgK1XKkNeigLLJigCSStLZ61sj+4qKPCwnxnz2kdZuuny1JVgGzJ
	 WsJ+PzVy3oJ8iDqDeiDgDdZX+Al/hz1j/Ayay+v5B0X2ljHV8I1MgHWEl0RcYLo4+a
	 fpu1XmmpFE+O2Hn4P2XWzQsjWUj27fFGjXOdivUVSgYE6ni4LdKqkW1+xPM+v0Fx0M
	 t4EgANa7Cr/7vqg/tzouHgSzid//BOP396oPIgLRcHwtaK4RDPEI36kWJRkTAkWs0K
	 nh4Lu/S4lxbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954CECD98D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306519358.6835.1363421136266083207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea79ffb64ffff43fbbad7a484daa03bb7ff6ab32a0c4758d708f3d5579befc72
Date: Thu, 13 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763065193
