Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB7D12F5B3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729623954; cv=none; b=Tjqym/Tq2fr318c8e7FxEgt0wyXk7glkASn8BC98sVWdVOexCTafijaQuFqFXCTBl6klonxnc7fQekOzN+Elv/wAbdkLRTklTZB2NEk8+KyEtE3jp423soJEyAh5VgBY5ZJ4rxgVoiJd64VN55qvHVu08lkmBKO8AvysjmQ3fRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729623954; c=relaxed/simple;
	bh=koQkZM/1Ckg8r2SBDhC9XPmQefxX2Ve9gyQCezHjk1M=;
	h=To:Subject:From:Message-Id:Date; b=C9JV1hTuYWV81e6JHH1sk9yQDs4nd4+lIGLKZ1Nx13c0zcgT7SiA1rif3SXTqsgORnWoc/a5nizgugVMjQBmhshqxrekTwelSP6vt0xukR49ibOe+6XUWLioK2HV6JKucYCBxign+LBltRECVx3b3kOUxlYTaNq6G9PGV3fTzV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRextyz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRextyz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93DFC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729623953;
	bh=koQkZM/1Ckg8r2SBDhC9XPmQefxX2Ve9gyQCezHjk1M=;
	h=To:Subject:From:Date:From;
	b=lRextyz6RiQ6nxVgKb4GHdYfE+II8Y8h8cre/NMdyQWrD/ifyeLCv4+lPnJMXzudB
	 VRKlNhj4pG3tvGHJS4VS1tOmYzjFGTuZ79hwoELqmcuE+hde1/c3lkznuHICBWioE9
	 sXcXe5XccgrWkjjikcndz2kyti6QyRetgnJI0ExZ6Zymb1DxrQTFpID5MEubvtwf+g
	 Ya2lt4eswY1PP27Lu7H96nzXUKdrNYVbUEmkb+7fEXhFc9zWswDWFL+LP3c3mxzptR
	 aB6W5uIOcI43szAnKqtS7TlkO1ZClw+g0Ej4I5KAPA1aWm+RsqTesiWiUSkYjtGynP
	 rbHOuZ27QwV6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7B6CDD0C6
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172962395375.6333.9788661608663415459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ae19c211bb831036f9cb73127e63d2fec57d10d7519645d90ce9a8b3188a38
Date: Tue, 22 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729623953
