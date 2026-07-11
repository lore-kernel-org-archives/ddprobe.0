Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6543235AC3C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783753114; cv=none; b=aOAfSZCOrBVsfJy8nFVSgAGQc2ooK9H7zwHs0aWYJGhFFKlByMQ1RwSRMht7zf5B9WgM9AU8MrdeYV6wYUS9/GCWVc3wzJlIvWIJs+5+91QXruU717soqBp0rD11cimdnh4N+ejeniT7HP5d2euJ+sHPbOTchiVvpK7YfQMHorU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783753114; c=relaxed/simple;
	bh=jrE+syXkScoicKb2mivIPt0fNwU5qS6QB6IQctlHoEM=;
	h=To:Subject:From:Message-Id:Date; b=s3dGfTiyLtJnRdgBy6d/ZrPGNrotG+oJof1chWxZvRb/Ey3x2QDH+vDVSRp/2KILVZQvCxc8iOkpWVz4+40VFtjGARdXoW1LSHYRAx4oMq0ohouZWInnSAcoiHQgY50xI4DLCKyLME1r8oe6KAo6pMXyiotHmKAb2WJ6ODyGOpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpuaCQyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpuaCQyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E31BFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783753113;
	bh=jrE+syXkScoicKb2mivIPt0fNwU5qS6QB6IQctlHoEM=;
	h=To:Subject:From:Date:From;
	b=lpuaCQyCA/J/eCrd1EbCD9OEoW4RmrsxL9YmPTU/M11jLTRPp3isPTbvUTIW5KI6C
	 WDW64TIEZ+0FXcqEAc1eh8RmfZOokz4Lis8N4Coeb2Ailewa702pWktQ49EZRQLyCd
	 p5RfYB3o9cYStCPvTd4ZxHL0T2GnlrufLt49yw1cgdW+nfHgtWUEieD+6WPNLNBstE
	 40qnRWQCClZHOFxK8QplOsCZPZNDbE2qWfbsmFy+DQ+vUxNk/RE2djHh/0QII3zEtS
	 tPnvTSGr50vBwqU7Xdudtldo56zOMN5IMy1FOtd6ztTNvUJtDvbbT9HazpwObflEDp
	 wi1/Ggf7aPdhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9293C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375311373.12577.17212382284828177801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6124f974b6caae3864bd35a3a657d4cca9fe9d7c1897a4503023e96947719036
Date: Sat, 11 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783753113
