Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35394156220
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723287354; cv=none; b=JMgDPW13A7yZtdffAbNyIp8kH4mZekaplQgtzMggNlPr4/2ZZ/GalYfu3+MdYok+lMPtIcH3nRUUsEbbKAZSOYsVW5B+NDimcxIpf6SUOshm/V1fvA9+/XotlIY9LUY6bdFy5Ndl09jU6ZDDZbZpNL7ZalEGyx5ZzxrJYriXiVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723287354; c=relaxed/simple;
	bh=M3SQAzBgDtCURIGqYlhNKlgu+dlc3ao5yKshYrkA9KU=;
	h=To:Subject:From:Message-Id:Date; b=raGIC0jUSwmw9qB/GuHIEXTf+8Viyb3MZaeh9nAxKkBYzqK95WloQyAQuQP5+mc9CoDYTnQKYg6QH+V6SBPNAvlbVQ0Y40v3QqBIYTLfcANjO+0TFziygKrqR1ieaWjCNpRQHeLoc84yfb+abD/sDNX6MBN04FhNtD0Inw1ZHHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRl2ylZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRl2ylZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16F5C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723287353;
	bh=M3SQAzBgDtCURIGqYlhNKlgu+dlc3ao5yKshYrkA9KU=;
	h=To:Subject:From:Date:From;
	b=RRl2ylZqOXJ5YFntWkkm1zDY2P3yDmnPfSwbz6zUsqOdsaKZN0apMMo81DLDFEs26
	 06o9FkjiZPzQ5BjDKIhDpFq8tX9wBx9uA1WjOioNZtU/L52/76QdlUPWRSxjE4d0ce
	 Lc3WxmkqHqwmgWCxYGmjEEeuRY8sABkW6JRP0t5qkTb394AZ2aC7XtZhM2YYZRyePv
	 oqrDQyV81Qdm18cQO58iPFr+TOQCcI71xb8UumMR10iVK4e8hwYsp5m2hpyLbUGTRX
	 vhLnVWgJpWsRbYNphssNBfA1KM+R2y3dAcwPO4MRuGMqpAWYn/r+hHTZSNkh73lg7A
	 pu4axZIALVLig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3D6C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172328735361.5682.5375807998130338306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251e4b5a2cc13fae527d7d66cf83a254a848466282149be3e272fdd689ca899c
Date: Sat, 10 Aug 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723287353
