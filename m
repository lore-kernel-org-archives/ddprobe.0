Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70F914658C
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733677553; cv=none; b=oOnfAm5nX7SwircGqAnBJtrrSZpvESqB23ry32blYbaP5XEh5hNNDEqs1MpdrV1GnlirE2A2lCocGigvhaKyvcol+4TnxTqM32GoD8LIqXqJ+l1okpjn6oWHJ8jhtFZ4MzlhA2PqRk+ZztN5TlaxQCUY5kdlTWZwGePvB50PVc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733677553; c=relaxed/simple;
	bh=ZHdRKiNEPb5Kcsw9QpfY2lQdX/4m2dA/UfaLtXd5hq8=;
	h=To:Subject:From:Message-Id:Date; b=uDFpOACBaAmjVjrJ3dfOgZ0YM3ySLcMXZMEuTMpg9ntaG9oordQA94VM2AgFsLjTH8NTl4L1en5MmnzXSc9cSvK/tn2Uvna7jTD/W84DWAhDu6lzigEuVDlUXmYxrANWKWuwXGOFhFY47uBg2HNvLeYm1HNF+PaaStHfh3xdrQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqgFNSWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqgFNSWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84C5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677553;
	bh=ZHdRKiNEPb5Kcsw9QpfY2lQdX/4m2dA/UfaLtXd5hq8=;
	h=To:Subject:From:Date:From;
	b=iqgFNSWycRz0vIDnqyyY2JzdVFHdp+wSkFYboaO+vR+oCSebbFK23HmCtci1REZcV
	 FAsH5bCtGReOgbVSCXbRfVoUr7ggB9sMTzzm3FwXlasI+1rt66EB/dvd9YBtCzAZWN
	 BEDtWXr6NNNU1mjZbi3W5dpRMzRtagNM3+Ly9Pex35LeDKd/H5hWuLGeT54xu8oOGT
	 eHsRlps3q4zIsIjZIeyB5zIbQe6r/8VjGvP27d0bPTtgGaXFZtYmqgBRG3COLX9YSY
	 iuA9LV37RI4bZFXuTEiz9HnTn3p2+7MujWX8cDwI6d8mp2SFmVxsujrNvjsJweOWE0
	 GM4pxgT5KZj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4334E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173367755364.23143.2283682463575622756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486ed5ef0759fa5039ae8be708b009ca83d7a01330245b6125f64085375b9f4c
Date: Sun, 08 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733677553
