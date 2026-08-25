Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5579A3C1D5F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787640634; cv=none; b=ChXseyovhJZ5o0TKD/cYo+VytjRyiUjYuiTzNtc1QoO5p8DC15xa5yIYlq6+49xDCVAb3IcUxBuDhn9GMtlzgIwDaKNEYFLjOQLDJr05Z5rjtPjVmq8cM474jKzRfklMtS1M2WwA/NayOz+yMD+O+DIm7kF9d9AHyC2zj0S/BHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787640634; c=relaxed/simple;
	bh=F3loOeqCJ61xhNEBduCXsxDwBeyA0wqQapo8H9vWF0I=;
	h=To:Subject:From:Message-Id:Date; b=aXA1vAlu0F1hl9s7OiZf1+U/h9BXeSmQM/itJ8rR8MB8HGE7v0pUomlOxQmVX3Oh4lj96qdUPleKIYNuPL17J53qihAZLg28UbzOAw45Xis1M77TXyezUr/gcahir15dc9K+va1UoTOQ8sx/5IqXV6wPLxb5Urw3kedMFyo5Re4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7RiLRMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7RiLRMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2B9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787640633;
	bh=F3loOeqCJ61xhNEBduCXsxDwBeyA0wqQapo8H9vWF0I=;
	h=To:Subject:From:Date:From;
	b=E7RiLRMG0r0IEZhxVvMSbW2c1J4EZgoiPksLOk3Xw/TKayb7EvCxm34y7E4Pvnt3S
	 Mf2QVJR/JH+4q516c6DZ5GvzFnM6bLJkyUB+Cs71Y7StTzalbT3T8AjPS06bzDUQ92
	 I0oEmAmawbpNk1jLImysN8mCpb4HGTZEiAt5szpQrhYnRn8jfjMRytYSgzDSRaha3M
	 IPt1yzfGfQM1PxC2GhgzcipwSzebAesa3B+8AskF6XN5ZJQKa/b0edbZKjmvsN6fE+
	 iaxqULmRip1WGqSzmAiyBkbyTb9Tm6JWsMp5G/OhlMjKrqxthCx3SDRHxmNhDI9qEJ
	 z1huVkshIt3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB603C5DF94
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764063369.15054.3008168355188662831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8916e00553ae333825efa3cc836df2a473dbd6482f13a1f42f66a2e5c911d9ec
Date: Tue, 25 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787640633
