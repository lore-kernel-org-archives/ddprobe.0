Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4FD3EA66
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785020434; cv=none; b=JmYJ2Qz1aJL0tgFTT3ZNXJRklqlRr0b34EOEpyDUY2zdeYc40gQ/XE1LAJ+vbPPUcsQ4XuwbVtUKJo/GjDOBNksNp1/dJOFNR+x3qaXFF7tTG3E9wTOvzhecgF6pKaUgu1+0DD8/x7wUNC8JOw8on6r0MtOFBecOdoopgRhdqVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785020434; c=relaxed/simple;
	bh=O+1lcUXEFbGvpC2ZTAuDv2qGyPQoJDTgt4EhFYFWMKE=;
	h=To:Subject:From:Message-Id:Date; b=PKUGFtYJ/FcrBjADw8saLCxS1qWjFUwOytP0ywChnydCK3SZn+hRtEH8A+eJHL1PgY4hm94WxGGcBz3a4a7UsP7fc753esfwJg6/U2NUBvrdBGIH8+fcT353ACDz6+ZmN15KqNYHlQ0fgS3R2WQPwANHYuXUY7JmsXYlVJFHdPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sepEOY/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sepEOY/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8ACC2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785020433;
	bh=O+1lcUXEFbGvpC2ZTAuDv2qGyPQoJDTgt4EhFYFWMKE=;
	h=To:Subject:From:Date:From;
	b=sepEOY/dbDWVRhngLgNu3rwls+hfmRp4JL4mi55i+cC7/v2nrOt4gk8JftNroCp+V
	 gy14w3dvCyl/12J4JTSai8czkqsKYAikguYYOIHyGGV0OY20iQ32eR9j8OKvQegE6R
	 h6jJhQttOs/QuXw70KQuYHpZJZdtsRaps/+J095gi1X24E76COyIrQt+nIAKHl3R+n
	 fOa3Igm6WDa4q1as+EdzNz/L14x0kfND9uhSx36QclOpfkzxz7iROspCgs0U0uXNGg
	 8LbOj5zfnMKvxVqlXGmaCSlS+9DOG2tCnCxldD8HiLyizsJp/xcdLulmtGNx3gP1eG
	 QIZuDTzb8eoqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6ECC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502043368.18820.4421588660107827339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9ece785ec05141edcd307315ccfe6fb507785e8e7969a740cdf2fa1c1cf756
Date: Sat, 25 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785020433
