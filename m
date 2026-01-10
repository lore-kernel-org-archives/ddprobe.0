Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EB64A0C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768074834; cv=none; b=W7MV8CW8xlSwAIO0uERgjQqV7/eDmlgq1E5xRxpMmb315rBu9izkZyE4MlxCZu+egSKEEeLSmFb8NIZLLKJgbEJi1ErSmD03q+p0qkKurTIo7orCZs9lnVEakDtc6Obv+TplJ6o6cQsZner9Cf3sHFOh/LoJQJz5e/0caOP29/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768074834; c=relaxed/simple;
	bh=+UiiBDeadxPPGjgGNVazpMWd3i3GlVOsMgBLhBusI0E=;
	h=To:Subject:From:Message-Id:Date; b=bukOhpW/SmPH3kxqt1qCxPpYTuj02C9f9W+GpgYII7YMcvdtDy/KherWZc273+VukMdjNdNCjqqZw+IT6KCwYwda3TM1tIi1vgZbMjj1tm5lwGDu/xUN2tToVoSfttfXrmbpS9rBPvcB+Be6eifjWfEl+RLpDmVamETzPssiK1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5UlbdVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5UlbdVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768074833;
	bh=+UiiBDeadxPPGjgGNVazpMWd3i3GlVOsMgBLhBusI0E=;
	h=To:Subject:From:Date:From;
	b=o5UlbdVyHjb8m3hGt1q1Qyle3l7x33HrPnk1Iu36hJGPryju1oYbxBXswcpxZlE+I
	 Nvq52LipUOQOh+q4QCXPDuKZkWp6EPt91UHEsWAOZndi48a8I9oEGxMRWUth8XgoXH
	 jSrSMk+h02rl9QREJ00coZq6ZIo9RC1VVf1jVr9cgAojiLe6x335CwCiZ/DLUs+w5X
	 A/arhxgWvlqghdJ8a17xTseNWiJzOxoLypweNTb11bmoJVQm9FeKIVbhfXBNjGyikb
	 JftyvDxdwMk9aZk9jSYxurmvegHzFNhlXb2BkEd6kvKYJ2Gd1G+vE5gDoidh5bqwWn
	 Af8cjovOj27aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E8D232D3
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176807483357.17851.11103953153105851642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d9d72805fe7fea630e649e70f6ae823b55f2f3eac3bf80a7e2dc0a51742702
Date: Sat, 10 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768074833
