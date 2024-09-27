Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474BB1799D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727399154; cv=none; b=jR6OqJXAEbzvpu6znOlhNLKV1xZ8+ThDyhLiolTnJey1kaz8MsILq3DW/93Toh56mO9BlmY+DAYCw8qi0Ldh2NBqRRB0K2znekqjPMEF03PhxHotdhtplwBu1f1lFOIfqHu66KuWmUjlbmIjgac55EfUXg6FCRz2ok887LgR9ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727399154; c=relaxed/simple;
	bh=ps+lbLieUag/piAaPTjapfIn35Dkuz48tgyvcOxuXhM=;
	h=To:Subject:From:Message-Id:Date; b=GK08TnBA8hbgypPju/aaH4n1US1Oxi9afP4QN7pS8lZwz4qxNOupR7HCtS7XWla5o1mBC4kxtAQPa6BJFsFozJRN1WViwLL55C44Y17qTJsS3tNSRuby6i1fOW2fn8fmdH/by5j9WrazeOhRB9HXsK2GnJwYp6FDfUeJ0B/khbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2VINvnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2VINvnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0573C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727399153;
	bh=ps+lbLieUag/piAaPTjapfIn35Dkuz48tgyvcOxuXhM=;
	h=To:Subject:From:Date:From;
	b=m2VINvnBA+fkFm2HwbFfqn35Lin6QA/tBgFQ9mJc2haJpwqSmtbth3pK44sPKhYZV
	 svY4j+6ZtPTBB/L5RiuNFwAhXwaF5ox8mdFYa9nuK8LclBqCWHATh8SDbnktwmip/5
	 ZFJdQTRLmFzsLQdmrPsFoWBwSJNwosAuYNzr6dQW2nYGwI/Q+rxpO3pLmIdgH500nh
	 Rz+zcnM/N/QAkOCJVf0/pc6Xq1a1B9P9NCcNBeRdPZmgUgFonnOxRfKnY3cIxBqQon
	 FuR6v+c2XoghsbgN3CeA+/SLvyt8dxeyLtlD+23ftZm3nIdEHqmFDK6OWiWbV0mJUv
	 PJTyKO10Mm6dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2FCCEBF60
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172739915360.23771.15873415499784765654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bda680223f1b3324a6077bb9b667d168abb19e10c407bd944def411fa9a7d91
Date: Fri, 27 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727399153
