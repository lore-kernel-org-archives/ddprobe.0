Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85C03F65EA
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779370834; cv=none; b=bCLCwvC0Ib7pHS4u+SKHbsPnhTJ9btR17UFki9XflsTai905Ozibp/FppJ0bM4DGjskrHjZCLVoFYFZtd6/bT97B/uGz8/ycM2iDV/Ykp4WvsmZlbfjj6bTYwzK0G8TGmbXA/RrLHd2v4HMl/EOBqgAc1ztiMcUNen/dFS/MBd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779370834; c=relaxed/simple;
	bh=tXHu1fTh8eFMySYJ7OO4pxT62JqueG1ncD7J7Lwgf+Q=;
	h=To:Subject:From:Message-Id:Date; b=dSilSDnv9/5P8WQsuHDca/edH5Tv91tMqUp6btiO32E3Ob2nGch9zi/xuJcJp58F6qiUMPnjDtq6Fd8cmQVlfM/0ueZQ9aED157JjykKqF7JY39hOySSBLcQM1CMjurcNjPM8IcyPprGH+cGHXwfWhdXBAx0DuBS1ylCWQ3hxJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPx0MK9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPx0MK9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 008F1C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779370834;
	bh=tXHu1fTh8eFMySYJ7OO4pxT62JqueG1ncD7J7Lwgf+Q=;
	h=To:Subject:From:Date:From;
	b=dPx0MK9EFbBtpxREE8Cbih5zsVlXCO5/3KZ+u/fuDugo92D9wi0nJ602g0JwemOT3
	 31mDNclq5/EVHz/xQXVc/74S2VfrB1JTLbU8TMGbz7Fub4KrqbzB6PphHpv9ykKBMk
	 AXx5n7LfxkjepPDLcCGLWR7CqwJrmBCKMbBrHPu/Yu6cIj1zFJ9Bi9/VtzIdMHzDUu
	 pl6Tss0JgopgcUYdNJe6jPmVUIVTXNWNhAtccSZaxVw7owqb2VsUGeKzr7rUXQY8dq
	 nMlAwEpobjbqBHL40if+t8mRCeknCL0VtgbHnAp4b4y15C//B6NGlN4sBRa/I2ksSa
	 AI+0vqV79zmhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE247CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937083376.31432.16816993285915317683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdee098c71c999b109510f57b8ed20c0f41555368a8d6f75d9b630a44014339
Date: Thu, 21 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779370833
