Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C933358363
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791651634; cv=none; b=V1KW76r/rR/KyMxIwQl79FcMeWX47NM2jYCjIiP+PZbjB1eqloj4799X1zcUuYOryrlMX/manuipJxgn7iUeblL4Q8Qwt+6jRVk7WgMLgo8XUYonG4Y/9TzJaj+/InssZqjmsNDpXY9RqFa1qmKQi9wWUdfr9sU4McwnhfNrFBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791651634; c=relaxed/simple;
	bh=B5IkTArM5Z3qQiQPrI7eXNjeYXXvfnRUaBrqoQpjrEs=;
	h=To:Subject:From:Message-Id:Date; b=HmHCtQvFvotCFjTbyHp878phkegdRg36S0EYnHeDQIJ5YCWQ9qYAZuFJiz3jOPXQPsqm+aRsIEjBKt6Z4VI5W5uc0V8qAbC6lremHof4G0dfkMFzUJdfkitU4Sj4fBL9cObfj5hE3VJJZYYFYP/A2FP3yBlnIXhBicCrlwmaT08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKCbUGP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKCbUGP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD85C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791651633;
	bh=B5IkTArM5Z3qQiQPrI7eXNjeYXXvfnRUaBrqoQpjrEs=;
	h=To:Subject:From:Date:From;
	b=kKCbUGP9zpDACX0TTvScxtRc/OwyOYpBSa0KYTOV229+Tfd9k3o26cW7b/s1KHIWj
	 cF1ZNZqnSC3CEim6n9HG9tTfhMJMI09+Wd0z+vnRA13G90s9puRLxNkyecvQiP9E3B
	 SMHenoalaMDbffK07XO9WFj7zHn6lzZYQKEiFyEXEq2IqNv/JZB5LKPCw4K58asZs3
	 6im/zlwuMRbuPElb68+NpChKS7gDbXqVHjnuw5ukk6qhu+z1VcNAAJU3Koj/xFMd0f
	 fl8f4sLSW5THU/EvLw56ySDTCecgIX2dLaW7/wuWnurvlsYuKwGnW9Ck0gMFzmaQ+4
	 ejfGOGxkYW3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE3FCA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165163369.394.10326964548971149377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000d2f0ceba97c659a32eb0b628346bc420b92da985baee5daa1fb3f9301d55a
Date: Sat, 10 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791651633
