Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E8F18B0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765234974; cv=none; b=ZCXJkJcXuuRqi8a7X4ciJZOoq+KcXjw3l1K9jWUoEsFv6vGEk5zWZdU8QhH8MYCRXRs3T8eqMALY7od2D1E4+E2MjoZ+b2WvnBgpcf+zWQ73e/JZ32CrFWOkXAislVyAyg3MJxdlB/7lryEYEegiEMuAs5pBWzx+Q/ORFW0cyoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765234974; c=relaxed/simple;
	bh=tCK0mbuae7SOl4O20sn3Z6RHiXUVrwQlVWFdK3TTk/E=;
	h=To:Subject:From:Message-Id:Date; b=mFH3dCM/Uc9OYAySOUXql54qaxpiZfyopQgt6fdbiFi7LKUYlqh/+VpDAsoffSeyd5SSiMcyWKqzA+vgEgpFn/OkzDNQrgnNg2JBvKz5sHl2SKDFzbxhN8k3DBw08e2agiETSP5duySeXb1l7eb76o9L2D8mY3ZRkR3t6jWAw4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JorYirVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JorYirVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96A8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765234973;
	bh=tCK0mbuae7SOl4O20sn3Z6RHiXUVrwQlVWFdK3TTk/E=;
	h=To:Subject:From:Date:From;
	b=JorYirVIfOFtA1AzI3zDs+k8OJmGWuAQnfx50HnluoNw588XM4V6TguTlADqkJlpe
	 gM5I1cRbT68W33NXQMQAgbT41+GR0Z2Ktqy3mTUPwXqhf/a3ynJccSu551T1aKQtFO
	 Fs28nZW+vvB6CO+/GuX0sTG1e7WaftZSDBNSbObuWsUl9NaKpHMNgr/Xw06l+H5GkS
	 nIBCDeMlaMcB6SGWn07lVQHyprKYMIdLYpx8kkflYvN+5q2gEgCACscC/h1A5f7UuT
	 ni50P1xjg9CUcc9IAULMqebcXntFMjk7NntWh7C19r35Q6+6w+GVOqZvD50sGvQ9BF
	 dqpTf8ROeC8mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C63D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523497359.15904.1185462760848699923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0fa965cbadc91a6d19b88fdff59164077bf1d52e40cc3835ad91812e9a4a68
Date: Mon, 08 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765234973
