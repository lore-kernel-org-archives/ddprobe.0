Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A42D4949E1
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779123034; cv=none; b=kFV9x6CmlR6fU3fholoWAngs5HBV7lwLmqp1hTgx336gGcGZwkceSJkq/AVbgSJgznl9FuH+YcEfAPsddW45fTfZCb+vZrp8m3qHVgOA21ymkoZeCqTJPI60CXYHZ3O+XFeCrI8RRRLyAg765D9/GABEadHsFHoRKe6q7+n29aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779123034; c=relaxed/simple;
	bh=Ei6eAHsmstYK3cA18l/PMp0qMVy1jYQM9M+aV4l2jaU=;
	h=To:Subject:From:Message-Id:Date; b=jmTbNxEgs8PnRakRDBXKbCUC7ZsfmdkaRTDljP6lIjwi5aJ+RPcPsq2MQUKSUgmi1GtbcpLiORHnGLIqbrJpqEVWPevoYQZ9ygjHIdw4gGIRAx/G0FeqdgHLEPHMt1/RNRiIMgifiazfxLgQ2DGWCWeLaoXWYhfG84Dk2bentkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzaukstS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzaukstS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFD1C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779123033;
	bh=Ei6eAHsmstYK3cA18l/PMp0qMVy1jYQM9M+aV4l2jaU=;
	h=To:Subject:From:Date:From;
	b=GzaukstSd7utmPjPAZ3JN0P9RH2WQ7LVdqegN2vBMF592FRubM/4h4zRjJdxw4fGn
	 lOOCIHWcCHw8qWoWg/ow8Zjn6ZXAiOx/R/0xV3EZ4rQZZrIIYhTHqcO8uevvBMo1Wn
	 XJFl0xxRkw0ttxmTzu+zsXF6A3jgfNqE5fYAdKWX/ZX8Dr1uQWUuv6Z0dDagC4tW9o
	 hk5SZUsgKHKN8yYkflKWapcolCymwKNj6YatBzbwk/QR/lSZskvT1ETYH/IPO762OA
	 8ZMkKmi5C9QHIit1/5PPVmZmpCZKhutKbqugSL0kZ0SmCs28gYdY6XTrNvw61vFnyD
	 M/7DtZpZMgsgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE65CCD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912303370.28091.8409053694916256889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82169567c48f3fa725047c690b927cd8634e189cc9c0f7ef1ae3eab6a971238
Date: Mon, 18 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779123033
