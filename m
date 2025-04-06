Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61131C8E0
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743943794; cv=none; b=WKac68/awWCFR0h/QSaYGirSJREFQko/P8hIh6qWLIJbbDXQx5xuJObbW7AosqQWGg/Jzdhd5zELyFAih2Ljp5AxBeBtqjVCAAXf+TJiWbApQVhqEmrHxFSq1djZ0sCacr78ZETYAUsEYpL2SNLmLFIN5XRdRRLrcVCg1cEkJ1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743943794; c=relaxed/simple;
	bh=zogKd2E/JYJOAw+hJrQaJ7qXaP4IxQY+vFNImRYM/aM=;
	h=To:Subject:From:Message-Id:Date; b=AIgUaI8WX7QW1MIPXCWvABLlx4HiZwcAxCstP4x3T+fNPZyrZdctwEK4yvFhNQ042XSVX0oOQNW1c1vohsuajvfJY6cOV4snQ5yPTZ6PIA+AdYhH3nw+RIx7eDcKxViOfoOY4qLm5GDOBQH3c9lsTLueEEdV2XI1jU8EFxpg278=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2A9ZMr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2A9ZMr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63E1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743943793;
	bh=zogKd2E/JYJOAw+hJrQaJ7qXaP4IxQY+vFNImRYM/aM=;
	h=To:Subject:From:Date:From;
	b=S2A9ZMr484+NcOyKXnFABxw0omvi8U3TqwPLnxS6vvMc3i8DH/xSuIV9n6Z3iIfRG
	 8vFWkFaNru50xwrH3fNGbAgh2IgqEL8+rP42chzXLBLX7GRDAbkIvo3B1204LYckOn
	 gNTUCL5LW1GxptVkc7sfXuzgkkceqIQQoI8yUPhqduYBfqJIyx6Kyq+mlY1Fb1Af4n
	 gouOxf318bnNlVxV5zmsv1a4HAsiVnIgNrAO1uPHDi7DFBzOViPSorjmH8owiAMnxL
	 fOKba9wIiwF8lDEgEdSI0NERCMpGlthi85Qu+nVi7mcMnQMjew3WXtvN+OwZWFbLLp
	 XOu82xcsAehIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2ADC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394379364.30051.12592931201384534248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd38036db34f1645a34403f4c0fa4e8fab9c80d3b5a65abbf03d14db84da0c7e
Date: Sun, 06 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743943793
