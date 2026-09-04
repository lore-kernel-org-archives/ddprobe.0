Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8F83B7A8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788530434; cv=none; b=HyB1WAq5cMKZYAUwXiKa7UbY4/dJ6YXDQMsOE6SAZ3hS1vv4I/bsjRYDfWMd+qeOC9k6M4uQMOhRXkB+xQcKUpd3f6xUGpygLTTW5HeUK6s7AVtPTu6Us8Y7U10OFIyjn7/1mM3dT7MBCnr4SKiz5LFrP8qAGSanEWicRyrNf1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788530434; c=relaxed/simple;
	bh=vswrHVCANznrZsiMIOLtT4ZsSBMWskUfSzZ/zuvM3Dk=;
	h=To:Subject:From:Message-Id:Date; b=imGMPaLLceVbVYEZDfIKFuZkTUmHWTHnMI+CNag7C4cKDf7+CVtcPPXQPrwctcBZwOmsIzSaKqsCSpcoORAJoeYARzEs904q20BBMs9zuEmFP5UauxvoRCejUpndVFz9E9sxolByXwCORxcxyhHszPsywKzCMXR8KpLtnGEcQ10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqa7yoLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqa7yoLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8EBC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788530433;
	bh=vswrHVCANznrZsiMIOLtT4ZsSBMWskUfSzZ/zuvM3Dk=;
	h=To:Subject:From:Date:From;
	b=jqa7yoLhNZ+SajDI2aBfjJxecyRzTQ7cBK7Y69rCUksykEQdWf3Rza/1bm7YbPf6A
	 EuZ/lmcCEVgBj9p65ZNT9q618kWxO3ATyjc2Qivbm94ZeWx/0IeV19NbvErAemQazc
	 /C9YQ/9qlHbnsHwoIiybyrs+LQvk1npCge/7m8zw/wSGCOn8MdaO/UlzPO1rXnpVlp
	 o37Vp0i70beQgUca6yv0gc47y0E6/M0fR9tHnKxIM6y9bk1+T3mp0z3mZFh+O+pLi4
	 NexRIrBuQRebP+2aiu9Tv8sXodc6R+iEortkC8KBEWmc4Hu4Gmn6ebltB+ltsOEbkD
	 mpAUauOKwOEyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB07C61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853043370.2703.12822244779336907612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b3e5cfbf5f952336854d7a20d2ed7a38411f59893d23e6968b17bd2ecf832b
Date: Fri, 04 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788530433
