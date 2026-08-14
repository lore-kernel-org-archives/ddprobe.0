Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAA548988A
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786724434; cv=none; b=S5bIz+Knt3fXqhDeX3HPgo4jeacgKJo3FPcrH1z4fM08OLugOBKT12Y4KQd1ciXlf1F+OZyb504UJZZA8vt9a6a67ftRLNQ28+scmaUH/Keuq89S1Rd+AIlumTfT5yXI1lK1hW3/6tv3Ad+/3375j7F0EDk6ItOqAJy/xoP+LI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786724434; c=relaxed/simple;
	bh=KDyuvLzuhl9aX8zF9XNLzYYEUpp2tVqJTHJVEhCD1ns=;
	h=To:Subject:From:Message-Id:Date; b=MAKUyJj8GuqxCfk2tWSqM/p6nk+ldbbT3bdinIiLkFaco+8if9Rdb+ycvXsuu3Gl/Cu8mvi4ykbRjXJk4fQTla1rhNV59DQNqc/YOXXXeWQGPitDS2rkZSqFHEhTyEMa93fNXIg7UqQ7GqkoAeGQ+AeeKD0Hftwypw+nDz34sq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BO6W87dS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BO6W87dS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2D7C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786724433;
	bh=KDyuvLzuhl9aX8zF9XNLzYYEUpp2tVqJTHJVEhCD1ns=;
	h=To:Subject:From:Date:From;
	b=BO6W87dSQHl+iCHzt5Q6wa/wU3x1r2h/w+/Dd+zKykFVSV9Z+bw7oetR6SwcknNoO
	 yG1qpBexXOhqOUrDijTQaxRgYjhEG9ds6K2YOgtF79CvhZVl+tnV2zn0sLbZzTWRUQ
	 IeVTA6mMQdEcoxLG4pBL8j1d8a7mwPn6ckhZbqxC/bis8beTFKoUgO30s6qqceAUxs
	 Qfk+zbvz0nQ8murFNeXPVk7tZV0MhQIRtncHklkt6WwEOb5kncVp7JjQCjhozJNIw+
	 ElXAp3HYds0p/x3/cVuD/ysuLG2I3ihiNi3BruTozYuncTWqpkBqOvQaci0Xicaubs
	 ieEOXVVagzkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EEBC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178672443368.9524.6664151416090485158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ff48b58544959fbbbb0188d83d3b0c7a02065055b5ab8b2f4c9f6331257045
Date: Fri, 14 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786724433
