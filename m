Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5926A198A17
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788261634; cv=none; b=U8Ms86i6JCstDELHzdQ/YpiYyL2KyxUxPmAVsim7YkddHssZrPqqY+7AuCLpdqQQSCmjRkQEO5h3jSey1cGvAF+NRTpxG9n9dbENhU+oZHOHggLQ1QImmZ2HypgypqxtIFac8OtE+ieTKB2KBNEliNt6uvrmrntXr+43/hgtqW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788261634; c=relaxed/simple;
	bh=1Fr8GM+c56tN8uy4CDZfMJSV1hkfpsW31eLUmeaEPAY=;
	h=To:Subject:From:Message-Id:Date; b=Ool2oR3HT6eB3cxb8sDThPBmiswf2tmQ6BI/ud/iC2vzrnCP4CFK1abyMyIC/fdtxCZQSIE2W+UhumuKLmIY1x77SkfcSiEiejTLgk5X3o8f4K3RMlx0wOH3EtKrngrZcPJPEi9ep2PGXo+MlCKH8PxzpgsJ3IMpK/O/Vu74d6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEwBmzw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEwBmzw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF09C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788261633;
	bh=1Fr8GM+c56tN8uy4CDZfMJSV1hkfpsW31eLUmeaEPAY=;
	h=To:Subject:From:Date:From;
	b=vEwBmzw+9SMF7AioRKcEP1h7Qdwo16jbJ65IJzVGEnkFy0P/Dzv8+3kO8w0S1jzAt
	 RWr77iae65+rfnhM7cVGLB2/x3bB4hWhGdiQVDUkjVqai1s0+adtThW8SWrWC/KrR2
	 Z4ZJ2m2ovOsCE8cSZJNAZAfsuylJs8lNuaNpOomao90+mAd651B21czmwDKCHPKECg
	 vJE/yBVtBYDcSfQt0KYJwphNPmDL554wCSjEPbKxJUE6VR+9oIVBgkY7eLCqNZEf35
	 WzCbpyh6gHODI0Ho7+iU8P4OaZi49/3DQ4W/wfwejy15FEg1tA50GVJKzK7oUqoqlO
	 qGI3cPeAgc4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA824C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826163368.5827.15615770793928537718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f63ae9b0b0f0ff2d464d7c1906180a1dfca0500cfe7398baffa5cfe63d0654
Date: Tue, 01 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788261633
