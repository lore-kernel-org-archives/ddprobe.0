Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DF01EF0BC
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737502554; cv=none; b=HzQP+2ZsqZWi+xgE5beSOj/KK8W7B8vsMoR9gp3+7AAnmeuxUUq4sogU8U965dtN7YXti7Pnl5d1de2b4xCMmPUREv51kW+fOIDe9qHJt14EZEzMKnTc9hKouYG5mJsnC6vlI0MvxAU/X/Ts8jLn8Vt6cS1TqwM5Y6j1BbJu140=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737502554; c=relaxed/simple;
	bh=QFCtContP9JPFWXbKge676xhfWOtvooUyMxJrE0LZaM=;
	h=To:Subject:From:Message-Id:Date; b=C5QfT1fv7YJJBKf7AyrwwYWHoMaGq3JtWeFBqArYhgL+1z9k3KFs6M5XfQCGAX1844k/mhLZA8iiG6YxiOYIouH6EDY0MzbAqxAWE6ZWDFTLfAKmHeWdh/B4ftd7HBJFxILyx8QfvYNozu6zn5fm9Gr+e8gGCcQDc/yAFcOVGcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psb1haC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psb1haC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96E9C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737502553;
	bh=QFCtContP9JPFWXbKge676xhfWOtvooUyMxJrE0LZaM=;
	h=To:Subject:From:Date:From;
	b=psb1haC7U1qbZ8VPI6zGUShfsoVXsQHCHW1bQitxFYdv+vk1ej9K8AsKoFtYNiDC6
	 OTyeRRpa7jo2DLXhtBfMGQ+9qrWKuXG/DVRbN/yduu+I5FCNv/AtUVJb/JCPSpu/lO
	 rZ/uf8x2l+7lzn9cOdKGny5s9iwweiJI2ueH7xqqp5E+GIV0WsCv1rLkcpBewnDOqX
	 mo5sckJSsKIelUyzFq9XwbUmxpx8BhdWAU4cjF6ylNXDW8dXgdhdOxHe4l9pCoiYF3
	 fMCfpHfmG9/BxzdIOfvVpf/DSWTherQBHlWKufDLn5DvfEmRU92EAPnE4o7sPgUFZ9
	 DBTyiflPSRJjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F39C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173750255357.16317.2695037571551347132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ca11a8b824a0a1688227ae2d4c4a071121db9e7dd56cbdcd1125fc2732385d
Date: Tue, 21 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737502553
