Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4C52D0C94
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791324034; cv=none; b=QTS6s4MFMeLrYmq2jeL0rcjEUs/Sb1UyVw1BRclW6Blin40bFGMOq/6Yith4V04BNJBWAnhXiV1c8+W0Lb22+62ayqgjX2vMFF5f70zEF/bMlEI+jH0GYipty8YhjSA7cZiEFbxYf0TOtEQu8RLigqiIp5a20shFPXRdXq6S6Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791324034; c=relaxed/simple;
	bh=rZdkT2KgeY20RAvO53BYHm7IV2TGLbYkdQmj5bThJfo=;
	h=To:Subject:From:Message-Id:Date; b=BHkC1Ld6HYKw0gQE8LhSVqm51B1qMgRXYjqQiLArZxIUwUfieecAMJ4HR9H0J0RjvWansy+1TH8wnnIQJYE0PMK90MtCMTt7mHsqtvYfPaWvA4d2KYsjIKC9Zple8YHbSaTSk+BWpk4LH/tiCrcPYzoFvG8o81Heb8oDlYlMi4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtuEXQDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtuEXQDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF1FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791324033;
	bh=rZdkT2KgeY20RAvO53BYHm7IV2TGLbYkdQmj5bThJfo=;
	h=To:Subject:From:Date:From;
	b=DtuEXQDUUBWCop/pxkgrvco7uSnUgWT1mBCFCaucQQU5xnXW2OUnC9llsoog5uUn+
	 nWYDIfqdxrggYYGyhL/tljNVaReSf8BAe0o10YvkpQejl9SAo672KG9uLkJ07xbisJ
	 3FxWln1U0lrIyPpLPgLApYAfm9ii2KlSIPAS5SqiPzj5FHhn34gYv4J4raSyACYUZo
	 Si29PiclyY8zAj0PLT0Kq1xIPFpUUCv/3sgTAFyCV3PG/2WHQhicui1MFO4RHrpXA+
	 tfLwwheE/JVZLVKOea7/NN1LMBlDY5xrxlf06C6HXfE2l3DeZXTSBGAnGfwL+pao5r
	 Um/ABkMBu+4Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61F4CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132403370.24518.655452355032469226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baca358dd06093359e63b28e36addcd3cedeb5ce568b14954c0f6273a25700fc
Date: Tue, 06 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791324033
