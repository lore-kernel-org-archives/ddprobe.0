Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2349126BF1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750385994; cv=none; b=kWhEeyX9MgrhRz5p+1FBheuuju86kmJu5JB6sJiO1+lEvhT+GwrcicFjk6ELyOObI+sGc11+mDrTv5qf7ZtDWe/h8YeNxCACWGUIRDxzryq0RnqTvJPkl0UMM3eYp+zVfHugd/NL9/mtYQX1QRGTZFhCuS3Cyxf5IK+BdjAKnyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750385994; c=relaxed/simple;
	bh=RGXB1kkzOapeYFC1Zq792LxL7hGNWmd//O4tgzHLPc0=;
	h=To:Subject:From:Message-Id:Date; b=kTDrKfPVheVUg1K76bnnn9igynpuWRlNbJks/0+ssw2Xw4yu2lYumnqBUjZ53puXBxwoY5KWk3vsAll1sEJ8Nc9BrsPhFb/G1EAuQuK5IbN/GFeC4kvhASMOGCM0+FO7lyvdOopZXwTBJZ+1xk3PvQ6hZoPBkjV2JXUKE+wS7Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOHdeYsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOHdeYsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97503C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750385993;
	bh=RGXB1kkzOapeYFC1Zq792LxL7hGNWmd//O4tgzHLPc0=;
	h=To:Subject:From:Date:From;
	b=kOHdeYsOJZPClU+FiGMwnOOPuUBROaVGlMHrHZTOx+3SFF5+fEOXW9Invhp4w26Vp
	 HwxCMVIMIE4hFBxPkBNVd0BkpLfXINzqeFKQr2kE88sH6iOW8RDyclNf8RZvlW8HNb
	 elehMWs/6gDEAqelVZBPpHzBUc4PjaM32bNVpcrC15PxPopGjAukyNONu6lSvLuRKX
	 rVxRO875vIFWzeB01mXxjn/yzUkPUJcX1AEjvJb1/xs6Drc2Tt6c6DsERdV8hRyJTX
	 pK9fxPGsac7JIc5bzvY5g9dnCRS9eQR6abGxbJBdDyNe9Aig4UAlTbf0De/zNeV0T2
	 DcP1yq3WDifqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC5C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038599357.5706.7415470912914378163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e3be0d701964f88987f7c0d39df532936f5a8cafa7f6a97125b160ebeadc45
Date: Fri, 20 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750385993
