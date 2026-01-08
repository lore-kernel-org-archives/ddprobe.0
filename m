Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED23C29BDBD
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893634; cv=none; b=UZFx+XdTz5MqH1bCWSdmNbb2b+wWj556IJjQyKeG2epzwHlh/A0QYVLWMJpWh1EfEmrhKoRsDcmBmY+tdrw86sMO5gwNAEmvX6Gze5iUJvSz07K4oxZAdi9//s2hkCVGbqlbkOSWww0nNuJGfPAeGTYk+YGCONLs/GYVl1JSrWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893634; c=relaxed/simple;
	bh=Gd8FKGZMpMAuRsi6FERXVfVyzb3t+SihgRQwI7IAlKw=;
	h=To:Subject:From:Message-Id:Date; b=m3I0OgTbEAiDbE2YY5En+195g1fELpreOmCg18/Nq/WMuHAOUhApVQpI1c/INiSCtYeJwFkH+ibYu1IeSLNuWSVREO0L/Ai5upH+X8xLRztOln07JkMZfpYSnMd2jpsEmMBu6NIAJ87ceArzS3Ga/7m3Mct1ZkYjUORshBfBSWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFZ/iYdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFZ/iYdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06C2C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767893633;
	bh=Gd8FKGZMpMAuRsi6FERXVfVyzb3t+SihgRQwI7IAlKw=;
	h=To:Subject:From:Date:From;
	b=sFZ/iYdfAbFDemFT+BMqZqQzS4iEm1cNvD41gNDABgiWZsB9HaUcZgIQFd9Fer57i
	 RRHjrAKhJyVcmL7ZDC0tRPHAX6jzJYgkgM4qFVz+pulOQeC2v6k8wNzSMzUYLVbAgh
	 ZQml1NRKheqSLZiU2Mu+B546MwqhjM1VlfcsHtGk5a1XjeiAxueUmSFUnYBjc+tT7q
	 snqaC9zq9SefdlVkE1qWQoQyLVw9k/Lgf0bDSdp7nZb4Q1CjrPsQfow0rpUS+GWyV+
	 FoourEGZPhpW5LONteUF+5jfqujjjprVvOEQoP6/ic3C0jkufZQNjR2gmqiRz4vZ7X
	 eOpUoHx3/yULw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354BD1D482
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789363359.7221.14224157187474027688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb04e0d706feaaba7bed47ae4d8ab4933e2ddab872b9250ec67df7e54518d77
Date: Thu, 08 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767893633
