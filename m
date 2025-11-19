Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90056283C8E
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763578314; cv=none; b=k3Dqf1/RhbYuhnnwBbZZhLvXwADb9BZykA2PwfxCSWFwVmb5ilKAvq7Ph9vgbMPPi12N+7YV8YsZvNKbkerwjoCND7sYduIgxfV2DazDbEwSDtlcKNrpCj8RidJmY9KZd6DLmIarYK881/c4uRPViGbLwfGIPN4xLq57txcJqEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763578314; c=relaxed/simple;
	bh=txPyZ7lxD2CIYMk1zIWO3ESSdMKnxZ+IYPK5G7mI5I4=;
	h=To:Subject:From:Message-Id:Date; b=MC5qKkFZFKNI9wfknVFVovT+a5OnB4CAwbDiZom2rTzEjg9RzAS050ZNe1MkKtFLElF2aZ+q26f0nHbS8POfbNsqo+QDgoP/2YIi9OckqNY+iigymy3av3nCtJynihetqw0wXUzh4GskCt5jbAw0aiiUKGTcn97JwnvAQiOeZ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDjOmbo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDjOmbo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E2BC113D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763578313;
	bh=txPyZ7lxD2CIYMk1zIWO3ESSdMKnxZ+IYPK5G7mI5I4=;
	h=To:Subject:From:Date:From;
	b=MDjOmbo0B45WQE5GeKqgXh3rREFQE2cM0/cOmP4s/AOP6N9pfYalpY0fdk5voWfp6
	 vzWlMREsAtUC3wpEP838hsq/QSrPffeuoq6ZlJpj3bFLEHMVLdRUHbdNheFlx1E8Y9
	 wNm8lk2yz1yL/3SS113Y4bsapUGeGIEDL/lEh0wzsBPPN9Zp8dLR59P9eFavlomjdS
	 3bbP286+wgXAAA6Vr91SkDNcx5OzCnhbQkGC3TkYf4FMawS6RPpmUe+Lqt1galOnvN
	 krhf2tnNweEWN6vKa0F1GMdnjDfJo5adq0oKWdMwkzkxqtDLsXAfBCazQFrLDr1yFK
	 4EYQEc453xung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085DCF58C6
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357831358.5067.15088967977653803008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4ced931c321a64bb810abd7e9cfcfd5ab8d2448d383a7ca43b22fb2260510e
Date: Wed, 19 Nov 2025 18:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763578313
