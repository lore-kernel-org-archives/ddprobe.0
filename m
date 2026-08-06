Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6338A344D8C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785988834; cv=none; b=V9dNB9taDuKqBFrshdNhGqcoNBfdv07+tp5mTx4FH9u74HfSDWFYpEZaHW3yb4H0JU4wlbqD8YiOxfwQpNdtVevWo4vAQ39SKGqAPN0j6g/NZ/q3L7LjywvydKESo+zow05VL7i1WLDYuOacPOrtIyrmRquqIwfqN3yiyfg1ynQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785988834; c=relaxed/simple;
	bh=oDMKFW4nyVT+FxLeJ8MMsheLqH5dXgic4rQ/Ue84beM=;
	h=To:Subject:From:Message-Id:Date; b=uokLVZ5i3Fp79gZZDslMP76nC9aEasq+yKHPmX8e9ResNIy3PWij7lSbOK0OFjwJQSXzIt1VYvwwq35y474Q3uhR6rdlKO27kleMio62I/sQBTef3c2m5OTnAzffQCZ5aK97wXdQ2Hks1EbijzR5Jl4H4VaJsjMQ3BNOFx+kTsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4Dk2Zjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4Dk2Zjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4709C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785988833;
	bh=oDMKFW4nyVT+FxLeJ8MMsheLqH5dXgic4rQ/Ue84beM=;
	h=To:Subject:From:Date:From;
	b=c4Dk2Zjqp51DTZJEqaH9NswmMwxD9xzQZfFmImDP9typ61Yh+qhi0CAV7+FZwX81Y
	 P2kDdEzqDDRzgL4fjjLPoKUAL2vBgQkftF92v8viQ3oDkBccl32hI564cy26ec6H+d
	 J3aS4POUWj/mytpE04eUt889DhCEt1zO0P9OVWLVPrftt8Rv4W84ZP5TRH0hWNEAmG
	 IoUNv9w6smufnE50/xD2ui8G+zzwfzhshUTCjFkMnLMt8/Z3dS7iTLSkVDV1bAJ3oy
	 bX3JIRmXxcyhP7Bci+lvEo/p2mnkDM5YLCq5dmHG4SQRy91GIVwKuzeJ2fveZAY30y
	 wdbzdm0Tlk5cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF6EC55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598883371.19479.7998136383850108504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ea29febc065269fbacab640b87c25b22152a958bf95da8231a30fe930e65c5
Date: Thu, 06 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785988833
