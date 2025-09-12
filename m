Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EF62D3EDA
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757664594; cv=none; b=W7CCwKxDR8x7FpjhAWTKrJZvuneRRU0oqdmHI3/Lvlu4f21g8yG/vCG7kJnhrgFq7j0HK24Jfn8LSR61V0VuF8ukeJSsRx9ei6TFeT/onIqx0HoTneIYRIUqm0zx8QMoDrZ97athmxfmHOmsuxqnGW6sTfUwo3Sh01t1FQ94sMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757664594; c=relaxed/simple;
	bh=wNEZapn3Lot52ylfh/CpYhEjnL5F6rezjCR2IyFOQYA=;
	h=To:Subject:From:Message-Id:Date; b=MpORuAYVpNniiiayE0ZwSKSLTceYT8wWuUplORGG0h8ZMca9WTuQrJP/AB8UkAHvu+Tb54prInCd1bgAQVSqHHOKQKUbO5JCn6WjLH2w4Sw+kK8JX5PadmKBLeLZj2CJSn/sdogX22/bNRTQH5eX13FR9+Le585sbq3Ptdhkkd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lh23kjLV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lh23kjLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757664593;
	bh=wNEZapn3Lot52ylfh/CpYhEjnL5F6rezjCR2IyFOQYA=;
	h=To:Subject:From:Date:From;
	b=lh23kjLVju0ab4E1zeBHVgMVSoxqLP2qQW3WLJtI2SsXKftril2cgBjLx3yqrivXV
	 Ndtg6M4i0i6TMbzmF224KAAZqPbYCzA6SeWO/R3he9neoVGp2fNS5iSoeAwlxJsvFQ
	 RRBA1bY78tDK+c11yWOpvmN/Kycn9+K6g2WdRiTOxvGeD8BQMsPQgNSaGCBWWOMff8
	 lQz3hGGUPlp/p7WgMIR6ahGDEWMhg67XvmOceIqQCR1jTerWneS8sChdZqRsWWgJ81
	 1pyCZGVcmdkJ8DXGizIWKhh3xPRgjptzEbXspD/9bfn7gG15ZOf9R+i8KANEFZFKCx
	 jHiyYjU/Wxrjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92248CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766459357.15568.6120081098084804091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728c82ec6529a97503b961f469b969f3a74c9c75cadf9e274468af1ff7c61d68
Date: Fri, 12 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757664593
