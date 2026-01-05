Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FF427F754
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604434; cv=none; b=Dm7b0JAb7Wp5ifJBx3I/+S2RnXRw4MRFwcdbnRYkwpJijEgy/vRGkLnz3KpkEQwbsbwI7QoFqsT9/mb17/TawL0htrpo57wWyTgChsgzVnrX57tjEBLow2kYVgQWFrU9eV/wXFZRbADfWiy6UKRnpZ0rJvFF/y5+KH+zFcM1HKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604434; c=relaxed/simple;
	bh=Nn0i/mLCEcykGW28rdpPBJME4NfqNwoykf+qFUsZklw=;
	h=To:Subject:From:Message-Id:Date; b=UraX1W7JzZM1FVpbiR2Y+8A0hvb+yFeQqOCw5MumWVgJnWEIKKtYB6x0oS3uAfsi4JcKJW9MQYyTU83eHHy1jlk9ZkiC8yvPCWRUOGEIydTWbhJkt34/Xh2DvP/cpCVlVBc0HGc00uugCQKapUEzveb/z/fGpF2QqDx2WOUZmzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0mP/vOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0mP/vOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90EEC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767604433;
	bh=Nn0i/mLCEcykGW28rdpPBJME4NfqNwoykf+qFUsZklw=;
	h=To:Subject:From:Date:From;
	b=J0mP/vOhQ+s8tuLIN8jSX+BowE44s3jBP59uoeu2psUHi6b29ckqKuQqCCvRZuIwO
	 fG5aOVhO4eIxelDBa0xk9uwdCD2oNaKl2nNYomSwMdopsYxaigU9qB3YTTGR5yCw76
	 7972wVS4SJsp9ImjW5cM4Sx91PqBELtnKmCk+KwwnJukS2DH7lFolr3l5UgKteW9tE
	 Q2UqyqXjasYkXQJRaFPWsxzG+EHv9HIWNop8PDXdQPe/QZkYdvhuejHzjhRqES4J4S
	 0AtuCycLEUYntwu082rnb/riCSinb/VW+YMBnbv6YxiCtcptMt4lux1gVUE4AFx/6O
	 qmX35nV9IUghw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAA5C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760443362.32517.11476374279369067117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5165a64536c69dc77d8ca1e186ee37a509e642f21cf24b5bdc59f10c8315bb
Date: Mon, 05 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767604433
