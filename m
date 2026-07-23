Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6C43C10A4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784834435; cv=none; b=umGiKku+wXLiJquLxkRKPCppVf+7V02EV1moM1jiCvvhm0YZCq+bu1HHnKv1p/JVWD8Wa5pYDnbLKifHUc1IMd1cCwgmuHQgoeMsZNeSPfTkys+jKqFTclC37wJ74NsiGMVEVrpyZwqUYA0EJChO03Q6kqadYZIpDBMtXNfA/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784834435; c=relaxed/simple;
	bh=5yk9LtKB3HBCPNo++3qxKdM3n4SDlJQiWtHRxvVBSyc=;
	h=To:Subject:From:Message-Id:Date; b=NEydvUKkGTs7DQ+Nl9ahP92UoNSqhfyNf82yRko0IaxC5ViAQX5PDYWOdkXMsXoe50j/7M5dw8UPPuWSJhHekHhdODyii/q9FkeYqQmG+TagMbo/IdgsKGt15sFmmRIQxWdwJyBQo1pQMbC0ycG2v1eCxSm3zE3gQ6a+NUGafpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVM+O1vE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVM+O1vE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9C5C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784834433;
	bh=5yk9LtKB3HBCPNo++3qxKdM3n4SDlJQiWtHRxvVBSyc=;
	h=To:Subject:From:Date:From;
	b=HVM+O1vEEPzIQjVNZy8jP28WJ4ksNvozlUROVKV9qytIeiq21k5xOubXk9hb1Q5Mq
	 BY51dX9Y0uQxX4lftchd/wjhkK5HDaoK6L/Zr4ft+1WlFU4gogp89daS9tc+PGYtki
	 bkvW8l9hsy1+BLkhYwnqnLeu8Eof08Hcb4M/sIJfrkpcclyXGZ7L8N++791c/LBnyo
	 2KwBbf93hwTJOYoJwHjm66pqm7pBzEOId3UWyAH0GZBc0x/AyK6aPK7vRkPcgfrPPd
	 1snLI7XHRG7NId6MnAddRt5Ch/sI1J7RscFezF68MImHKTpVeqkFwtmDKGWdf7acd/
	 2PxN6VnTvBPHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7479C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483443371.19999.508221613862290862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1cc0d329302931b6d6b990fbeed800c72a8de7c92fbd45607730785b4e7732
Date: Thu, 23 Jul 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784834433
