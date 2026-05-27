Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288163603EB
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779908554; cv=none; b=pulDbOUfZw60LA+FS/2zg8o76yvpFghq6peVGS2Wl5tewfyUAL4MFQs6HwztuppgK45smFgB6+pKUKo0Idp9FP+cSKQeGIBOdGwab+/OTqPt+IlqNuC8bYr2t+iT4oC7z72VebicoeckQ8lgGI6i/glzBqiIX/TY5PE5PFepspw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779908554; c=relaxed/simple;
	bh=giYhZwYnNRHmTU1lEsPO9EsG+olm0Y1jGKbKKGdmcbA=;
	h=To:Subject:From:Message-Id:Date; b=S4fJ7Txi+5UXkvzGvqIafYUDWSUqQlC2mwOmMcqMXfTDLxZOhgeBYwF7NipJl+F2TxCe1rIy08xVnrDtmKDKfCd+KyH65MMqNDovyBlFMC3oezA/xwdcxUtgt3jWywVWudxjWifMOo4pyxMwDVvYpg5MjiVpqeyae8AAoHFlgzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRwXV5Hx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRwXV5Hx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96E1C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779908553;
	bh=giYhZwYnNRHmTU1lEsPO9EsG+olm0Y1jGKbKKGdmcbA=;
	h=To:Subject:From:Date:From;
	b=CRwXV5HxJDhtNsFFWfrLnBBOq2tYYR21lKTIvfl8VYSNM2eY3JMUVSr/URtOW/ThD
	 pJDYhc7jkWscz80Yb7yU3z8wxdyfwfCvYMv6YxjffoYp318Z03fD2u5cmKfNYaA6+x
	 83mt+SmpmJmC0x3H42I6T/nisL7BxaYCAyuDTWWqImn4Lc+G9FmvO+3U2Zel+UqFiq
	 B2kIHIhZ0PBtOEVbaVQkfYP4DvSQz0gO/y7Ga1VSheQduMUZ+G9Y+jaqUNNtvPGeDH
	 LE0KA8K3vLBny57KICKYxWLMNiuXZ4YQs83+UmiN47nGnOb5js0O1wjQmWPPzk2VFO
	 nxQ1ZXjZXBzlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB81CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990855370.6622.15543523301093892170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a6754658e317b8098ba95b09d21e23f402d4b6156fb52a9053dd97b812daf7
Date: Wed, 27 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779908553
