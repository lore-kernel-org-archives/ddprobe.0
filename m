Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8A93921DF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773216294; cv=none; b=feUycSl+iJN7PgKl4lEoxKaBLUJ6MWUOrvk1ZO3jhf27VbCJELfe1SANYW6/l4CcVqNs2g6EnXsDtmJtpwMhws9n51YPBKWHIlGLuFZDxMOaniasDA3aRciIqeGzAakBCRIVulJn3qUrFdSac0lPWKOWM+xtAfpF1DLcA7gBSns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773216294; c=relaxed/simple;
	bh=sDTW1q4Bc2uVGqYMQv9ncvx3+XvTXrVSMqpFFYnN6Ig=;
	h=To:Subject:From:Message-Id:Date; b=YI0zk6H2dqTHM0mHBsuGV6n+6v12lcx9tyZFYUE5VnFX1ZuCPnOG9sVA0XVNonuBem8rgdI+WEarBGM9DkELcT7XtC2SsJ+WPw16WgvhpCUuWkxc/45xs8q7v/cLW8BQx/oRcg2siA4I3XFVbILNv5m3BZGQXZ5W9d/lNHz6pL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8/648Id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8/648Id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA868C2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773216293;
	bh=sDTW1q4Bc2uVGqYMQv9ncvx3+XvTXrVSMqpFFYnN6Ig=;
	h=To:Subject:From:Date:From;
	b=b8/648Idzi+fTUsEQRbxHEeyu2aWeSngw0COyOD6dnwy22rvzo/jYS1J8FC3czayu
	 X+iaggeHc4ANKgfd+FIlUdvmK4OdZx3qQI+Qy2JxBQR+Ls+5em7/msKJvN9WwpV3ES
	 wAOS9LK+KEcsjBSbJzhIIFiLyD9cf/DbaMXYhqkP6cExYO3n+KqcjH2bERDgi53RUg
	 PXnBtpY0kXUiscAEx4RFS2RaLe0Bq/j/iOgAzSwUziS4pCSG7BifCjoABHTTgt4BgR
	 WjrrDEOcBZ3c5nqoKdICND0FsRGUzpNLjv+UaODzTFM1b9cT6Y6FmqzFv5yiSQeSQP
	 c7XnSLyoG3/BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F09FD064E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321629362.31498.3060610721416155290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ba20a5b52da3d03e2b3c54273d15b2dc2cbe37e0fe4db6b715aa4c5c027ee2
Date: Wed, 11 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773216293
