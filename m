Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4393326F46F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782029194; cv=none; b=Sqajo4GELPXWuhKanPhqiftX9VN3HKlhvRHstj0bXh9lnl3twsXgcCiXc7IfE2ulqf5z0mDRzPUZgKF86bi70e3/Kf6m3mGErVWx5HlHZxXfeKoo7wlrFGhdcii4jOH4AkiQx7fCiQaKg/pLb41SfxLIvWggphmfO2htVAPOoaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782029194; c=relaxed/simple;
	bh=KO0KfOGHcnQsg2ceemEQtQGS5Q7Hutsk0lh5tW/bsbY=;
	h=To:Subject:From:Message-Id:Date; b=f22iLGQnYrDSKfjSJF9fbcHxcEdwQyLvGOim5FNIoVN8UBqXQON78vAYfKYNTNbXI0TWldv3lUynYi7wwYtR5u8PGyZe7oUlp9e9nmRfUgB3oyhd1dDd5179MgodmejLqTJcT5z2sOFtuJjW84DYcCXQAfxXGLoeWtG4GpJyPIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJj9MWhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJj9MWhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D652AC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782029193;
	bh=KO0KfOGHcnQsg2ceemEQtQGS5Q7Hutsk0lh5tW/bsbY=;
	h=To:Subject:From:Date:From;
	b=EJj9MWhidtzM3TTOmIfj86Q7f7nM4EoHW6lfQBT0fWEIhKC0hS9KYd/mng3dK7Vxy
	 Q2RelaLaWJzuz4HX9B4XJNIq77Lt7u/qyQQDiTVFIR+MmJIj+qj3md28/AVKVkDsnO
	 Ervqwm5YTT8r7iG9bqEFwNWwvwrNM68KAYeZSdE8nC8N4e24Zqjh++q7ZM46ge6r9l
	 TGZNd8MetZulYHExIEf51rQ7Qem4KWwZjJ+uhVaT+GLY6AG8pU0ggk8uyY593JfbRc
	 yAXlU7lI1PHWIGS/AIwxCh/5+WjD4IEpgXOOfOJa7IRBXHT1xckUuchUUNeAyB80o4
	 3OotjuMPiBMdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78FCCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202919371.9586.4739468345810809670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e609f994fe36b2903c28aef0cacb432f61b397766ac7e8ce8c783294ef3edb99
Date: Sun, 21 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782029193
