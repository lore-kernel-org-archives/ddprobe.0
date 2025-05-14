Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FB513C8E8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747210794; cv=none; b=SCaCN6CG8DRJE0XgS6270X19sdwNZU3Ef0Eex71NHQHJfu1mt9cNcm4z1WsMRxheXBa97u2JtLSwSmUvKpQwMssyUDqIKOlh/DMeEXZSmTARzT+JXmQ+6zWQIRWhV1OLkAFS/lx+T6Tu0S3YS4Y9IKKJuHc4DZGFeflZJeOk0iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747210794; c=relaxed/simple;
	bh=dGqzXnG7IfwRVdUguBJanRuFnL4w1RCXZJLLEGIYtOU=;
	h=To:Subject:From:Message-Id:Date; b=cAMy509OXAvMmMjSW9ZXAbiXWCVTlok3VfbIT48qxnrgnMniRrWC2PJOoaXcOQGehV7JwcO0pSd7Pb3HpM+/6ppFJ/AqwaOD8830LJrB4dN8n91LR1cHylmnl1mqBWzVXw2DQI/TljhlVabCAww/U75Ddzt29AJhLR6LClRSryo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nljc/cvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nljc/cvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCE5C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747210793;
	bh=dGqzXnG7IfwRVdUguBJanRuFnL4w1RCXZJLLEGIYtOU=;
	h=To:Subject:From:Date:From;
	b=Nljc/cvGwkXzoIyy1qZc4+6vNmyr4JWKVDjhgZU7Qy2Tmn0G5qbB4ScH49G7zOjSM
	 A+SBjw9fMdRKbHwiigWWSLaCzaLTwpGXk3cgM1x36T9gA1maef7WOgx46rcrdtj5rl
	 kAqhbHBEdeD2S9wTTaz6fA4fpUbUSHbfZFB464gQxI/4L58QZKij4+NTl8t1oiuj6q
	 6WXJrQ9pIMdzbfn03+FDF6Ms/jMSE9YnMECc5ibns5T8ImSjrbRfVhN8OTePPf53ou
	 iIFor6D1LmRiyNMIri7pzAACTUOOigfD+/sCoaujmTbMbns05Co+bArG4qJO6eTx+S
	 eLqqVID1mT3/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD0AC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721079358.5309.3945095297085101303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea7857c19aaafa09c73f81d99c8589cf0867d2fcc92605454dc0197b759c078
Date: Wed, 14 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747210793
