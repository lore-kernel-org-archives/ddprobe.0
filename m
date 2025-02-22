Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B74B1EEA33
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740219534; cv=none; b=n97zwAjIWCQs7SOmOMaZY+YQ1/9SXotkWKOcpXxmkGMFA4F5Gy+vaAssweApJhV9/lMTe6yM7MzOrik497CXNnthTsM8YMZWp6OQmH5CZ/sBG1py7NPK/g5/l82RlrYrltFvSCweWZk/4dC+1Agv12mhwI+hsNewXAHfy1smw8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740219534; c=relaxed/simple;
	bh=6C3uMafWZruCRnujGy49+861vcTrZIuzS+G5z5XcUBE=;
	h=To:Subject:From:Message-Id:Date; b=lXep8U+OAKmjqinMFbJUy5HB0rxjm9HeucKDqDcDxywB1er4PPbMgK8rpBeEwYiioaUiPMLIgoVQexDFXWrOyMw4MASo1FoWlEBXQouhdMN4v0clE5+JZRDAfsgpZHhBTeyJAGR4FQJSoH0lm+yHbDilBao8Jww1JPnV49k3KVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWChn2pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWChn2pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87DDC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740219533;
	bh=6C3uMafWZruCRnujGy49+861vcTrZIuzS+G5z5XcUBE=;
	h=To:Subject:From:Date:From;
	b=FWChn2pp1vEy77JLpg4n59tUpJLvL4/6PbNL2qRRorrGbQP7gl/wXeOTUBQPTrL+q
	 Gvvzbdpk47sAMexV2Uv82VjqdYs/woZjkP2ugWSOTNyc5pOuwxEjDSEsnGjlnZxqZ3
	 gNLCvw5+Hwd9JWGXlhGNRVsH50egx9Fdrv4J2OvyhgLDqBQcRT+gLXin5S84DVauUK
	 NkOwB/yWtHSpBw019ZWCc5k7Q9xN8di+URpQx+rwbtQFBYSAwJLBdJ5k/RjCDLnzNa
	 EQ+9Urb/GJdB+g4MY8fycBRbWfHf5MfZDkw41o9gtwTIOVBpUJqCy4foBTeQiRybzM
	 B3DqBsVh/y8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D06C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174021953364.18365.16118653237519880557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1378f1cf1560f0ac19e615d2f0b0c820612600b28d77f21861be17265899087e
Date: Sat, 22 Feb 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740219533
