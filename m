Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD822110E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776305254; cv=none; b=bhm/B9jHqV9glg5/nGF0y1/1LVNT4df6uD0/fUtubg2guxb+f+Wi3Oj56xQFZfbj6PPTm+/Sm5WYI0O55ZkfOf7I4klagDOv2TZqtcShw72Ti+DtSkjjdLTooj/SGJRuLGkpcS1WAufhsRTdi4NaWqWO0v9dsuXEd/kzFfbnz6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776305254; c=relaxed/simple;
	bh=EUrE9UNT9RjYvd2lpIFBgJnxclCxu50ANs4KLGO6rYE=;
	h=To:Subject:From:Message-Id:Date; b=XY5itFOpS/zLUQHBQTD78v1lTfmHfj8ykqmH5LvRX+2c0VPCrr7gJv8yiCM2hMB62o0pfgTBZ456/4vE0zZ7nv8eT1Qk6CIQreV2Pq3GQ+ZfkhGV+PxRKKSw+oE17I/jMzcLOvcI+nlMEDTen4aGGOV61mN3iWBICko3N5/ygpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDYwmCgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDYwmCgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC91C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776305253;
	bh=EUrE9UNT9RjYvd2lpIFBgJnxclCxu50ANs4KLGO6rYE=;
	h=To:Subject:From:Date:From;
	b=uDYwmCgXHLoxc2wPGIIoxEdSrSLgSQfiueHnGB4fAXh2akgoMF7YiPIgYj8qE5rpo
	 pYkBGiPoBphhOAIolhGCOUEupmCI48P1sLdRJZbS9IYrG5oSHOV+WejQrCfnp2iFgk
	 /uDDdV3Sd0IBat/PuTTbKOhkA97yRJDNEOdvPkH78N7zGdeNTm8xNKBAovDsSYtIWz
	 s3V5GJq3zVzgBltihkP8kRHTUoTkN4a7HTko88c86x5BVTYu0YH77JCv17nZWBTYNQ
	 P6XeZD95snD9XVJqf/fo0YWNprlEd+v6A2ICrIIoMr3M+ijGriXqFUW8L8t27qK2bH
	 uwQVkHHVftNIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8BDF433D7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630525370.19044.11735442726791730021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc459f035589ae1ce5f12bd12ba7379936856593564fed77f93a032860d50c4
Date: Thu, 16 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776305253
