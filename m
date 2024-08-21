Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74F818990A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724247953; cv=none; b=KOsHiYQ4zAGUmc5IqnxViBIdB+cFddavNhuuIP8OaCaPLsrb96I4Rd3QOfo2OaT6r4hbuOgO7vX/vQfUX09HsHH0IV/GzSQyNG/3W2Q3l6TjZ2g8bIgmRihsLEhctyn1XdrC7idp73bf3SgwBQwdDPC32xSp3Be1zh2VpmRw+qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724247953; c=relaxed/simple;
	bh=ANoGPQgW4hTdGNkUWRspqfRlS7F5IyZk1t5JEEowf+E=;
	h=To:Subject:From:Message-Id:Date; b=UPKkD5vBB7mTmviaIgk2hNjVvyN5Uv/A7dek5LPSWa8joyeGaiXM+8ERIbiaDcOiTV08ybv+gqO0ilEBsImK7KzDHz6ngcUSOEZ+HohR1xgkqowG7wjjU1WqJON8FXWN8zedgHB7lP71kjuIfrh7mPJyWFd78538ukqQfewTq+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVn9eRIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVn9eRIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F80C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724247953;
	bh=ANoGPQgW4hTdGNkUWRspqfRlS7F5IyZk1t5JEEowf+E=;
	h=To:Subject:From:Date:From;
	b=JVn9eRIcpx2YIe7frfEWBipdb1zEO5FFyBAoQD3vRKBB4TMNq+c384/Rehg/yJmeC
	 tOilIRS62QZ/lKIp0lOO2LUHN5fRfzGW/sOLq3YkZjOocNGJejY51hnm95znw+vkb2
	 6/Zm3fbMdCM2On6G3oGGJgCRBLIGT1wSRTfTgGf/JsbLuwvImkiouWmF6+ktXfK4YP
	 ShHYxdokEXk4596bAK8/obTjDXRM3AGiQrpWUwPCs8zJnKPmnxv5eEOFJHtzIpB3d7
	 5ARaSynaHBQTfVA5HEHFQ8q0XRXRI51T2pZxDvoHtDQWrE+JbmK8SXxKv5WY/2rV39
	 ZbiW/Q8el0v/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E82C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424795362.3477.14525314550226338857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a010e02517d32edef187722c8bb8778931e632f5c47427b26316b3847c18a081
Date: Wed, 21 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724247953
