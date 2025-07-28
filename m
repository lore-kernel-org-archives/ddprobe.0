Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381601C5D53
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753736394; cv=none; b=VBl0QatT2Y8IMMARwspqsd1EDymmOjsegPpm5KTZ195cQBnjAprXOUQ4oAqCVdNzntN8tVSCtLijV4Y3gdzRoov1oHqNvrBSpmRoc9eCZZaMj/3lzaIudPRzY/Y4Lld5s1BGk+14EhFqKsYXSP3nS1FkawY8ckK/WVE84qqfyW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753736394; c=relaxed/simple;
	bh=Vc3MQKjAbfzg4bVJjWpzdL6/MGGm4iSQYLLgadEkyp4=;
	h=To:Subject:From:Message-Id:Date; b=EDGL7DzO4vf1JUWZywhvdjeMwQTuVU286fiNFXtqjDAkAEeNSbuzbkojFZaffEP5GHgwrF7OMvTLxaBegrxbAZHc5/yS+Qzfzmf+Syizs+oRRtFCwakQ30jDilv8TrLkqWpei+N+UhIp7Sg/WhcGGkeRCm2UbJLelA5bGvyPbF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/de3AYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/de3AYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F5DC4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753736393;
	bh=Vc3MQKjAbfzg4bVJjWpzdL6/MGGm4iSQYLLgadEkyp4=;
	h=To:Subject:From:Date:From;
	b=V/de3AYSa52XMqEaSfIXf42soAuQmgDTFTOXGDjyPUWjRb0v6uK2wRzXPHsXggCLR
	 fM88ijZYRzhNii7w6+ziIriXoCzPWd1d9X/MKwLibSdMDaZ7uhBWYLwGJzXklron/x
	 9gX2sX/4zscf/djsCQvUX942wzTXSogFl4oV7zXOOHtNTTo1Ki7iYaZax6bzoo0B8Z
	 sK0R0f1/zmNSkpwD8jijIHwqBMdBNXQLEBxIRBVWeKcSYaCeYXtv8HG1aGqhPlIvvq
	 bNRwxuCZL85gGYcnqzmwERnRjIR2ugQAb4moUn6r8bEMV8utPE19xejNci8FdOx+IC
	 75s4ZCw94KTvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923ADC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373639359.18685.6922308469151867065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b917b5469056a091732d42718868385aa41ada68314ca5fc169ff52c490c821e
Date: Mon, 28 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753736393
