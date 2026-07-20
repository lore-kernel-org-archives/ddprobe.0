Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5634D212FAD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784510314; cv=none; b=jK3lrMgo2jRT+iTaKd80ro5a1r/Md46BrdANJfHe04XlMrxSloRCAvvtCF3Qn5usMWw0/5Eg+dWPcpQW1/XWZm5gsTIAacflmipidRElHVrKjFDSEWsPnZMh23J3aiBVqMHb5kpAAOC2jkMuaUr7QRCZwJCAZppQeD3JRJNESUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784510314; c=relaxed/simple;
	bh=n1udc0dlUXIJL9aY/Ph9YcFXMHaYT1ZON/7RToPfVw4=;
	h=To:Subject:From:Message-Id:Date; b=uV0SqEP8evfYMB7kXhA3e/gbC1/huIHCUJG5vQFfXKq1zmrjcbb+P+saUmuFXwlJllk8Jy8JY9BPpi9mKvXqzZHIXXiV97TEPCYk8EJyi2JD3nKSY+U0Y/x8M4W4b0RL2RBvrkQ51oDy+At68Ex6OjURa/vYy2JDNzg0qgUfhFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5tMH7t3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5tMH7t3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F26C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784510313;
	bh=n1udc0dlUXIJL9aY/Ph9YcFXMHaYT1ZON/7RToPfVw4=;
	h=To:Subject:From:Date:From;
	b=T5tMH7t3uqA7lJulb6v5Skz06naSyTD8l42gVPuJCDpr2fZ+Nt8Tz+r6V4fETg6EK
	 I7APysvY4GAwcenesbcroDtaZbLEdfCAkkocM6dYLZoqGugvAVRFUXHafaGasxCy/S
	 EMwFaY1XlRLP8ev36uWYjEisSMeTwWmtUzxFOqV6eZtrMPfodhpIJyPPqr7NE+vwLd
	 6Ny9yDODl3vWjB6N+VUo+Jw6euZcy4zpMESC061uhGwTuq3MCHOWAuADvdxoUEq/kW
	 Atnb/2dciaJR4mNcAzzJkmo2WIvPCdHGj6TynKISNpXv67ArP8pJ1hHYa5caz4gnnB
	 +33+bsLBrVGvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE8AC44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451031368.10972.11774592082074348382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9ec93c0fabdfd0ecd0764613243e1389f817e8a776f969e548d7e895308a4b
Date: Mon, 20 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784510313
