Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CFD34CDD
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771906494; cv=none; b=hMf7asWRNoMye17yOuyJ8PvCaDWOevTmAhuGU5iSMOrlejM2iDTBT29pxzivRVAVjY+h+kgDk7wYLVLT1cXcktxPUJSPNJpen/DG1vuYbsvwhahW23Q4TJcXqDi6osUQIF6w13wa9VwylMfSZbezWJ3wMo74ZHTy4NKl+T2Rc/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771906494; c=relaxed/simple;
	bh=ceT9oNcZQhKfPuU1cxtsZNIrupE47afXKo7ABUDwXwE=;
	h=To:Subject:From:Message-Id:Date; b=sOTidBs7qq9UeVOL9Czy0Vs4girTPbiuGbnJ3QNH/0rLste7LeQYBp2IRBneENXethEw98r5Ec8XaUWyDc4PdOdeV2mpgSPfJ15buSX8qxF6gH0/5yYviqleTcgeBUi+YIHxdmauJpu4jYkHd12aYJ3MlH1sM2ya36if4kUsOqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvZLRCwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvZLRCwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DAAC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771906493;
	bh=ceT9oNcZQhKfPuU1cxtsZNIrupE47afXKo7ABUDwXwE=;
	h=To:Subject:From:Date:From;
	b=IvZLRCwFS61LGoEamNQ/vALgiWwFZ8Hk5KyioaDnYKr6X4JQmv+b6Oul8wZKR7ES+
	 Ff3odewooxA/lL0CO/j50rubp+MxHAhqZYPNKEcgpUKFc/bb653WcAIIpS0i8WxMak
	 2+eo9hKcUPmuVxK4edc5q6mfrlhF+uAFX4MFdRvBsqqQft2inN9DVhmgdyyhqpWvbO
	 P9cJO+eKWiORHNWmJs2Zbc6npKhI+PN9stoI0QaOsGVoSpUNXEUW878rXF9wX+p0+M
	 8SsJP8oKc12q/H+NJMonxl66iX2LWw5zlAMxhJGYtn1e9cGQdBvXrxEIGWrBiCqcz0
	 yC6LMTSXXbsAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A6EFB7F6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190649358.17488.5552550891346206452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833d9f6d759d974e149cdee59dc5c3ec58745774e20ef1194ed73d7a48f96954
Date: Tue, 24 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771906493
