Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F28F34A3AB
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777679254; cv=none; b=Yb4iBdAfQihJJWseGJM+1K1pz3mCDS2wiCEdJXEo26nQ5sW8ZHgjMYizIpF+O1IG1d+5ptNTyN+QGkDhB09cLfLEa28n6Q7T4Oz5dV80DFn+E0hSl/VUPz6RkfG+fhe6081s1noWlQNxVgfs47SjKwShq2hlP+q1UheAKnTPsY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777679254; c=relaxed/simple;
	bh=6FS5GbBDYvg3y5dvVuHIv8MDINOfAgwYSEL3fhZ+hWs=;
	h=To:Subject:From:Message-Id:Date; b=EOaTiexX94odX79b/Ce+cBNzshdyPsXNhSGK7hiGPEzGhlh7/ybBro7agb0q3dm9Kk73NsBF9puMlQEsXml/mJNX4oyCAW0gHXjlZYe9J3cGW/6EXP64UB+6566aFboY1mrj05nDHHSLpWLkwMyNqVeAqfwIctRw7v7UIOgh4LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOVnRPQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOVnRPQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5A0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777679253;
	bh=6FS5GbBDYvg3y5dvVuHIv8MDINOfAgwYSEL3fhZ+hWs=;
	h=To:Subject:From:Date:From;
	b=TOVnRPQl1Ee6dM+xglCWae8RN+1Si/7ruyEQOH0Q9vG/0jraFRPbuvnwQnGEHzElp
	 tpRWdCUTAXmRij8qdBXRdCaJsEceTKcTpHAmNRJ86/Rqf1VOSM1a2pa9VL26uYPhOy
	 JUYsJjXwAjlHWToMcW41U3Qyn0tuGTtXAlrnaGNC4TE50Pu624gPWODcZwF3TKS3KV
	 2mxrFanITr3yk7+0aABqRKTAEYuWKEmny4tCv2ZxLHf1bVJ4s6Qld89s6f7XBI8206
	 uGGqZJOSM90IfeTsOW7MZW0vWtnzU0y6Q/5qiH02/G7NxL0qDlCGcI6pIZId+Ch8le
	 SYnmy69yGIlOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA702CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767925368.4786.16901425182114124627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db8b002e3834b7bd28d6f964dc8521e207125814c5e55f898f2e0d783d73013
Date: Fri, 01 May 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777679253
