Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E93C3A7F78
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787893834; cv=none; b=QwaF1LkUxyAPIdADT8JbUpIhSoLz9bOdWuKwNldkBl+fOSq5nfB8ZmK3CLbeqVL0xrHqj8uKCXTCtvbfTZU1S4wbhepYMsEBLcRozd1O4QlDnzpFaBx3PfkZNhu8IUc4V681vnn3OIgcHFg1ueY0k82CkbUoRZv0B36V14noWpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787893834; c=relaxed/simple;
	bh=tFitGIkNmqfk3sEkRIGW1YQY1+7mpkE7HBKi8syAvvs=;
	h=To:Subject:From:Message-Id:Date; b=bVq/BMmjk8qynovURi1+sMbNxic34jRQZkFt8FFa9BUt4ozbZgeXMDfo5OhJ1RViCxJnwdxWD3jvwUwHq4oAWcHIpiJ6TGoGhsuAGRSTRMwycWJitJSXZrSbLy6ixs10w4OL7SVP28X58hT7iDf93SI7Ak8jUQ+WxkB2m98Zglc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLfB0WnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLfB0WnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF58C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787893833;
	bh=tFitGIkNmqfk3sEkRIGW1YQY1+7mpkE7HBKi8syAvvs=;
	h=To:Subject:From:Date:From;
	b=lLfB0WnTneZbyIooPX+JbI3eiMTvE2cTTmr5j+0GVY4dXinMgHNbO2BQQCsZ+HB9u
	 57qeUHCCKyPSLIfIJGgE/F7t6OEzOQZOVxQfSQ8YpVOJKW77HWSq/YcYdWNfb+F7nn
	 FKSPHs69Pxln6Tz0oJSupU/z9PNZyzqYJMuci7jxpa2Ruy2oTAcGuOOcya7y3b3YAP
	 CgMJDc/LClBEGTzacC+2F2fn5r4hQXy7cXed77uZJLQHJWTRLYwpCFi8w7BmUoc1+v
	 ogcLWQM07GhvTiE1VLyrQI+Qjkrc1L4Qz2aLBZvNniqdE7dGuDINUJ2jaXFx9LMNpg
	 MPMOTlXp33vgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9722C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789383368.2433.11664263255763213085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4289e4f1f9a3595805485061479ef7fd5161e6f225d709119abc4e829837630
Date: Fri, 28 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787893833
