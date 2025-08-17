Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A282AE97
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755473994; cv=none; b=F/8mwHGR14lDWTDjuT/kk9HwQBm7AKtYrLq/mH1eg+qd2wSUvPBN81jkVC2Xc6fho+EXwB0b91aqw92FwmWHkbPQ4O122ryAlZCwjXgvwJ21jnd42VFa/koHf2DvCOKVJ0tCP4Ngi9eraAg/75BOLxbMHtX5YTVGGcI4rxgXNMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755473994; c=relaxed/simple;
	bh=5UX6nKFpM8GGs/zhGO8A+WYXxZK/TFe/4R2BtRX9Iao=;
	h=To:Subject:From:Message-Id:Date; b=Mm8gGslVRMfILVbLN0jBv58npUNMzQrMZwCztv2IAD3DtSI20+4J/gRZAng0V8vsaMHvmHjL1FH54+hIjBTYuxXyMG7Mdt9/rLc2Kw8txu9Ej8vyiv83pmrjN0h2ZGtX4NGz1b/QTwG1zjEFehtKtJvKyBAwmMvl9o5XlbD7TtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg7GdZmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg7GdZmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0D6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755473993;
	bh=5UX6nKFpM8GGs/zhGO8A+WYXxZK/TFe/4R2BtRX9Iao=;
	h=To:Subject:From:Date:From;
	b=Tg7GdZmjttwQoRZei8e+8n7TfwEVB3xKOYVX+swK+Eucn1wKk90FVHzUoR3S83EHT
	 eRSbltINpPr7GmBRj6fwp2WJC6ba8jYDZthibMkpC0h0syskoVZQd2UQTkKGpVL8Q/
	 vxcpFy0Z/eKjNPO+ddYxyau6wEkRnom1UBKqgqKYAdYg/6VsvAobkyiQCvEpg4FvZX
	 /MAfN3hJgUUqbJ4AuisH4VzjY4oqVv5rqBnVVvPKBw8CmbHcBRG49R2oMZfCr2n99v
	 /a1IGCLLHLqRv5hfkUUJZDLt8Br3zsxgG3iAXJ9Yrsvh6JasYiv5PEjqE45xvausl4
	 Ct8kd3AQYH+hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFFACA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547399357.30240.3839899452220555978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d434d09d9b906732fbeb7932bb0be934d323b1ad91c929d3f24847dab5f7437
Date: Sun, 17 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755473993
