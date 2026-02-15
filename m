Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43B826FD93
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771178093; cv=none; b=WVEe43zT4Ul1B/xQB8QdhSE+fpC65b0HR/KMTy3rXE3kMcOyeleozWsLUS6ACWFdLGsg3X+/+kMf4mN7ncBEZe9OQxn/66bOQV/tLtyahGyZQyoXC8WdwriHcHVp3Cmk/9AB31IfGkse51+UIlFPyrqxAwTbkQId/6UbnTOyfhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771178093; c=relaxed/simple;
	bh=e7wvEunVaGTE45zMhju6KM/3Nnr6vrTIcPwE3RgW8F4=;
	h=To:Subject:From:Message-Id:Date; b=LFY0tNJ0l63LysHNCNQCUF42iwLdJL4piYLkYNccWq6fVsjHBMpk1nf1gJazaquB1/sAKs/vVulmGIxUezfXkIPWT9ixsSPCdMOGGVWqXxMipgONS81C7KRfRbOzfEQbKO9iK3jsJ4HIsHK/KDCvHEoRUo/9sb7SNwIfaiFNH/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgBvCEpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgBvCEpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771178093;
	bh=e7wvEunVaGTE45zMhju6KM/3Nnr6vrTIcPwE3RgW8F4=;
	h=To:Subject:From:Date:From;
	b=qgBvCEpXNKmOZyA2AfcvRNgVpwhn1rBuY6kXLOloYl6XMVEehZ6I1gBRmNWKgVRBq
	 ehgLrr05Jy93vl9qRBYog3r0vA8J6Sm+SdLMgLIUIorKA5Mh5a75pNAfGkd5YB6P2Y
	 74mgvaRmb/y2JSXB7MJ6AcSQoV04GBIzKqoiWM7A8bqvLH/DpzUOVjVMaZgcQUVe3R
	 IrMUnRlAvdu9deNZoJZYEtE7vCRYqREgThPtrsiUg+FcPOT+flT9lUpjs8Qw+3X8oM
	 Cph18ZsVpF+fFX9mQmIDudtIttP7RBQ9yjDD79ucAfm8EBUHr6eMDPENhxAbXDlpdX
	 WdIcnJxyQDfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980CAE63F06
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117809361.28320.9625440261543106210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6768ab05aa584a0b047df41a0b36275cb0c6b856cdd9929694a3ba4bba8d78
Date: Sun, 15 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771178093
