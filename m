Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC3134C124
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782332254; cv=none; b=RQa2H1aT2HwK0FcqRyMxrCcNNz+DhDdbmZ33OnKgkL/8b/yhQoh8/AyXTijoXM5OyWP3Gt5/dozU4SCJeuD8BvfkQRoGRYoGfzARh4tIytKWthgB6s7xJjKYYdQvfoD9p2MdhwKylAyBQaPfdN42h9XkSJfEOV8bHefguJlySjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782332254; c=relaxed/simple;
	bh=vXLq17GTFsJ/Gk01rwDOZZLSbk6JaYLn4BOPrxtJTnU=;
	h=To:Subject:From:Message-Id:Date; b=cn4GjlRWKv6olwlL2ZNFY0VcOod9SkGpx+8S0eJ0z35dzcVa42/NeMDNJbSbo+R8D35fjQthJzO2sMwu1kQ1ogKbOjOHDnMFyctcLT7vO1trEzAiXnk3c5poP40dPVFlwbcBr+UMUXo6Dw22n0GsL4KdDCfY/qWWDRX0hOUWhDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPRiN9+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPRiN9+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84EFC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782332253;
	bh=vXLq17GTFsJ/Gk01rwDOZZLSbk6JaYLn4BOPrxtJTnU=;
	h=To:Subject:From:Date:From;
	b=DPRiN9+6NjAml4+L1HsT+cMJIJxxSGaGGVR8J94apaxyMr1d26nKOPRI+IMB2ebX8
	 PzHmCqZ0RNg2NMnGgnX5xiAOxv1zNEVhDS4ASq1nuN7JO4UomVPUJ8du8qSGxn88ER
	 5wdS+aH9nrHyJlj91WSr2rRgCeWlmUAutqYEY6+C1LN3cdH5ke+LY7ahM1z6ZoCc8C
	 18GlaRLd3sdUBY+bfL9C9v7okDzzDZ0PIWijjcNDRTnLpyt0qBq+5HHChYJl0LFVJ3
	 00O3J2T28L9jFKVB9eMncIwZCzo5CZ2JONfODZl5ccR48OqMaWkXuJXeN34iBCcx9i
	 Q86UXcoUJi97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB4DCDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233225371.2128.14661313744417022291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34132afaf05f6299f410fb9136641d85c13d5d988bd613b3db5accdd3f628e0
Date: Wed, 24 Jun 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782332253
