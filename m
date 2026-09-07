Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E0A3AF666
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788800434; cv=none; b=Ft4Ypr0J+cTyFxNLEK91RHQLCdgb4t0NJBTiA9JMBk38wDOS1YPZTk0yvD/O2VL+vccBVvmMUbxZ/JLRJ1KhJD/Ddp3d+6N72OLqZt1aajyAOmSP8HotE3uFsC5nx3K9kIpDELlFPDzhwORLa6KBAIpD2/e+pdTvVco4pMNEgkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788800434; c=relaxed/simple;
	bh=PW6XwfE8cQMsHnmnLHE1v/saBOkohfPse2fLgAme/Uw=;
	h=To:Subject:From:Message-Id:Date; b=ZPRanvacthkE6FUCa2p9ekhqi/cqtfHta8hkG5sFXyy3QfyJ1leX/u/Mn+qGgIG5rPZwdDZrf4zB4AiLZloi0DnPPsIaqR2qrGV/T6AQV21W9n8NvwDhfe3glmv0g+Wjo5tRL2QVcp9FCeaGVyWsJJ6B8ecPgpMWrtx1Mb/ucfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1l4Wcxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1l4Wcxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D915BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788800433;
	bh=PW6XwfE8cQMsHnmnLHE1v/saBOkohfPse2fLgAme/Uw=;
	h=To:Subject:From:Date:From;
	b=h1l4WcxcdWrXKxx/f8ZTU5AWEblqMo6rOs7LKHZUw/YmcnY3wL0PsC+M/DRqx0/ii
	 ZzFuoK712dL2UBzxwFQF6puDt70jfUu05enqm5id5O95gFhRdyC/MnQpnklrxWmEa1
	 1XMPCS3roLYib4kgylEch1u6iLp0LBhbBVTr/p73iNh5+WX5qNuAAzaN1AojXliaiI
	 VOL+DNAEVVi7gg7KHHOs9xILLTDi8uvOFeY0IG3OvReqV2d2SJbNtIWp8C/SVkYZoh
	 ubLgdCHdz0XNq8/4wzPT+4Hj+ZRX3v4IqXIKnvtcd9g/XZwp82ERZMBcSsi4V1WpkD
	 z97gLchSMoztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AA4C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880043370.1932.9968900667711164604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78239bd27e766a9f1a179df39ff1b2fad1af8c2050d88a5b511c1a700524864c
Date: Mon, 07 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788800433
