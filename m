Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F175F39A064
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774016094; cv=none; b=WbTe6UkE9IvytVXzxbP0NetS4UcEtoLSMqo8Py84tfjTJu47DUe4x9EofuMf+3lb78vtkmzZF+d4+DDhh9UQ1BFXqRQmORCm2Ax4XsOS6YY8FnHl7Vjp7pV+O9evcHVIibiQZnQD/TNDbGPFEuXfgscvF7o2LeOYNESt1nzm5vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774016094; c=relaxed/simple;
	bh=NxOBr9kt86/c29cvP6IExvLwWhFxSRnBAIwnOxX+lbI=;
	h=To:Subject:From:Message-Id:Date; b=jxN8p70Fxd8AquA6qJ7c1sPBryXg95YVI3J2TBFR8m2WIGXXPWdunt4wbBKSSZZc1IVrRVcnV8QdqoxDjbBqO4NaBDP85474RFAbA1dQeAeXYwBkMyuaeg8ieyeObZpD5oRtv068R0tcR4OJiGNOMfx90B6U2WUJuV+S5bDBj/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNNikre3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNNikre3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D087C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774016093;
	bh=NxOBr9kt86/c29cvP6IExvLwWhFxSRnBAIwnOxX+lbI=;
	h=To:Subject:From:Date:From;
	b=YNNikre3DAossselnQQfOx1rhY9sfpUx2Sn5JMpP/T6KO0YvMSsrP39Q/lWxn2a0h
	 B3SXenvObR9kfr0DwmuYI290qhX/BtfeBsnge1hPMuLJvggaKayWVf/2MgAYQZcdfn
	 o50A2W4vP6k0rSGtgPbUSTmcLbvtrlIcB3CEPOEnxjlAmMui2oSiSR1Wn0H7xdWFZh
	 BkE3YDezLCtNxtcazfmG4R+RMKb5Kyv7m/TMiJ1ivrLrLeWWWVq4isOMhr4pHUpH1H
	 PiahI8jC+Bxn9u7SMlXBBJ1uRhcDdfJBBYO9Pi0ed0Fi1bsfMBFHjsOhb+GljE7i9n
	 3LIbzj0vgDdkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28C1098786
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401609357.9245.2543377710553213072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60464b94dcc7e8ab2d01556d0e661edb70897cfe013f17e1bd847ce45d712730
Date: Fri, 20 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774016093
