Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41969345ED2
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792246834; cv=none; b=N9Xl9v1A3lJvOepwxIlcIKKqs3V3PHCT50jfqKVZM3y3csQkTVTonEonFPOko6kJsX6RDVMgCLzfD+BWbYeHxS1JOYuN83uY0rcaw+WNGoEAZsb3lnVCjlUSCb6MXkQQtok13SS4eVGB87Vogi2EmAcpqKjGLXLV0Wv0DKddsrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792246834; c=relaxed/simple;
	bh=G2Dq/w7AqQ+OMkyg6Dj3cVPrGZQ0uDMcADu3MkkqBD8=;
	h=To:Subject:From:Message-Id:Date; b=UldjjIRrWS5KJywUoCzz289Cutj98ZOC7cXPnayq8+kzEUzgNDx35PT71rD4JIo0mgqa1XcsY5Dvnb6Bu7+f1RqeIJwqLRZyIUsGkSlLVvFv1tInC7FskaxZLhYSaqRjdgJGj9oNDbaYWw27wGnlbovMSUPIHy4xJm6AGMuYiCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig+st3qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig+st3qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C482AC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792246833;
	bh=G2Dq/w7AqQ+OMkyg6Dj3cVPrGZQ0uDMcADu3MkkqBD8=;
	h=To:Subject:From:Date:From;
	b=Ig+st3qMPw3R1/B9JpV2BhZKAIEUpSXK0d57BCdZF+x/2tWG9EY79p6hLoiTHcwsz
	 iq6+daMzGk8QSPVQlqF0FUxb5RFUY2sa9pGX5A/ro/hChqdnRNen1FmPAtOTWoCL0s
	 zhgy5TpWEJ2kCR8BdspE15MfjJDEsWaOW/u/doP5n3lujEFrOQK3tB3PY2vf6gd0Pn
	 //UNRNoAITR/X95d3WbjsdVignNuRX+JMzW+P0lFmCXld0I3qpl7ZHJC5+GWXYGCsx
	 NJF/W97ujA+ngX0wsWpGkCv6OPBQCPj9VgL4n798k9pwshz1hvjtH/j9QMv5c8wzgU
	 cPIjz6sYMmDCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFFACCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224683369.6061.5010465002621626344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dbf1aee6c8aefbfa52b01627345b67b73b09aa00a3b156096d860203b87cba
Date: Sat, 17 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792246833
