Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266892475F7
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776117454; cv=none; b=Vbs6sPhuq+WqD3BQGjqDovzgw8DarXJgSR7XNWB/E8Ckm3u+NnG9/PTKmjFr5rp/s6NUYJTq39EB4a0SgrbOjhrpshfkBll0gTGNNbeWIGPic0KjT0c5+mbX5wuPU7A0PyfQMGP+EucuPZXnfOufyIy6aAVH4kXnjpd2rFne8CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776117454; c=relaxed/simple;
	bh=lkmpgO0OeRHrDZbCz1X1JarBzfFkDPUtO2LrCPxPyCM=;
	h=To:Subject:From:Message-Id:Date; b=p7T92R7l44BTIlXPa/HCtB0t4lblb3fLheIFnPUPi5M1dZWxglXY5hQ/VtFzvwkROYPMmkQSumDDgP1kyErWoWWe5X+UFIY/tp52xrZXqQYJgk1gzavJTtCAKWA37h3hzEC+UbQXzX7eHv0xP6vfyOPTtVt0kxfC1j2422U1gE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeGP+N4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeGP+N4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB6C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776117453;
	bh=lkmpgO0OeRHrDZbCz1X1JarBzfFkDPUtO2LrCPxPyCM=;
	h=To:Subject:From:Date:From;
	b=CeGP+N4hcfq76/xTVqXuXJS+bCwE1sfCZPnMnHAkjQ/hy+Plkmz6d/u7Rdz6GrO03
	 l+cp577cJL4refu9uE+TDRSIF9vqkbi1575pL2sED9wkxjmunwDRXuk5fNfi5pvKdg
	 eS4Dg+e+yA3CW41eIbHe67zhsH2veYIr7vEg/tBrSd8rAcsQ+m7UCTjnvb37+Ky+OI
	 fpLI2v56FitEBf9TxPasRdGeMv090n4xuWa5I32Grv1ARlv0eKrEj3iZvAJ0juxJHl
	 BffsHsFvq4vAbN7lrNB8oB8/JIbLpo3ah0JxOfVHhJDy95I4w0AV9J5fadbbKekA2F
	 8qnrW2WzG8mCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A952CF531DB
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611745368.29962.12252452939919842078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012c76cfe6175047c3c0fd8b64e9e744520162b300a7eda63d280aa2ae7f424c
Date: Mon, 13 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776117453
