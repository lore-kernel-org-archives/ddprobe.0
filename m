Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283DB3C661D
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786738834; cv=none; b=hb6Bd9emV0uKylbr81mvTnE6VxE04xc5tWtFDAmO3zyScpKU8W2SEqAF1+KGMvL1nEi4JiHECZ1vXcy/WRDxdGLVgwhvufDmv+j9CmoplILev2wQ7M3kaErmXGE2wS17zOfipF6oBEIrycJiPxy4Uu6JPbL36yahnE3YCzh5qeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786738834; c=relaxed/simple;
	bh=d9l2HgYdLEQ+go+pZFYSP6HfUJAB2NZv8Y3juMTUGdk=;
	h=To:Subject:From:Message-Id:Date; b=aK2ijNMl4+d939xUiNolJBaa2xswUbOz3VFaSDz9HMqPr6k9Zbs15VAxdscp9VndE9+rBRCcjakFHSXnUHCYtng+OScXcsyDg1gPXDkHy0LPcf1VIYLXjTbMDnje0zkatE7xHSyZyGye4Nd4B5fLxdtOXe/PYjlmyIRW/gGbjo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNEmL58h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNEmL58h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B25C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786738833;
	bh=d9l2HgYdLEQ+go+pZFYSP6HfUJAB2NZv8Y3juMTUGdk=;
	h=To:Subject:From:Date:From;
	b=rNEmL58hwOTUxfBs7nmcBrXyLwnFRbYmwHU+8RCzh1UVuTlGKPN4L3TSKyFc2Sk01
	 BIAJ3DalrLPDwtM3q9gmJ+3avptmpR42cDAL+Q+5pfVMD0bAGhE4RrbmPDJd1q03NS
	 FDoQznuugGFIeyFQK5j/hwzLBwd/r4/ycg4nx/oVIIinVd3+0xicIfVXqPAOqOAsxJ
	 iIDtoQhNBGXdnhx/eW4Sizqi8weiT6qMbvgEwvqEcUXHJdKs4S4W58D7N4szaToO+r
	 m2yJb6oGPmNN4pWAd5mPWkdWwus76tKrNuHBhPpOCqwz5OghtDRW68NM1gh70jJFbV
	 YxnCDQE4pPxog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A9C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178673883369.29250.15982214842745014574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8420f85c7351fe9a7fed0a6bf29866069ea78e167c8553b26da9d3a36074a7d0
Date: Fri, 14 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786738833
