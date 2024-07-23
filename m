Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D998514F12C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721736953; cv=none; b=pWz6XEsUdKu04rlVyxJmRGeUKKQ0cW/osG8eWBvLqvVcPpPg4eQsF+cIukTbXyuhLXJrpS7AFutY8Mys7yyOW8OoyRJSU9fdkhx2qbWCk821Fmd9XyXcnAOe1f7qdjDuYODjZ5ddC88+2W4NMG69MikqiPrXoSKl4m5pSX76gfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721736953; c=relaxed/simple;
	bh=ZehyKQDBAeyKPLPIqkXXkp3cucRGdaLLEAlCT0Af5yM=;
	h=To:Subject:From:Message-Id:Date; b=MMVt3huO7JyyDp7U/IJEYUZLMsvuzmXh1HOBO6XN0EzWM1dT0BWf5yjRoHTe07iHrw24bOUO+iebfeAXFyQlGiI6NwsOUJMgbuZJr46wmf5VzdTW8QmdprbhvY6cZJFf7oOL24aukdu79XZt8QHEvOb0mjIsM23G6wcgU1k2v+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r146GsyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r146GsyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A047DC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721736953;
	bh=ZehyKQDBAeyKPLPIqkXXkp3cucRGdaLLEAlCT0Af5yM=;
	h=To:Subject:From:Date:From;
	b=r146GsyV15AGT7obd5mvXewbq0LL0JpFziwV6xl/6lUWpUYIjls2YVYkeXbaOR9d3
	 wyXFScLQWBmsK3M5XtQn0OheOngxqcI9tCOypSd6aA2tV73K6BbNsjFrEvbqDZuKy7
	 SQOfYPzyIvoKRdygwZ87e/fx1144J1s05ZgE8xMOLGTQKG7sp4eKTUsUjZwMj38gWn
	 1wHa0OwUT8Jy177E7rQaYbCTfSsOd/0jsA8qbTlMaXzx5d0X6nY4b96aEXaf5qCgqE
	 sFYQ7OxyMj5V1jkiXGqOWfbF5LGLXV8U3FgPMtznuMa1Vead+JoE6vxRr+OCB7Bt5s
	 JWvl0zsQU43eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90865C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173695358.22266.13617925408311134447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6885e1b580bf0b0138573e440137bb399731c2383de78dde26e2d350c00a10f
Date: Tue, 23 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721736953
