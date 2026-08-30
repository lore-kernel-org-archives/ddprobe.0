Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC3A233722
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788131434; cv=none; b=h9HgIUhoSd60Hcsk7Lvjns6hpS7/Y9uByb6YNL4UB4IVOi+BZcvWchhP2ldjVieu0Q6eUTIyttqAggZu1UcvKKAKIODPCACUPPjd/Ua0ty559k6NaHlQG9qcdzaBD14qowSqkoP3+8ChYoQwoZdkmVH0aFo/2C9UqOBcnZyGEEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788131434; c=relaxed/simple;
	bh=w/RlGFYuJ8PygzX2dmr+DdEQPm2ovCprRWCQFZOtTgg=;
	h=To:Subject:From:Message-Id:Date; b=jz+9fyRTExWRx+y0aakKo31YGKCSbwGivcrxnkpn35RSg3q7Vn2KfCxugrhgvg8In8xAX8KMdsg6nocm16zdU7uWHF9qxBM+MGatCa1swtoowvkS2SLXCT9PHk616i+3oKA4LCgKBWF44Y8XvCMqcBR+uRcU7NVoNtbKu8a9WZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAikP+9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAikP+9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ABAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788131433;
	bh=w/RlGFYuJ8PygzX2dmr+DdEQPm2ovCprRWCQFZOtTgg=;
	h=To:Subject:From:Date:From;
	b=PAikP+9jfZCSLlM4sKvkBTVlK40Moabv8ecrRP9hvOY2b7dVG7pGeOTs5OKtzsYpR
	 y10mS8AG8g/we8MNolloI5OHiZYoTVkX6u9Ft0fpNwEs5jbvjaAPjrak3R4fHxu3fA
	 uxx+26rzv5KP9CUFtKAkagPPYn4ZlsW/8aDwWbXKKYtpYUcgd46aFW2d2BrfTC2ddg
	 z7pQSbBAiBbWzch2Dnys2dDRzV0IpVfQiJCXEP7WLym1Zcv1rYQ/8TsjP1dMhNcMT1
	 Cwdt5TTmCrm6DBq83L8ATZ0erEF9LiALH6msb7HpanINwTlVRtpFFuKNs+2cLqK5+b
	 SVKE1fTP2DCPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6EFC61DE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813143370.27135.17554452421044877517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd09c4869b2a23bcec8984ee25969b8ffedd240f34e3bff830360bdf9c29457a
Date: Sun, 30 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788131433
