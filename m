Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3C3282EB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752731395; cv=none; b=u2qpn+H4gTwNI1/DNwUsRPlpwIzXcDr9bLivEVfoIqYOqPO3ioFEc6Gt6pCwmTSUL7O4lr21fuO8Vnth8Hl5ZmfN4CcxjVAu7Rc3hEFPaa54pWu27Cn8gCHIV7gkFpfh1kGB+NTtI8PfVl7GErFMfBgBalkmSRA4bCAymELOlKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752731395; c=relaxed/simple;
	bh=fRwQKj9GCWHKkpVH9cQNepnt4wGHabgOOmD0AhsbtHU=;
	h=To:Subject:From:Message-Id:Date; b=O5DYaRvBMXZi70XLu+InZjet6DqtW5DFe5IOF1/iqaHjnMsd4TSNeHnx4gBj4f2rwTKKQ2QCHQG/c12Id/rkDjz70Sn+v8Z7CgAwIyhUPx92oOW69Wo3WCSBtcNsrcHxKkb/vJZnXMMcx7wzAPlg+RO5aOqTja/gwQRpF4RfTHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0Gho6I1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0Gho6I1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE61DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752731393;
	bh=fRwQKj9GCWHKkpVH9cQNepnt4wGHabgOOmD0AhsbtHU=;
	h=To:Subject:From:Date:From;
	b=P0Gho6I1Gxmv8Dp326KLtoFQVhacuDyMfZOfjSPtNT30FQacGSX1k6IfDQDLBzXlT
	 9iRYzjf/frocg7qKF6YTAL9qOQvAJ/03ygm1OMqcd1E6rB3RwEfF0HcMHC6R7NruOw
	 W5luxUh+X0sysVgsXoDGWzkJLuqIlWdQ7P7k1zoMiVj2NPlppSHqVdrepi0zpn4M5T
	 e3CYdkPsllPeGsl5TFx1XYbr/wAxbzMfWYmNjsvTdVQ/b5fFVNTi9b9qAo+9MPrTjV
	 Ie5ghwnmmi2cDlVczZ8TGkHCQm1WQEkgPFBhnC28esF0bJ9Ps6djNigF5dTQwDsOfs
	 mO/HvNvIC8brw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B088C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273139362.7669.17919143028275663957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efe3f1af5436df910c6797bff5fcfda39d661fc95594c3710d892df71179263
Date: Thu, 17 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752731393
