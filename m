Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502BD3A6405
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781444794; cv=none; b=ZYJgDlMAVMevUcrPOLpi8Rr44Uor+AQKHHYHqDS+Bg6t0slL/X5tVZKWAY2I0ZkaYlfoV2orIgaugAHwB37A4EkQC1vLBcqExjJl8RIOSMNFSIPn4jNHXHo4ibLYKXP9NCxEDOfWwq9CTZCR69XFChNvSWaI9eH+pfxQsCwQSG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781444794; c=relaxed/simple;
	bh=QID3f4KnkeHVnAwuNZGFC505Nb0JlyS3rl+sZyktWN0=;
	h=To:Subject:From:Message-Id:Date; b=cec8n0miK2Vl6BBdXJqSRi9VA090r0lfMRxEiJDv+xs7QDipVTJsvuHKg0KSP3pUvzeSuO46wfpqo8HUp8sfFj2/DOXgfFJs6sEzQI6Nfx4W8ocvWLxHsrYpk1bUWCmkMFotMjdcta/h3AjsirVPazsMi8wk5Tzs6eU0hqQzD9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTk4HFix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTk4HFix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEC6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781444793;
	bh=QID3f4KnkeHVnAwuNZGFC505Nb0JlyS3rl+sZyktWN0=;
	h=To:Subject:From:Date:From;
	b=QTk4HFixK0RXG/yXqflqa/qDEAo7zW3XadYHmGMiRHsUr2xqUFklGsGBMhVogAFUZ
	 StK8H5RsOtLEcEbczFToBwvYWCQU3acpKQQYSE+etuFGUpJS991b3CQMSYL5qY1LvR
	 6B6Ja98gJKIZJBNd55AYXzm8OAZy4Zh09Cf9XLJxbBgeDUPD0z8p3BRMmo0CSCm7M4
	 PS0rWGWfgB22pgX4B3XcVVkt5359WKWpCDYRsUw2SHIqFXMozB5xbZL9wiC41RbJ/5
	 edkVoKmdNcogsrPY07xkrVLmIhrfnwK7k17F3+8ldYldFPrWhyABVzlUfmMQUrbP9q
	 s8JgOdNJThLhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C000FCD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 13:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144479373.11269.16466810893721840332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1e318e16d19167c0813e31fbfbc0b315d541de0dfb09137a442c6659bd09b1
Date: Sun, 14 Jun 2026 13:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781444793
