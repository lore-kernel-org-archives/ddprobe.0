Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B87B388862
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789227034; cv=none; b=NcU90BBr9Ho91JvoO3Evb2shdJMwHVuiBGGHqi6xTkIQBTkWp88jLuWbf4xftrdKReLhhbTSE4yEpeiouHfg2dg2LdEvhoa93Gl0QdgfN4jheOGoUQz/Q/vR6A0YbFDWQ3Lm9SvSZKGKafAC1yz1w/z6S0WUImE0v0wzxLZoQSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789227034; c=relaxed/simple;
	bh=Aw+KT9HdBJhsoumIQ2a0VF85lRVzLwu6FKsdE2oy36g=;
	h=To:Subject:From:Message-Id:Date; b=UBK8Wy5juV9yLb92tFG08ZWrCVchS9t6sCpGdwg5LS9MljuVISPuRnhU2So/LuYrpnyQTVRaj2JOFbOt1Gbc01qzfvFEuDh5GPIeOCudsDjoz/sIbSvX3GKCqN2hIrVSDiwZEdROFJiDCyOUSppc3DKhJrJm9CP785WQm424JXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSotu+Rr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSotu+Rr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B2EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789227033;
	bh=Aw+KT9HdBJhsoumIQ2a0VF85lRVzLwu6FKsdE2oy36g=;
	h=To:Subject:From:Date:From;
	b=dSotu+Rrn6XRS0tAdiMEnbAuMTGL1FLpW55cR3Wa+sxtMk7Md+YVOUX5L6V/SjOqi
	 tSNTqHk2yGPSvUdJ8IopNc0Q70XUyCaT7IU+pOEQ12Huh66NKn4jvwsO8D6vp7P8f3
	 bisqPFlxYRSw/JDiV99NQSsvRKThFOIOiUK3xJ9COVcNQBps1EPeiYOmJpXPzZAQuD
	 HXdSW2T9gCFpTSCOxHTLT73ramweF8uEdSt4TSnL/xq2iK9uTLdOauHuZQdTdvxQKu
	 pXLpEEKXolcmv4buh/1E+3hQ8gdQQO6XtPHORtJKEI6eCZ+M9rjE/HMOBrtMQaieNN
	 nQ4bU81yPm3mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC38C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922703368.23261.4530680727522938448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859f4a3fbfc95fc5b32dc07bc91ebf6a6123b5615cecc1601d677b0b289b87ac
Date: Sat, 12 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789227033
