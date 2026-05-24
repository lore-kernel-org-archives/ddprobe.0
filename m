Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EA817C220
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779583954; cv=none; b=YssxxFLjiSTKg/+Pe8+HgDhpKPRVKUU/qN81PlGeGmy7Fxf7JnmJH50GWh92qMB+MjOpeB4xjquCF+r7+0sGMp/RO/kpKGP1rumhA/Y9BXXKgitwm3jipfuJHpH8KN+OVWC/nCYqp8Ilx5s5rqN0i9r+tcMUOkuj7yHCLYCPPm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779583954; c=relaxed/simple;
	bh=+FQ3bNFzvsx1MEIGzz4XS9ifhDa8RPc1pm/JFUjrcYE=;
	h=To:Subject:From:Message-Id:Date; b=GMRxMRQWda6sDYfawsz2DGtoHocYalNjyXmzOpY3qQqC9AhxHrserXlvUD1ILkbivBQf3vg4SkyDowQCzjSWrtiRdnq4vEHtqc8PkbsT+BK/Jvrp+GCLns3mUBT5JRqk6mOXV01LPtRCXoZeTOWLL4a4RnAeIIaHQNk2ubQgwp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8JRyU6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8JRyU6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB42C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779583953;
	bh=+FQ3bNFzvsx1MEIGzz4XS9ifhDa8RPc1pm/JFUjrcYE=;
	h=To:Subject:From:Date:From;
	b=Q8JRyU6LXSaPUGI5qF7AQJzhUjsp9jhaBzNngp08ZF1CvZ3XAg2IUd1J3ICyn5XlN
	 anS8SBFtsmbNsSqfruAopCItNA9OU1q7XEWAPx1vLhpHjSKBu3HWgtt8lBk6mwNgUZ
	 PaXUkhB7MJc7Ws/CgoZbDyDTYD6/OmjeS+DbmmChzj4Yy4EWeopx7aUAGnEWrLqc7n
	 8pXLGlMiYZDvj9MDZPWxrdBM9P/6xCGN4Jn40OLbzcedPeK/fCyDaaSnfVVZMjWSWk
	 u65z5IWOXbZs0Xt759JcX0eUDfMSbo++t602FZ+EeTR3c2m27H68i6ETuBuAlPyBnt
	 x4mpcSghKtuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD94CCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 00:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177958395368.5640.7835225108570781426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248a0de551729e02519d54b25b1910e9a8345639985fb4c0799550791999fd58
Date: Sun, 24 May 2026 00:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779583953
