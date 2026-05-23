Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E35F1FD4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779494554; cv=none; b=qZhC5oQuN3WaIhjdqnr+U4qlA/xwlSirml+oFvAnHKDOPy6B+AecstTJ1GcRrDby3D5AYUfX0/v6Qi8cvF272oCvoPQDpYQ66vV4EsPko8TFKzu14cJTks0EK6rK4Y1vExslW1rFdcjGoSlJytc3onBhxKOfGf1Cxh4e7ypampU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779494554; c=relaxed/simple;
	bh=I1Yowz4cSPFGZSVirREOyoGDk7BOM+yHx209du2jwfA=;
	h=To:Subject:From:Message-Id:Date; b=WFSXVU6QHIMpYPs6u8X3BGmHNi+3gmYw8oSOOL9WvinZwKs/ti5nOakZMKm6vIvOMAmc7yw4QERYO+wvgm7jy8im2wwZacbVa5O0or9y0WO9ARQmHobL0xnCS97GkKTiMgOEug8W7Dhxwb/NO+lNyaK5XEIZ3g9MlXIRoLzkLcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8pHg7cK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8pHg7cK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB863C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779494553;
	bh=I1Yowz4cSPFGZSVirREOyoGDk7BOM+yHx209du2jwfA=;
	h=To:Subject:From:Date:From;
	b=t8pHg7cKmT1izodbLIqtOeIMioaW94r5WGBcgDiFdEBacd6Ae644GhLZ5ehEnhuf0
	 SXOSNomDWKCqHg/gdKsVKhqDI81y6ANQoI7eD9R/0OXHa6nyM8ShMlFKkFIrZeA+2U
	 AiROhfWFHU4A7KWV1iRXdfTpwMcnd1Fwu7r4bPwVW2UxD+AKWX7m71htouxCgxC3RH
	 bVdckDFfTANJZR2Kd/mSzCKf93UVuTIBA6ynCWmDL9zRWC25VU1is++L1dk4fKxwUv
	 u/aqN5ioWFFgjkDXEgBE1Lc4PNWTWSUG/HS5DZABJjMD3LjuKb0MBPDom6MoNDobAI
	 eoU9vLG5e1YBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA8DCD5BB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949455371.8529.1567695873198430774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e156a0dfd7e1a68b3468236e06bd4c2f0fc69667f0964da7a58991a11684a7
Date: Sat, 23 May 2026 00:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779494553
