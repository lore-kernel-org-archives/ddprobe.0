Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640A61755C
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716496403; cv=none; b=Noq2bzjFFVhM/ZIz8Bg2kyDWcf6b6AX7XmVCgUMxpdQUkQuePbKKXhyFFi81/wTDofB9YIxkjtMUgcGwPgUt1eFY/ZucUnlc1ToRzJADjjPwo4xgGSQTjSpxB148+tc3T2SOxecmGBkrW01XBVRcna3oQ//6Xjfy23z2jq/cSnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716496403; c=relaxed/simple;
	bh=n0KGsNC+vwyhMZeTATI3G8pOD9RDOs3mmYIQFxA0ZsU=;
	h=To:Subject:From:Message-Id:Date; b=iah5N85UB2kZVtSuV8zVLDbRcTx/o0nQNZXXjX1XD3ao7sx2H316UdTACyIKoZKagysUoBXxqAUJegWevksAWN+Jl7yp8cWBXlDV1bseCzh44RXmojXaO91PvB+o171JJpoAssK2O5NaHBqow4ifRv6xOaDEyL3wM97lcips38Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDFVD0Z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDFVD0Z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E1DC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716496402;
	bh=n0KGsNC+vwyhMZeTATI3G8pOD9RDOs3mmYIQFxA0ZsU=;
	h=To:Subject:From:Date:From;
	b=rDFVD0Z+c2PAheY/U9lvRRzBwpczCzkzS/kXr6fRI+vqoyawZE7WiXpMEfDyVPJb6
	 rXCiUBSEbBgpL4eGtJy/tr8W87pffY0m/1OY2Eht1YnTTf3zYIUd7sTu3cADC3V54u
	 nV8zHugewBiFuFKJArgt4N02fSliJXuQ97OC5XxOQZ+CEs+b/7NTBpEPEwDSSWl5lq
	 HwgRQpxrWkkcyHXy6vLVornHhnSBra6YrkRdD2yDfYRillptGDsMrcWzhz44gme2lv
	 4KhcqzdjW/Odq1JI2nrnod0GL5ZtCXjOJbYLRWSb7rcOsp+8QRNOGmga73Mm+yGiW2
	 6W1gKxNOCn30g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E68C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 20:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649640284.29199.4035860721957029309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5f42dd49a9b9f00520cc27f3b1cb012c08b106896d3f9a1921e64acf5e16a3
Date: Thu, 23 May 2024 20:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716496402
