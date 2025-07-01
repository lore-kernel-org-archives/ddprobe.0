Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0CA1CAB3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751332194; cv=none; b=qz4EvTkQbo6y+Z6L2Tl/85A4QA0v5eapWmcbBm1HWxWZuIYn9o3xmqO7dwfU7eiiImf/4aK3RY+lY8KFSYZP7O+7MzdWMZnT1t4lC0wHp7HO3+PtJxjXTj4/qorX2zBcnR0sWJjo8izZE3AsPiHcxYqppX/28sTesGYvlsIDms8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751332194; c=relaxed/simple;
	bh=mFKoLsTekRsjKxEHcItys9WM53VYNvvp55lohult8/k=;
	h=To:Subject:From:Message-Id:Date; b=t3RruyyARfwv9qDd5wS6gY9Rw4JflqjmVx2r0fhYXQQ7/llF8auf56TvpIBmbHHqksGaHM2fycErngkUM/j1y/F3kRdQbesuIaffU+QILpfn5Q6vo6c2sA9F6T6D6zDQ6QWmJjEpsAKkp28huNXWJDNfAFnZqTH5seENVIbZODQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMWfas8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMWfas8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751332193;
	bh=mFKoLsTekRsjKxEHcItys9WM53VYNvvp55lohult8/k=;
	h=To:Subject:From:Date:From;
	b=uMWfas8SaZ9VSxpdbF3Kwgpq9HuiskYrQIk/UW4L0DrNSZ+aYOqDo/GSWDRfvTDsP
	 Gg2F4Tys6a5BIChA9AIamg1qviM+SbOvHiAg2lwzcjehopQb5G52cxnIk8ow/JXcfD
	 u81c5AJFQg858iK0WWws0tEPxQmC17qZfEkexz4ARJmuThWzyhogJd2fc2z4Sj+BN4
	 Sxhnop2eOp3rJE+33ztmABgETKjHcSsWL0C+QroWw7XBJ0Kl3Cd70y6miiwa6J7UMq
	 cw0kMdrq/RSbmN5sgGZYMFjuxoAxJCoj0s+l4Swp5XILODiobSmF9dPgPVjeLHupKr
	 WvuMx2qA+C6AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91878C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133219357.15504.2053022926851081613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53b109007c09b1a0fbfad5635d7f63ce627bbddaf89496cd43d66bb265e5f45
Date: Tue, 01 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751332193
