Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE0D1B81CA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767382434; cv=none; b=j8Tp2Bb7ykuXCBG1Po7RqPz/jxl1+xvxep43Qbgt/Ai8W87/ZR3joHyXMt/WbUA+2lGw9SHHMUNAOaZGsk4gwLz6YQTLYnk2ZWiX1LfjyfVgC7J62z4DDMLjhcxtN+caDXP4rMpOQBhWeqzb3tEKjYgdPI0b+RmecTVsaO1Jem0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767382434; c=relaxed/simple;
	bh=wI/Y7x5PvnLWfgnANClu+d6FKFUzCPoiJPTkxvV7k8s=;
	h=To:Subject:From:Message-Id:Date; b=NWMd8usibl+SXIEGFxYI6XDU4sZUPU2u9WATU0NEyIwcnpVzdev6equp6M8Hew3nM1U7ADVDZhovtbCAUm7eJjoAb3q/fUi9//QhWauRtEhc2AnZQycsh6zMG9LR0qOi9gweRir9ESR18bIGas7IK9R+U4qPWPSaXQNnrtrO+i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaqPCmkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaqPCmkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A352EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767382433;
	bh=wI/Y7x5PvnLWfgnANClu+d6FKFUzCPoiJPTkxvV7k8s=;
	h=To:Subject:From:Date:From;
	b=RaqPCmkJHUMrGiq4X23tJ2YNXfm6FV0mF588tbX6x4CJfT793ik0L+VPHEjlXdFgD
	 3Ugqe1YQqIFnHPlvDmZTUa7zPEDkpkLH0w8QsLkYlT673K/OjCXQm10ngg2RSOumHe
	 Y/bPmr3lKFrj6KwJrWhqXdLNpkgALmcUyZ9dXDPIis5NPEc/a2tbwIkOeGRQHfgU7V
	 +bV9Qzdtg64lMP0WKw7YzcMLjka8ygq0jWZiZQxCa3ocIYL8zjwRfvPp7dcp0QO78M
	 87FMEN5RFQmihzeYWww2gDqhkxnveoOoyeNn5KLvzpWJ/WnvxxHpV6KVUM06BUiIUs
	 udABwjr4ZJbNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E0FA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738243357.16909.14617913706497020838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7564d742c346584ea4acba0c38e9747f36ecdb3e008f2f348a6ecf01950c18f
Date: Fri, 02 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767382433
