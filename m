Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0985C96
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757788794; cv=none; b=WXL1VxyNxzRnSyWlBrNsqsNHcHDn3NzMhnkYVbGkzqPnqv1XylKqrL6cd20BRXmS9/OgA4hpygBKabmtrzZfPkikyIYyzlALRbqPjdKkdWBcQp8W0OexF5o/smPQo26n8TDFX8m9Ew2FSnNE4yh25Ps/Ux9ql7pktAV5OBlcNQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757788794; c=relaxed/simple;
	bh=TDNoeeSHV+9xBsD7x396XHmMB4rah2gGMZsavFtpR9o=;
	h=To:Subject:From:Message-Id:Date; b=Nt/Fvi1J6jB7z2nveHVAG+x7LhYkVcIEm2KdCW8EqOJ/M5YFn2pm4WxldjCdvwyDWTqkR+K0tCQtSdTo7nXtRB3Q4gK5z4sBppHys+TQ6yxVhU34bv4GlXQQSQ75W2pZDVn/ifhmlchb02i3RgBmPEXu4AQn4IVhUTBQkoT9Lro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQjgbXOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQjgbXOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6412C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757788793;
	bh=TDNoeeSHV+9xBsD7x396XHmMB4rah2gGMZsavFtpR9o=;
	h=To:Subject:From:Date:From;
	b=MQjgbXOjUDCUb/8RbEiZlv+ME4MTblVpWGVo3pOv6rTBmBvH/rzDZs/tk9ku2s7Rt
	 kDfbRtqq+andyG3fStoQCLf+hPKEqOVKgB0oS/4DvMd/e3ErJj4tfSOgpCfoYNAm/1
	 SOwZOQOqUPJM1jevZ/SVi7ILulBlei8ZrxjroTr8KzuVeDtph9q0rNveWR+kNJcsGX
	 LYliJ1IK4GChg4tbCWWPdNnkuYYxin87KHj8ioRO7s9xhyjcpuvdMSnSoTHVtUt6my
	 V80LkzheLR+vuRMLqzhRPhN9KMvxKb4FMj2T/3UcHEN5mG17QNSE31gPM8TJRxWYhL
	 MYEztPu5/MZTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F76CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778879357.7141.16980799255298782263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae0881dc672cb6a0ce3c5ab16cc984e9ba7fecd3b52a925cd496abab818270d
Date: Sat, 13 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757788793
