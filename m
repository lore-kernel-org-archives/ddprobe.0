Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A76363D5
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724613954; cv=none; b=CBkb8brrTY0SN/DF+90I9nzKTlD7cxAZfhnuYCX6fj8Ah9DQlPDf8SlWc/vVw8C5fBFeCKydjG/UgpSVvuYnR9RnWSvmnmgtwGOJ7Bx0ZOCkNdRIH1PJciWajRQyXCufNhtxVk8QoiDhLUOOyhV8GYyR6/s+z0RqQxfyjFtXvEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724613954; c=relaxed/simple;
	bh=H2C27nPpHAki+soa4jsmAAcoGIrojTqbnD9NYIA5XtE=;
	h=To:Subject:From:Message-Id:Date; b=Tm6W2nVgg4MU53NJvi5uM2tlr2L0Qq6pgof8Z39qoFhUZc4X82ptDKSWkOiSsCkUomLAQ6B7oNCay1oKF61WaHnbrlY0oBANPFyd3cFdySz0yPnWNq3KRVp+ZFNieVeroU2Aw34PfNmNyBKWo+lZmRoK9tDKOs8TYp1I4HsN5ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jt+nQaUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jt+nQaUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F1EC4AF09
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724613953;
	bh=H2C27nPpHAki+soa4jsmAAcoGIrojTqbnD9NYIA5XtE=;
	h=To:Subject:From:Date:From;
	b=jt+nQaUDSCvtxqgpz0zYlcelhkjrfxm7imjm1dtn1kbDb0fO4NoDtGsQEoNVnIAcn
	 K6xqMoh/2EzIN2LNSUW+39V/HSEBKuj1im/f3+NluYQrUM8nrHScyOwIM8teoSIN7v
	 oWAAXg/2BDF16ZcwZ2xjoMnqGue7UO7W5gbWC/PURDswj/UJnQz5/GJ6UzC8qXgN7S
	 9bMfnUzDiJcQC7vR+vRmcmpGDOBxDLGEvoUY/qibMLg1mHxaMQYe9FYTzzeBqHsGDL
	 NMgdCff/23vo9fH4/Zn55mKSw5beaK4iIK9kEBAvc8kYtknIhkEpYxpuGcxust7pAj
	 ZVFEZyNd/0K7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D4C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172461395359.13333.17358585748063682222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2caf5fbf29a892452f1f737dac66b47cc076ebc6f197b5c2d7a5769d6b28f0c
Date: Sun, 25 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724613953
