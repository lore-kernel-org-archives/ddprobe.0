Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286C31DE4DC
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751657994; cv=none; b=ZZFzLkceb0S2abjTz3DwpopEJQ+plWHH59fvDyxjUnNQKA4dFu5zjx38S7i7dmtSnGTUf5cPiiJI5lVJ8oA+hN7JUZP1cB9aGIxvIRuT1xnYXt6QOYvcDeez4uT7HhzMcF1MVSvLyl9tZllKT2nfQE0YRevwXfprDg39CSL8pGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751657994; c=relaxed/simple;
	bh=CAuD4gL7YNHmqkom9qdBqlcheu6xNhubriEWCxkjzps=;
	h=To:Subject:From:Message-Id:Date; b=Je+qllTCwddLC9sPMKgPGDnS2qoMPLoBGGIftS9GTKbTqlAesbbthbbT1BtDbnw09p3lb3CCjTfnVxfx4ug2FyVDW2vK7R/h/gBCS4CFLJBx5jjYWzVrg+fDROt5aAEiOYYydZRzuSa93H5VVkap+dwpAvef7HDHMwDw9CWyMsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhCwrnZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhCwrnZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0726C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751657993;
	bh=CAuD4gL7YNHmqkom9qdBqlcheu6xNhubriEWCxkjzps=;
	h=To:Subject:From:Date:From;
	b=jhCwrnZxe0hg18orenpm2ryKS/pPR1yTk4QHaQYS0tHSopi+fevJZXspR9oczoXdw
	 awKOGG8avxH6nPAoHGKRod/T9m6Ua8wPpa4ccfxhEGPsN76ths/ib5NjtRIAaMJwUn
	 tZulpuV+S3KAaNKayhWhcdZcvT6qwzAs/s3TwPpIW5bT4MnoLFgIY0SxOCVDlJNb4l
	 sFpxFtKv+7kebNZRwhe3TTkm4x39qTnmu0Jdhc8LEwSV/86854EoWljoRYp0cJIsoA
	 TfP7blYQuBrk+BXvjoRPNtDFJFjvKgpRy3rJICkP9/36yW6yC2rZXmb0LvSheBczgs
	 PZIByRo8FOyzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F6C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165799357.9457.2456597880824438917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08861ac7778232a39be9fd8a77a6803f431ce648ea79523e602efa53f7c8d92f
Date: Fri, 04 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751657993
