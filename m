Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1FF33993
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776470854; cv=none; b=OL8W9IABSKN8MoKW5Gbbni/Ds3+t3REuyBlofKW0VcRMiLrAJaFzoEI2wg69fxz71r7SjGElZ2kEl6qkl5F5YlfsRsv0HHpoFL/O0fGjaWqNDMQMtaaH9RFBNaG2/HVTrQiaNzuhd2GVuoeImIPDMUt6wMa/PlI3xFJSf+LXh2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776470854; c=relaxed/simple;
	bh=ihJW3Ox4RS14e82bp1arkCCQLa9dSd8VToUqqS8oZZc=;
	h=To:Subject:From:Message-Id:Date; b=KJYky11WJJA+7vH+WnJFZOit4KwEN8xd6QE3wPnOpxtaytqCVZdfXnlwQv4T8hm5AIHq25/4z4/DZlWk1RA3RLdHq+0FnZnF5VTvrGx2Pv9l+FCKR91Q0NYwwwBLUPSg0EpidD74zaiCbK5kdD2Jdl+sELkJNvz9iiO5mPhy+gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu1Sorh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu1Sorh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2A3C19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776470853;
	bh=ihJW3Ox4RS14e82bp1arkCCQLa9dSd8VToUqqS8oZZc=;
	h=To:Subject:From:Date:From;
	b=uu1Sorh8774xkUJl0MQlcJDjY0dTrGGLo+4XuZsVJpJ74S+J/xXGRe5iHNWc983lK
	 Q6Ki6DNbv+oZTR78eKjYeynRZd5ZpLAN/PhyoYubiU361KFnZb8CPJUwULBvT8/jwq
	 02CThqLj2wlnQcIENmlUtCHIC9nCgH1BwgaR2bQmDYJ8/pstINijbmiKNtW2fJRkOg
	 vAVxGIGdtjkeLBoEdA1TLvP6WB4SZFxMrwClX6ZQdbLUwHQ8bG9YBcj+x7BHYS0zYE
	 I+UTICmrguOFSxpbBBBLQB4hjyN3UOSV4yNJxOWFRuVDqtS4malnbM+SvaLp5ipoXK
	 8b1YmJdxLzq+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA53EF99C6D
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647085368.31334.4441235823197204139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b567779760cc496ec02cdb30f43564f6b0c3241eaa5ee5d7d2b6ae35ea41fc99
Date: Sat, 18 Apr 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776470853
