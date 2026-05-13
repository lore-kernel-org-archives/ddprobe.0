Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C3B2E413
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778641234; cv=none; b=ZNIIwrwh1iJ9JTbrSC+fUuWPUumF7OEIGkW+VcdhjFsrJhrEOq+hiMK0B37JA4gMSL+VW1F6et+vBMqkKl+iYO2TEqUjnbmTpbMyInC14cqM/mVo4L5yLC5R8QWxkHWR2VlEDWUf3FrSEY4JZfhzpIfFmXBSDV+j8N6B/6g5l6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778641234; c=relaxed/simple;
	bh=FZHkuIhvUDRK4CT0cclmpY6VpLPqIkzTygDPRqU36XM=;
	h=To:Subject:From:Message-Id:Date; b=nvxwn7SsjPRdebaw7INcro/4Mtj0efbF9zNXwnd1GZM2eYqfxloWH4p13Fvnf8HWc8eVK5IqPysuSrqPT4wlPykaOf5/QabCHUn620n7wLjqh4B6PA5lhEb/1oYqmEAZRoE/W0Z4wNy7+reNxmJNkEfiAq5vyKKQnGLk6H0PZos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9HGTiib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9HGTiib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EB4C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778641233;
	bh=FZHkuIhvUDRK4CT0cclmpY6VpLPqIkzTygDPRqU36XM=;
	h=To:Subject:From:Date:From;
	b=R9HGTiibuRNH7uQJiPkHGgxvgaDCHKhNdWU3NAOKzkwhPe4yntQ/p1rSmz+UjTLQ9
	 /hJxe+N1gx7Q50YB8PX0vAF4vt8FpR3sVVdmEUdp2+ivWJUYjcqvYYj35pwSphBf/R
	 OaQCv3ofGj/t2YfgOg6mtQbBDn5K/w8ingY8ysm3sEPJFEvA4scabD1d0GwXN4lk+5
	 Ga2mJAzfqPdhksxitP4emE7qs58sVYyrqNKYjG1dtjVXAhXiJE12zBl3LLAZtSmO/x
	 Eaq/cHsPanNaqtqRgGhg2KVWum3GtaBC2L1LapD/cJdAg8FxsrQ0hwJ99YeV7fdkCg
	 /MdUGpRDeTKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D83CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864123370.19931.8160174098786632837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267038f882b7dff67eb3de874b09f91f0ed6ccceea45dc2fee67be44b46c5f18
Date: Wed, 13 May 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778641233
