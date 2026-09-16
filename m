Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1567C361950
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789524637; cv=none; b=rTMKSiKL+RSj12nCQiNsPY5cAbtXNzS70ZHA7zfbXmQFz3ywB27vDQnQA9aeoFpSPed6AYvn5quIRjN2kr/NI8A+iullrTFFv4Q0BjIRgLYZ7hxvkd+v6Mtt8/zmE8uL4ISAdEriX/lFujVzIZtfSYoW91r1Ux8mvgp7mqpTtPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789524637; c=relaxed/simple;
	bh=Bf9HiafkZJ+v1bKAorthOtixW0eml4LqBp8zbEikrMU=;
	h=To:Subject:From:Message-Id:Date; b=tXzhVlrqMOfyfNdntErlhxbTudIfZ30At/vgSWeDrAClbKcZJVgHhoNM06xE7UrAHmHQOFtR8BjLKSmbkcxweVVPLGUSpYzN9kxt+modeZtz7xTSneRbYIxaAJqqWjaeDxAazZnNGaH4F5+NHfkpJ2YukusMrXT3FBfkn/AgpSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULfIt4os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULfIt4os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC31C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789524633;
	bh=Bf9HiafkZJ+v1bKAorthOtixW0eml4LqBp8zbEikrMU=;
	h=To:Subject:From:Date:From;
	b=ULfIt4osJP1qyzeYPUUQRTdO3lxCfxG9uWw21JBeY0PXJAtcmt4xnDxjVjNI6j+/U
	 SgPkiHLBDUgijAMKCf2EQCNbcIFnofVhASNCPa1gS8y3QmqDQ7WH00bHTeuMlg05EG
	 MEFUdKjQOldPzZCAVhRM3N6QygjeD04u4WVr/2yRWl1N5CzMsChytk3gvqSV7eDE7T
	 NncRTF/sqCWteZVjMTWNVATie6AguUH2GiOOK4zUMy0kO1xCysv+1gAFPWIz9xbRzc
	 en6I7mdU7lJNornv9AV2vr/n/lB7MbzIeG7Qr6Zai2TzuCTIRvETLfkhgPRmGArm2L
	 KeO8nBimUAMiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97CBC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952463368.6082.3213866333581731824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea86b103990de47abda5dc72e29ec7e2158f52a05029f873e7552b5d2bffb39
Date: Wed, 16 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789524633
