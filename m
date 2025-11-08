Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF2E3D994
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762606194; cv=none; b=p2ZZVsGCtaw1keIRUKTzLR5iDdpTDpBp0awssbAlE3OHRGZnEjy5pHlqOFj4JLdGmaKXJDxLJv1FMT54y2Dg68GGHVrXgkOp3Gi7ZQrs0MnQhHk0b9SNOGwcQ/zsyCUvstlEfaKH8mYWdmIhAJQtMFTspWBjA2qfzHBX4p1797M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762606194; c=relaxed/simple;
	bh=fYwSSP5+GvQbjELDWKHmjV7fv1m3r6chzLU7pax5Jn8=;
	h=To:Subject:From:Message-Id:Date; b=klx9Vex93bYSZqNAoM49ABBfkC8I+AEeoDz0j5INvvyV2YoZpVheBP6ZqcTWMmhO4diSw90RyWZxKZ1u/Hxzg9BCUB7NtSpo2LxCaVcnDr3Z5oPb93+VTWKVeRDick+8XxCTySfVC0cEgUcy2zzErs50Dp7DUoh5roEJvcTMTBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fqoh7U3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fqoh7U3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F94C19421
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762606193;
	bh=fYwSSP5+GvQbjELDWKHmjV7fv1m3r6chzLU7pax5Jn8=;
	h=To:Subject:From:Date:From;
	b=Fqoh7U3jh+3+cFyI4HNWC3C8f5uU9Dg143kEXz2dXTM0rFyiPFCT5NIWM1+RXesYQ
	 ZrB5u16p5VifwXUlTa8KslGJaol/rDnSvpvaPPHIDvS/UFq4kgRb0H6KHoqdQtExQS
	 RbTft/3S6VnR0GemocxWHgeJlR2HquLWp5JjDemckzS6Y4P7/KjkuZmIR7guahnsIZ
	 FEmY5l8B3GTmVhIXxHyKot/BnUW+HWlF7W3iGGIT3Zqykm9sfZ9+I4rwrt4VBTS3Zz
	 YDKTLhDqkrFhKu1vbYV5hNA7U9FwR8Hgv9HzGQGcoyfNkP9118axi4sW1YXj9zl2K/
	 cWhyz+1t5HdMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABCCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260619358.23629.6184145752094611462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6399d84761b0fbe1f7ebce8c3b3a39314daad6a82dc6f89409a1446bc5b5790e
Date: Sat, 08 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762606193
