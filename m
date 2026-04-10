Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECC2298991
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775786254; cv=none; b=txw6zd1YBs1Oij0ZmOChM46JwD7rp7Xk2153zf3XGJ4I29ZkLxmnOxfg9ELhBsuvN/qVcmIKfU8mfrRf2/OF55/DAeNdGXp+yLSXW4yiugMSma7M8o9W5ul+Y9VfKMcT74SDhTvV2YL+KXINVDUGailXQJPXWMpXSc/wxLBAZoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775786254; c=relaxed/simple;
	bh=Rdq6zkWyM+CQxWp7SbFYpPtZe7SpERmt5WjGXSj3/7c=;
	h=To:Subject:From:Message-Id:Date; b=lK3VN5iCTOvX1FXZpCVIBz2xZm0xlLBW74zCA79kPm6MbjC7no/ElCsVoTDdS2Je6N+xn90iDC3UGZKrNvX6wm95BPpniKAmedcZbzVJPcvvZa+s0FaOvND5Li861lVNKUdXhSsSW/csdeYZZ2THvSFK5ngaGuUHqif9hZEVPqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhlEdWbA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhlEdWbA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD620C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775786253;
	bh=Rdq6zkWyM+CQxWp7SbFYpPtZe7SpERmt5WjGXSj3/7c=;
	h=To:Subject:From:Date:From;
	b=DhlEdWbAOaWQtJORSolOKk26JO+LycTK58jV2pQcGMD8jH1vkppS2RJ3x1TDLFn2Q
	 F69Jvpge1NRFKHqfKNWjVmDmpo2FKkHUMXY2STBeUiry+0tUwxYUsr/JRDJMP/kB0G
	 1njQlXKB5GqKuLIsUFIKqVEmC18EADc87q0+tQFOpiLW9ibyOj5RNa+szs0T3PHcrw
	 AS8HBr67dN6vgI/lTLkC+j8aRIKYZS1Hx3eQBgYnPekHY/EEfRrgHDj4Kx807G9Oys
	 4JASCKhgUEtnRnQJH1BJeE626Eeu+XzjrODSgCcISzUZW/8j9Zd65UaK8ycksHd7Nw
	 6QWh9CODrmP0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF77F36B97
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177578625368.2688.182136269380763756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7cc158927a9342079639ab91e08bf1ca759b2ae4c7fd0b66faa28bea9c8e4e
Date: Fri, 10 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775786253
