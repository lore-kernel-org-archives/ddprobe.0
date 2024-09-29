Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298AB1362
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727585154; cv=none; b=dBkTZ3sklEa1g279h30lQyKaCKvC4tdg3BKaTsgsz3HLRr0pvQik7Ti7ztWSN3yqyTXVEr4g3FDRjCfwICg7R9MOgrubuZ0xddQEsp92jwmmV+eOF8GBcPWddBlXTVR+7Upd2NEwzvj1BLX9XmfSYAOtaZ/yloTZx7njmwee6Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727585154; c=relaxed/simple;
	bh=gSvyWMMu2pVYA9mUU/qObXRGRHvvc59hwXN3snJdL/0=;
	h=To:Subject:From:Message-Id:Date; b=GQWdR6NLl9HjlEnpNtiPVB8chSxJtJbB7q2rPTTfRtUmKx+TpzdwOJSC61StJv5V0jrZLJ8ayhJxHIfL4QZXZHGoX9RvjMZc1PCvRPsniSGjNaEDoAEs38v4CZbLZzO29K24nLvEI2nlLo4+wrVeWPpdoP4a/ITimDIkbpXzf3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAche+pD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAche+pD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DD2C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727585153;
	bh=gSvyWMMu2pVYA9mUU/qObXRGRHvvc59hwXN3snJdL/0=;
	h=To:Subject:From:Date:From;
	b=uAche+pDk0PqKPeXmCgP+5vVRYhSgIY2bZKQUp5wh7zGxnrGNHSlywYF3jnUEyegG
	 qAZJvp6HILuje3YkQ1j6eKMYcVupIdyg4rIrPTD3IzX3GgbhB+0oMitQC3A+dvzpuk
	 BrBuAADXx6xSjJacsAKWQyX5iG77eNelE2+NTj0wFZ1IqqaTFjHmo7HG0tGE6J6Oad
	 topvLczxg0pfXlAB6OJOLI/gs0b1XEhqCbfVTHuGC1YG1jMLPZnTA3t4og68zaE93E
	 VHCD4pMr/jL7bxldGIEjpDk0oD1w8yM58CCoBWRH83os7/KTOHGppBVDxMMHuvf3ks
	 jBY0tNMGFzHDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EE7CF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172758515359.3250.5916039119188999126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48566bc3fbedaa99d9e50d14c5a392617f8d6a70bb64565c4fe519288eac56d9
Date: Sun, 29 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727585153
