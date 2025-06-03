Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B890231845
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748959796; cv=none; b=KB+SedKEMBs8R0pyGMKrIR83W8D68kvdG2OPsFh439RVZEGhB6DVci0ANNvftdhtO970RTn26j/1aROJGPT0nStHqKyyPlDbfoDpp3QxknhXMqJj73kSTEJ9ZDTMzk+VkeytmzYvgoElKTr+NFibxLB28felCf7rQ2mcJ8EjyME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748959796; c=relaxed/simple;
	bh=CnPs3g4qEohHbGCVbaF+mLGtU58apb1CZkIYpZ6YQdg=;
	h=To:Subject:From:Message-Id:Date; b=MJV2i7Zf6HNes58eZycTqhwBFNDSwKD7bLBghQRc6HnCiiAggkr0wZoxce05RJ/ML7KD5aEY9e2pYSvtY+aRIfqfdgfOrMxRhT/VjQEUT72Z+cEG4+4OjqBqD1didFhBhwBxla3h7VZulhvapahQtmLLJtNuYg9PP4NcvAt2VtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckITsfbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckITsfbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F260C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748959793;
	bh=CnPs3g4qEohHbGCVbaF+mLGtU58apb1CZkIYpZ6YQdg=;
	h=To:Subject:From:Date:From;
	b=ckITsfbdSfQV5WW6swI48CxXQwKrruTSyEcGgcaFpjGpgDCC6SgGdD2jLmLNeUsRK
	 XwFFaBR4WzL7Sl+nAccs6chAFavHslaK4N4ruxIW/9Q5SL388Syrev73vK6z2ffYAb
	 NRupCFR2I1GKiWpjmzzjdtAJ9BbcriP/uue8HKfo1GoCN92I9ph6mdFepVbMx0u6N6
	 4Eepuwy4VJmvUFho/XI7vvk+HHLXX5be0f98lv7NPEndi0wgcG+JLP0mA2YV3rm7WZ
	 I2N8hRuqUC23CT3lsxeVpr0gx7lIIf8bbgShZtuPvHdJTlMYsdkzxIbZ40kC2CWMwq
	 zHHgrr85P9MVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90013C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895979358.19265.2002606321111882030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384c87b8f40f28371e0ca903be6683451b5ee3611a7808aaf416fca26a2713a0
Date: Tue, 03 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748959793
