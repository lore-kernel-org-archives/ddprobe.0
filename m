Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5B538F95D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775209534; cv=none; b=e7HM3tGrdHv9qdu53ZBk9SDNKY3b2FwbE13cI0H+1nIUoGBcjBLu4PV+x1ZBcS89b2SajEhYw7XP7dVR55+cyqGVzwpZ1z8ZQ/1RWE3//ZXEhux4ZukUGbnHqfY5JucgPZpstRXcdoDbL6UEczLAkcGlojJUeF3kZl3aDoFAVvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775209534; c=relaxed/simple;
	bh=behkrtk+HWk1OKht5nWic+MOCD2MjIbyiCzV4ToLIVQ=;
	h=To:Subject:From:Message-Id:Date; b=nFBb7eSnLLdb7BK4dB1Wpx6kYS2JlosJi8Rq7xpG+dvF/RR5w1zXctpHgTUzD5BiNKpbBexQuY9hnwG445aporTGOD/2/Z7fan9+X2m55IHRD1zOdn1rVFvcNhozfiESBoXCHNePCwjCWGl1kpF4n4ol0klZbDZGSJZQKw1Ukfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bip+fth0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bip+fth0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA672C19423
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775209533;
	bh=behkrtk+HWk1OKht5nWic+MOCD2MjIbyiCzV4ToLIVQ=;
	h=To:Subject:From:Date:From;
	b=Bip+fth0uNDr6Z7KLri70455kKVGzcmBQPHCE8OGHKo5VUYowXW5tXQloWOn0gu1i
	 iH8grSr5aQm8pi2wbyDnnXlcwje2d8/8tNeWNXffFvVHv14dzydtr3bNRlZWTKfZlU
	 vHcZiGlV9E5ZyQXtUiNC/skHzBQlwRogQduUysvCgdYDVp09wnWKQAX4VnXHddaLEO
	 CUv7S85KSH4b16LV2slr2wHuAXtWUe3WvIMo5nwAHkKaQYbLfqNj4CU19i/cXMsoOd
	 VNg6ojqVR0sCe/kDNouJpay+yBO8LTYSz4cW7TS8Xx7wJpip0eQyLs8K808EN4Y34B
	 NIcWfDDg4GwIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB477E7E358
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520953369.9581.10708080533310023323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f570eb54927b668d623ff494f7498d9650f8e343abbb20110e029abdb49dfa59
Date: Fri, 03 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775209533
