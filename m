Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D916124468D
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757845793; cv=none; b=q5oQfICC/XTpBEJRfjUMHMM9RBWFIZLogQqgALGg2t+4c5y80jFeLJdQ5TS94zMI+SjwC171k/thWH4E2pZN5+o54f1lmDxrCxRh25qxhN4I1ECPon7Q+Cw19EEpuZAEQpnsDFhl26RrCcXtybHKY3aORFyeJzVrRehVNH+8WTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757845793; c=relaxed/simple;
	bh=1sebCbWSrRbiobE7cAAaxR9Vkm/Ve9tpDXrihG1y40I=;
	h=To:Subject:From:Message-Id:Date; b=LM5XFiCIMXoHiQs5zU7q1d7VDfVbGTgor4apxUL4P+TPU8N0X2Vcgu4BxUvr5QsfNHagCzin+JCoeJOJd7Y/Sc/AyGk1zz1U8RR/9J4eDxZDq6gGMhzZfgwASlH/cvLs2FxisWHrnhkdyotgqg2lEsX7XlIjEQbBI/IkaHJfSk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fm7tYzNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fm7tYzNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7720C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757845793;
	bh=1sebCbWSrRbiobE7cAAaxR9Vkm/Ve9tpDXrihG1y40I=;
	h=To:Subject:From:Date:From;
	b=Fm7tYzNwgtPcRHZH6yuJXoBWVIZsbZVIO4eq6kyA6YzLoAY4qMDggY8Lw0wsWLoDj
	 kt/OduhEM+mVmMIthsbrto1/HvbvpHB0RndyuPRrp8dM3Pi0g5IaHgo9ms32npNoYB
	 oXnV/tr+yJ2kpIFpPPblxBOjR23eMOa5wbronZm4vDZtg5E+wi1iYVCEZEWie32YgQ
	 vuLhftgsHBOPNigOb2IfYZ0PvxLfvkFBLVFE0+0U5mIXyIyoBhkjn5KbG/ZETnElzo
	 d8AAboIhcu49vHlLM4g6Fvm1pwkx/qBkkwvVRQRvr7/CGWZgNXM4w8eoOdca7e3ByH
	 zwZcqJ4wTNqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92493CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784579358.7048.4295085611065604234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e678578b9a04b1ccf4688bf22c420a14cbc88de9e973e7d05d30aaa26b178357
Date: Sun, 14 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757845793
