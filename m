Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C179B253954
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761325793; cv=none; b=uLMcj2N0Iymaj8CaKfn0eRssh+/o2kH31s/7SrmdY70n6lxZu/ceQtZ7RJOcjnn+4hKD7o6E80URw5G52a2CGzp6Ju0Boe1QfB+CYUzY0nBYCubDxBUlM7D9+hDMW+NVmwlxFpyEHqrFxQtgGtNFOo+YkJ++kR9VDBOdRjPmNJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761325793; c=relaxed/simple;
	bh=jr9zHpYvlF+qeLCqn9A/L/x4BF+eZvidodeH/oY53Go=;
	h=To:Subject:From:Message-Id:Date; b=XSmQ3te0EOmH/Xtvb0g2VRm07mlf2ERlCzLz60LbLa4MgIo5PUmUFPLWl0wE7NcvSFej12G5NRcsQDfuizGXYHR6bTkvVWWzlowpYZWnrqQT1yeqy3uAwmSrF4qB17Zczqk/4C+suIXX0Opo7VPVjUt/MZc9CE4dYp38wb5BUl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJ3RD4dE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJ3RD4dE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A1FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761325793;
	bh=jr9zHpYvlF+qeLCqn9A/L/x4BF+eZvidodeH/oY53Go=;
	h=To:Subject:From:Date:From;
	b=cJ3RD4dE8d/2AzylbEk4I2E/kp8mw0fWrbI8HOkUhukpRCDNIHNxK3KDe9BFy5j1z
	 pma/pINXLsS3Al0JAUdtHufDcHI+iY/AIra1xZWVPaonE52cQY+8TtmQmPLPgeZYFn
	 BuGNzvuTz+4MgTdkrSBimovzmkWCcM7cYGwjbxOtpH7cKIq/eGpTezMqT5/a6ynwtG
	 fdbH8JpyT+jyfm6KBaE4B9CFg86Na5GT6bWI2PqgA89g5H0bCjCk5NbNpP1+OB5WDC
	 1nd1yXRSj+kUZXgvEtA6t8KK2d8lkzwnMJLPNMrMviBe0Hr5+comiEBbyLjw8rJ5m2
	 erRzlt0np62GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D09CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132579358.12599.4143666132672292676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6216958ab70d2a930d2608e6447532f9d6e6f73be909a69bd56ecf2d9830f4
Date: Fri, 24 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761325793
