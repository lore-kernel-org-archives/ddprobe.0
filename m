Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0A721C189
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743460194; cv=none; b=o2ZCEW8j/JhQKZTEYlLQidsjbUMUVv9SqPzYf0UT8fH6MQbQz7W/LV8P6KOFs0s5wLXlKiYm+Y5bhgTn89tKWtln/lPGLncbJPX/Wh91MTj/IiPaBHMlp13IogqNp8vP7I9qyW0vO9jcGAHl8Q40tMYkIAtMgdYYPTR8X2Whhug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743460194; c=relaxed/simple;
	bh=wiIS3wYgiG0h35nR25hJQkXWPvuXcUJcR659Bif3seU=;
	h=To:Subject:From:Message-Id:Date; b=T0dx2qig3stX9p5cRQS2StPGof4zlX+foJGWSuL2kZoll4BKmlcKmqrmltZt+KYijVW+ucZ6y2bRYZJgKNt4pTnh+Cr38ADnYtkkT42kE/hfZqVU5FnRJVIqiYNP+5iMoPyqP4tX4LQ6euV9M1GzcZAjYnl2345CZ1mgzl8sWa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lH78HJI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lH78HJI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B938DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743460193;
	bh=wiIS3wYgiG0h35nR25hJQkXWPvuXcUJcR659Bif3seU=;
	h=To:Subject:From:Date:From;
	b=lH78HJI5CPVKn1oC4cgijngFUM+rUOso8sNjT37x86RH+PISQvQyt3u5XUep/w1A4
	 6gDsevhqqoPF8fbstHkUBfB4jR/BEzXFjTQw1IX617SRgT6C0lwpvvUu4DrvGT+Txt
	 KVhWhJGfPhl+W33oaFwF2BmXSRrlN3WVKlwWDPLwFPWSm8Ee28pirXHCihaHqvXf+M
	 pFxSVwzB4ZPgw5XocmIjGagJoi4uH/W15db2U8pyPYt1yOoxM26GwhWlLyV4AeoMrO
	 JzvbuOceN7eAn1iPxbNtvznkeGOzBU3r4BYHsHl2QNHwpV4k97tbxAP+njFPjubfAA
	 /Yi51TPRmkktA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35E2C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174346019363.6654.11530204952624349605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1161860eee28325892c03506cf14f6f43ff568ff0c380440f18ccc463ec88aa6
Date: Mon, 31 Mar 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743460193
