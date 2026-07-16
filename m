Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4904339DBCF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784221714; cv=none; b=JMqIJ/aEUFr6rtmaye3Lr8Ka+kW/rCs3ZCsnNafPOB0rcDCxjokzMhnHUVP0o5mJgGjNU441eelyzC0J6mgDj4XnhtZli0lcGgVgswji6mR/55DVp9lSycbWOvPmQ7NQ4Du2i1VTiKLmc06njfqT+B9WqDMjKho8yDe59uWfmOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784221714; c=relaxed/simple;
	bh=WN++zF0MXPBgG4SFy2Oqv8/Gfoqk4NV0SUHzuv1XfAU=;
	h=To:Subject:From:Message-Id:Date; b=DE4fXlhZi6z1XDgrJNLx4/m0jIPTsrKvUzOZCjXOICb2VLrM3gp/o7kEGgMtxIXTgG41SPXGXe+7GxUntKPlmPVFPK9Ai+OovaYcW6zK1O549QAG1zSZ5suoLT+yOL5FVnnW4m8f0c8Y/t5o5RkuMAFwqNB71AoKcxQlMYMkdGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCLI3LwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCLI3LwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8CBC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784221713;
	bh=WN++zF0MXPBgG4SFy2Oqv8/Gfoqk4NV0SUHzuv1XfAU=;
	h=To:Subject:From:Date:From;
	b=UCLI3LwUgRw9V4GkkbknGhC00ABtA9rTA8GxY30xmCO3oHGhxlBlhg23lv4A+B1HI
	 anv5II1Kz8YCDAyDGNuY3wvO1/45BAHup75TEoG6GCMaXheOVhlXoXvRNGfvDdvbTP
	 DWOe5x2Rnt9XK0HXJD1A04DmBg7fZzcIlsgai/sP7UQ/r3gTwyos1lYOi4LSVlcOzn
	 E4M1Gp2mVWNs6wSAPRtxpCJ4Qnolnc9ze/ZjHLhbC+6jQWAogSICD29ZOzDsmA41pF
	 4MUiB0mWzYPSQ53ccNpT1FLWHq/hdCDQnR5kyBMfZTwiNlIa5HxEOQ1KKDdLvOOpbC
	 nY8sB2HbPkqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA550C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422171368.2099.9325720463626094034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20438fbfdf1ac60fb040c7591b56c472492b8b0f0678dc05f332af43886e7fa5
Date: Thu, 16 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784221713
