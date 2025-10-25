Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349F3282EE
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761371994; cv=none; b=hS2NAt3WNv3M0XO1snQmqjjqs4R2O4CUGqgSlLezcBsG9anSM/WBkmpOWBwkXa7eGc0TEvYJXb49EPokQgzgEMeEGgIhBxslXktJMTrFMhmhVGfPbQbKErBDiE9qaZtLR9W29CdiUTW4O6ud1Rb6DDNHwYs0JQhNZqd7gmD322g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761371994; c=relaxed/simple;
	bh=gUnAmVnFPm/Em0vxvwNl2FPKMzUDAwchnJ68/NVXJEo=;
	h=To:Subject:From:Message-Id:Date; b=tQm/+ebC2x9y+Jb0J5tAzbjNs/9N4uS7eWSpX4VDnbWvNz6pEKUymkpHHc9bdn71BJYBvBK2vwyuEJiDd0nclX8QHhbrSwOnJvUMQPN2Kb+hIQdN0+y9f7CxN/F93fwU9h+jvOPY1zmpibcAhW/X0/N+DKAkoEcayT9Kwi3JK1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEuD3hC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEuD3hC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC51C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761371993;
	bh=gUnAmVnFPm/Em0vxvwNl2FPKMzUDAwchnJ68/NVXJEo=;
	h=To:Subject:From:Date:From;
	b=nEuD3hC5S2LwNkUPraz14GCGn8/pGI32vyQ1FwdAfVR2UlJ6oIDTq7ih9srRovmqU
	 VQBOdfq02H1juFR+ux8Yqfa8shg7Wupm2mY7HT+k9NXKwFZBD8ahtB9mNlG60uyRzi
	 WFftuzfHnaT7WJ/WyTVoeIjyjsuhhYs9MN2ReX59lHh2YN8PV7gAOywo0gIS8JUlu8
	 XZqMcwxYkeGA3AQMf6WJlDqCav/Vv9fbNLUOMpKNtaL1EngGKjwUwX4uXrGIciHbHt
	 nuVS2U2VN3H69H/vqwPh92zf3gL8PZOj2sbsjozkWbCGQLlNAysz/5gs5avkanBYOR
	 b4wrQ0i2SsV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E9CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137199358.26415.15862981795160913951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b4ffe6e0784e2c8b668ff38e73a6b10ee3764d8c26d1f8eea63720baadeca5
Date: Sat, 25 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761371993
