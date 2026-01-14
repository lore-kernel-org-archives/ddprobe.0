Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067B723184F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768419234; cv=none; b=Rq0nWCYyECdjryE3GZzit2nSyCRXpY1NYbuMaX84T4EVXtVH/zszxRzxQ0Q6GiEAgTMYuwDhK/B0ZFjXY9R196q8maVr0MiWN3qxzpoGGUqbjc9Y6NRQDuHC09LJztiUtgqdCBPvIQ27zC/aIMpsGHvHnLgabuo+AXVuvI6p+1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768419234; c=relaxed/simple;
	bh=2iEOsSVt5QmA/X2wAlhNIJ/hdDISyhWPMwOL3FQYcMw=;
	h=To:Subject:From:Message-Id:Date; b=Me89tRWn6ktayLVtSdyVjNF33ILlBsPX3w6Mvc+1LGjWygrZW5sgDUROC1w+rYdmpBueoOpXOdJGvmVvmsCTRoZ/DB8CLWiJI6xPj+elkkoB9KcFfX2YlOR72AisjogEF7Vvlaxb1GgGnPukJtonpQVeY2HNT00mw33D2ed8bsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehIErQqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehIErQqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A631AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768419233;
	bh=2iEOsSVt5QmA/X2wAlhNIJ/hdDISyhWPMwOL3FQYcMw=;
	h=To:Subject:From:Date:From;
	b=ehIErQqQvmdB8sKtB3fxZNcT5lxYaYXDQoVyb/7XxdG2yyX2rjo5yiDF9nfmAYy8e
	 HLfHsctwrpV6kgJ0jz5FYqCRyQPve3P2kc7HiCOk1ieIppFQevxHJEpyRkvJgR00Oo
	 VUH9O9gyKkQ+y/07hv4CJ9ABFg+J9Da29ItJceWKBdFaRqP9/JLM6eBn+sWOK8K8Ap
	 jBKbtQVyYYS57BXJEabK6EWyjmUSmeSDBrQ3N4bMRg96KM6mHVClCXwlHjU1ab9wZV
	 viA8AkJ17TvCLmbRbAOEGnzz23XHlqdZ5g3FFfRVuv++o4f5nYiQEWUuSLza5m6rpn
	 c/7mS/Ucn2rDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE1D39008
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841923360.18318.356119474523928074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6cc8c766b4e1a7f59e1402c9bd4a645664eb24c2fe7aefadd0ca9f985801df
Date: Wed, 14 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768419233
