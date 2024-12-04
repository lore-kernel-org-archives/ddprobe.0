Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA881917D8
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733348754; cv=none; b=ndZkiyB6ZWPkmthD+jJJEFLCi+ybyYUqAyZ1X5KiGJmJaqY9xzUjjLuwqtKbO2cCTiaSmkTUnB66Dmt8rTv8GgyBETA+ZbuY3LPp0MylVEp/uqSwYXbNa5SsLkY6e+XG0/AJjZeWcDnA9pXVbQPFoRxf/bnj3D0oTkMAq6u0SEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733348754; c=relaxed/simple;
	bh=jJSE+ptImSceBW7Hqtz3TLkeduwfQHABjbqLCMOBYfw=;
	h=To:Subject:From:Message-Id:Date; b=qp66qhddInR26f4OBM59PLJLRKoA9gWJhAJ9CxX2LpZuEcHNTLwyb4mKc8qJ3TNr7MA5D1F0d8dzG2fPYCOPjXoRRUw9P5W73WQeDTtSHJM1HPnYqlV/PyVGqPcv0DCYI9A/LqSqZ9BjYM/jxq9ivF+wsY45uFtQv2V8YkRTf0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4loMCKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4loMCKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEB4C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733348753;
	bh=jJSE+ptImSceBW7Hqtz3TLkeduwfQHABjbqLCMOBYfw=;
	h=To:Subject:From:Date:From;
	b=Q4loMCKp8IaQN5vLr9pUpLcsuDR/j27DvF8rNvT2a96q0a0W+zTkLiWp9UerKO9tE
	 za/01+dDNsFIODJB8cge5wE68OBczwOdO5RWo/feCnlAi/Ua/bw9veKaSt810ytJMK
	 arI9VYaW+Xs3q1YGgqcse2n9JGbA7Y8uQLxgP3zdwTiRwF0AIZ1lov5fgxMMkofFXN
	 sqv6XYXys4SwpVeFHvaCK15rx4qz4m5ptsJXhdVOMXgieZWvSVHGpfvW2NELoILyZO
	 /OxyVl4w/QbkY6L9Ot/zqKGkgT7PkO/JwdBOsDfa8VDnkLHxmxVRhnRDOmLtCO18Ku
	 9IeAvEPHXd3qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FFCE7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173334875360.14831.11717260245283973115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a23999fd881d9ff79ec7317eea1572653ba5cbfaabed467c27b732c574f48b
Date: Wed, 04 Dec 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733348753
