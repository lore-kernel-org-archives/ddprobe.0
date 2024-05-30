Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4900117C23E
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717076063; cv=none; b=j1DiSCSsgZTC0K09UqJ3huCAss6swRDLCwY9tYLNIzdyhzHWYsXLM5+PK4ikle4RUooQSvDnSYnKF0G498WmZ91x5++6sfP9RHX0jmKoeSKq1fX85O+zjMOsZkX0blg4TuaqGEYvebAlwRCn2dG6+HRSCbFmDubjGLAk2RN9Z60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717076063; c=relaxed/simple;
	bh=29nTtkSaopLs5p7VH+e/HkNC+DpszrwARiQMlLFm7NM=;
	h=To:Subject:From:Message-Id:Date; b=atbBOICrr4pINWJW48vziJs9b0TaotWlXQp/GoCwkGDHePGrhMoyUmL8B0z0mDYABqqDJV3+0kvk4U9yW4AQzcNWEFlL5aEIhKanEFBN/gXdSsBI5xmOMAt90TWBADtNzzUGlW6uBePs6Tka4gRVJGIuOFSPU4kp4VM1V3MfQ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e66fC377; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e66fC377"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D196AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717076062;
	bh=29nTtkSaopLs5p7VH+e/HkNC+DpszrwARiQMlLFm7NM=;
	h=To:Subject:From:Date:From;
	b=e66fC377OQHYtNLSe4wz9az/sS0LVrWhxhcrJIk2iV8BsxW5db9hNPhxr6+ny5MSk
	 V+3WcRv29oebgL5L+eWBMvc4rJubPWfeE2rFF3VL0IYmcmZ+sidI1GJwbctGLXoPok
	 sPmosW9xHicl59pneRG1qQ+RYacAlq1fGaG6mDbnpUwTCwudwhAkRJ5da783BHjZoL
	 XGz5UU6+LST+TPxcezYIT+7URFAMY/jvj8uL1DnJws80ErqKe01eSXkzRFIY/nq+Vi
	 K0HBBEu+GyM1DOC3Shfw/zNvP2DgoZtdnOpve29iG+bQ41ducNZO5qQPWiP6rtk/5F
	 VDZiJuO8kw6DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC867C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707606276.11531.9671677068951844554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558a3bd9f7c9fa4ca1a470ccbdd07ca82c39ad1df56099e4005d9a5572d1d0ba
Date: Thu, 30 May 2024 13:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717076062
